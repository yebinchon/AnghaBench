; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_match_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_match_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_ale = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ALE_ENTRY_WORDS = common dso_local global i32 0, align 4
@ALE_TYPE_ADDR = common dso_local global i32 0, align 4
@ALE_TYPE_VLAN_ADDR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_ale*, i32*, i64)* @cpsw_ale_match_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_ale_match_addr(%struct.cpsw_ale* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpsw_ale*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [6 x i32], align 16
  %13 = alloca i32, align 4
  store %struct.cpsw_ale* %0, %struct.cpsw_ale** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i32, i32* @ALE_ENTRY_WORDS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %53, %3
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.cpsw_ale*, %struct.cpsw_ale** %5, align 8
  %21 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp slt i32 %19, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %18
  %26 = load %struct.cpsw_ale*, %struct.cpsw_ale** %5, align 8
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @cpsw_ale_read(%struct.cpsw_ale* %26, i32 %27, i32* %17)
  %29 = call i32 @cpsw_ale_get_entry_type(i32* %17)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @ALE_TYPE_ADDR, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @ALE_TYPE_VLAN_ADDR, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %53

38:                                               ; preds = %33, %25
  %39 = call i64 @cpsw_ale_get_vlan_id(i32* %17)
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %53

43:                                               ; preds = %38
  %44 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %45 = call i32 @cpsw_ale_get_addr(i32* %17, i32* %44)
  %46 = getelementptr inbounds [6 x i32], [6 x i32]* %12, i64 0, i64 0
  %47 = load i32*, i32** %6, align 8
  %48 = call i64 @ether_addr_equal(i32* %46, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %59

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %42, %37
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %18

56:                                               ; preds = %18
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %59

59:                                               ; preds = %56, %50
  %60 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %60)
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cpsw_ale_read(%struct.cpsw_ale*, i32, i32*) #2

declare dso_local i32 @cpsw_ale_get_entry_type(i32*) #2

declare dso_local i64 @cpsw_ale_get_vlan_id(i32*) #2

declare dso_local i32 @cpsw_ale_get_addr(i32*, i32*) #2

declare dso_local i64 @ether_addr_equal(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
