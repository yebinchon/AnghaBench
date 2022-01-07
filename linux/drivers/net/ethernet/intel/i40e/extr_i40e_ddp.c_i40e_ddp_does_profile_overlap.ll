; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ddp.c_i40e_ddp_does_profile_overlap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ddp.c_i40e_ddp_does_profile_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_profile_info = type { i32 }
%struct.i40e_ddp_profile_list = type { i32, i32* }

@I40E_PROFILE_LIST_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*, %struct.i40e_profile_info*)* @i40e_ddp_does_profile_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_ddp_does_profile_overlap(%struct.i40e_hw* %0, %struct.i40e_profile_info* %1) #0 {
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
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %48

24:                                               ; preds = %2
  %25 = bitcast i32* %15 to %struct.i40e_ddp_profile_list*
  store %struct.i40e_ddp_profile_list* %25, %struct.i40e_ddp_profile_list** %6, align 8
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %44, %24
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.i40e_ddp_profile_list*, %struct.i40e_ddp_profile_list** %6, align 8
  %29 = getelementptr inbounds %struct.i40e_ddp_profile_list, %struct.i40e_ddp_profile_list* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.i40e_profile_info*, %struct.i40e_profile_info** %5, align 8
  %34 = load %struct.i40e_ddp_profile_list*, %struct.i40e_ddp_profile_list** %6, align 8
  %35 = getelementptr inbounds %struct.i40e_ddp_profile_list, %struct.i40e_ddp_profile_list* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i64 @i40e_ddp_profiles_overlap(%struct.i40e_profile_info* %33, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %48

43:                                               ; preds = %32
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %26

47:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %48

48:                                               ; preds = %47, %42, %21
  %49 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %49)
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @i40e_aq_get_ddp_list(%struct.i40e_hw*, i32*, i32, i32, i32*) #2

declare dso_local i64 @i40e_ddp_profiles_overlap(%struct.i40e_profile_info*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
