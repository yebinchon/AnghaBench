; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000e_read_phy_reg_bm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000e_read_phy_reg_bm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@IGP_PAGE_SHIFT = common dso_local global i64 0, align 8
@BM_WUC_PAGE = common dso_local global i64 0, align 8
@MAX_PHY_MULTI_PAGE_REG = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PAGE_SELECT = common dso_local global i64 0, align 8
@BM_PHY_PAGE_SELECT = common dso_local global i64 0, align 8
@MAX_PHY_REG_ADDRESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000e_read_phy_reg_bm(%struct.e1000_hw* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @IGP_PAGE_SHIFT, align 8
  %14 = ashr i64 %12, %13
  store i64 %14, i64* %9, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %18, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %21 = bitcast %struct.e1000_hw* %20 to %struct.e1000_hw.1*
  %22 = call i64 %19(%struct.e1000_hw.1* %21)
  store i64 %22, i64* %8, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i64, i64* %8, align 8
  store i64 %26, i64* %4, align 8
  br label %85

27:                                               ; preds = %3
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @BM_WUC_PAGE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw* %32, i64 %33, i32* %34, i32 1, i32 0)
  store i64 %35, i64* %8, align 8
  br label %75

36:                                               ; preds = %27
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @e1000_get_phy_addr_for_bm_page(i64 %37, i64 %38)
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %41 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @MAX_PHY_MULTI_PAGE_REG, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %36
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i64, i64* @IGP_PAGE_SHIFT, align 8
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* @IGP01E1000_PHY_PAGE_SELECT, align 8
  store i64 %54, i64* %11, align 8
  br label %57

55:                                               ; preds = %46
  store i64 0, i64* %10, align 8
  %56 = load i64, i64* @BM_PHY_PAGE_SELECT, align 8
  store i64 %56, i64* %11, align 8
  br label %57

57:                                               ; preds = %55, %52
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = shl i64 %60, %61
  %63 = call i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw* %58, i64 %59, i64 %62)
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  br label %75

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %36
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %70 = load i64, i64* @MAX_PHY_REG_ADDRESS, align 8
  %71 = load i64, i64* %6, align 8
  %72 = and i64 %70, %71
  %73 = load i32*, i32** %7, align 8
  %74 = call i64 @e1000e_read_phy_reg_mdic(%struct.e1000_hw* %69, i64 %72, i32* %73)
  store i64 %74, i64* %8, align 8
  br label %75

75:                                               ; preds = %68, %66, %31
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %77 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %79, align 8
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %82 = bitcast %struct.e1000_hw* %81 to %struct.e1000_hw.0*
  %83 = call i32 %80(%struct.e1000_hw.0* %82)
  %84 = load i64, i64* %8, align 8
  store i64 %84, i64* %4, align 8
  br label %85

85:                                               ; preds = %75, %25
  %86 = load i64, i64* %4, align 8
  ret i64 %86
}

declare dso_local i64 @e1000_access_phy_wakeup_reg_bm(%struct.e1000_hw*, i64, i32*, i32, i32) #1

declare dso_local i32 @e1000_get_phy_addr_for_bm_page(i64, i64) #1

declare dso_local i64 @e1000e_write_phy_reg_mdic(%struct.e1000_hw*, i64, i64) #1

declare dso_local i64 @e1000e_read_phy_reg_mdic(%struct.e1000_hw*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
