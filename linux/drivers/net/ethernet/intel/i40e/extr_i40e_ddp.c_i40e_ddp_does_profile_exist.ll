; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ddp.c_i40e_ddp_does_profile_exist.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ddp.c_i40e_ddp_does_profile_exist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_profile_info = type { i32 }
%struct.i40e_ddp_profile_list = type { i32, i32* }

@I40E_PROFILE_LIST_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, %struct.i40e_profile_info*)* @i40e_ddp_does_profile_exist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_ddp_does_profile_exist(%struct.i40e_hw* %0, %struct.i40e_profile_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca %struct.i40e_profile_info*, align 8
  %6 = alloca %struct.i40e_ddp_profile_list*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %4, align 8
  store %struct.i40e_profile_info* %1, %struct.i40e_profile_info** %5, align 8
  %12 = load i32, i32* @I40E_PROFILE_LIST_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %17 = load i32, i32* @I40E_PROFILE_LIST_SIZE, align 4
  %18 = call i64 @i40e_aq_get_ddp_list(%struct.i40e_hw* %16, i32* %15, i32 %17, i32 0, i32* null)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %46

22:                                               ; preds = %2
  %23 = bitcast i32* %15 to %struct.i40e_ddp_profile_list*
  store %struct.i40e_ddp_profile_list* %23, %struct.i40e_ddp_profile_list** %6, align 8
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %42, %22
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.i40e_ddp_profile_list*, %struct.i40e_ddp_profile_list** %6, align 8
  %27 = getelementptr inbounds %struct.i40e_ddp_profile_list, %struct.i40e_ddp_profile_list* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = load %struct.i40e_profile_info*, %struct.i40e_profile_info** %5, align 8
  %32 = load %struct.i40e_ddp_profile_list*, %struct.i40e_ddp_profile_list** %6, align 8
  %33 = getelementptr inbounds %struct.i40e_ddp_profile_list, %struct.i40e_ddp_profile_list* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i64 @i40e_ddp_profiles_eq(%struct.i40e_profile_info* %31, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %46

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %24

45:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %46

46:                                               ; preds = %45, %40, %21
  %47 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @i40e_aq_get_ddp_list(%struct.i40e_hw*, i32*, i32, i32, i32*) #2

declare dso_local i64 @i40e_ddp_profiles_eq(%struct.i40e_profile_info*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
