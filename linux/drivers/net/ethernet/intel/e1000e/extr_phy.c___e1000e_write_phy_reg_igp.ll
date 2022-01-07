; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c___e1000e_write_phy_reg_igp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c___e1000e_write_phy_reg_igp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@MAX_PHY_MULTI_PAGE_REG = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32, i32)* @__e1000e_write_phy_reg_igp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__e1000e_write_phy_reg_igp(%struct.e1000_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %4
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %17, align 8
  %19 = icmp ne i64 (%struct.e1000_hw.1*)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i64 0, i64* %5, align 8
  br label %68

21:                                               ; preds = %13
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %25, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %28 = bitcast %struct.e1000_hw* %27 to %struct.e1000_hw.1*
  %29 = call i64 %26(%struct.e1000_hw.1* %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %10, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %5, align 8
  br label %68

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %34, %4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MAX_PHY_MULTI_PAGE_REG, align 4
  %38 = icmp sgt i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %41 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw* %40, i32 %41, i32 %42)
  store i64 %43, i64* %10, align 8
  br label %44

44:                                               ; preds = %39, %35
  %45 = load i64, i64* %10, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %49 = load i32, i32* @MAX_PHY_REG_ADDRESS, align 4
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = call i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw* %48, i32 %51, i32 %52)
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %47, %44
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %54
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %59 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %61, align 8
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %64 = bitcast %struct.e1000_hw* %63 to %struct.e1000_hw.0*
  %65 = call i32 %62(%struct.e1000_hw.0* %64)
  br label %66

66:                                               ; preds = %57, %54
  %67 = load i64, i64* %10, align 8
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %66, %32, %20
  %69 = load i64, i64* %5, align 8
  ret i64 %69
}

declare dso_local i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
