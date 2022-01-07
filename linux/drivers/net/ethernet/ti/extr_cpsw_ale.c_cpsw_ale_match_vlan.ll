; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_match_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_match_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_ale = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ALE_ENTRY_WORDS = common dso_local global i32 0, align 4
@ALE_TYPE_VLAN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_ale*, i64)* @cpsw_ale_match_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ale_match_vlan(%struct.cpsw_ale* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpsw_ale*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cpsw_ale* %0, %struct.cpsw_ale** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @ALE_ENTRY_WORDS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %38, %2
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.cpsw_ale*, %struct.cpsw_ale** %4, align 8
  %18 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %15
  %23 = load %struct.cpsw_ale*, %struct.cpsw_ale** %4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @cpsw_ale_read(%struct.cpsw_ale* %23, i32 %24, i32* %14)
  %26 = call i32 @cpsw_ale_get_entry_type(i32* %14)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @ALE_TYPE_VLAN, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %38

31:                                               ; preds = %22
  %32 = call i64 @cpsw_ale_get_vlan_id(i32* %14)
  %33 = load i64, i64* %5, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %44

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %15

41:                                               ; preds = %15
  %42 = load i32, i32* @ENOENT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cpsw_ale_read(%struct.cpsw_ale*, i32, i32*) #2

declare dso_local i32 @cpsw_ale_get_entry_type(i32*) #2

declare dso_local i64 @cpsw_ale_get_vlan_id(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
