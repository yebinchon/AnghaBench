; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_4__, %struct.xgbe_phy_data* }
%struct.TYPE_4__ = type { i64 }
%struct.xgbe_phy_data = type { i64, i64, %struct.TYPE_5__*, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@XGBE_PORT_MODE_SFP = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@MDIO_STAT1 = common dso_local global i32 0, align 4
@MDIO_STAT1_LSTATUS = common dso_local global i32 0, align 4
@XGBE_RRC_FREQUENCY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32*)* @xgbe_phy_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_link_status(%struct.xgbe_prv_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.xgbe_phy_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %10 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %9, i32 0, i32 1
  %11 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %10, align 8
  store %struct.xgbe_phy_data* %11, %struct.xgbe_phy_data** %6, align 8
  %12 = load i32*, i32** %5, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %14 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @XGBE_PORT_MODE_SFP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %2
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %20 = call i32 @xgbe_phy_sfp_detect(%struct.xgbe_prv_data* %19)
  %21 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %22 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32*, i32** %5, align 8
  store i32 1, i32* %26, align 4
  store i32 0, i32* %3, align 4
  br label %102

27:                                               ; preds = %18
  %28 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %29 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %34 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %27
  store i32 0, i32* %3, align 4
  br label %102

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %41 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %40, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = icmp ne %struct.TYPE_5__* %42, null
  br i1 %43, label %44, label %75

44:                                               ; preds = %39
  %45 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %46 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = call i32 @phy_read_status(%struct.TYPE_5__* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %102

52:                                               ; preds = %44
  %53 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %54 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AUTONEG_ENABLE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %52
  %60 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %61 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %60, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = call i32 @phy_aneg_done(%struct.TYPE_5__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %102

66:                                               ; preds = %59, %52
  %67 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %68 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %102

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %74, %39
  %76 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %77 = load i32, i32* @MDIO_MMD_PCS, align 4
  %78 = load i32, i32* @MDIO_STAT1, align 4
  %79 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %76, i32 %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %81 = load i32, i32* @MDIO_MMD_PCS, align 4
  %82 = load i32, i32* @MDIO_STAT1, align 4
  %83 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %80, i32 %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @MDIO_STAT1_LSTATUS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %75
  store i32 1, i32* %3, align 4
  br label %102

89:                                               ; preds = %75
  %90 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %91 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load i64, i64* @XGBE_RRC_FREQUENCY, align 8
  %95 = icmp sgt i64 %92, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %89
  %97 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %6, align 8
  %98 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %97, i32 0, i32 1
  store i64 0, i64* %98, align 8
  %99 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %100 = call i32 @xgbe_phy_rrc(%struct.xgbe_prv_data* %99)
  br label %101

101:                                              ; preds = %96, %89
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %88, %73, %65, %51, %37, %25
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @xgbe_phy_sfp_detect(%struct.xgbe_prv_data*) #1

declare dso_local i32 @phy_read_status(%struct.TYPE_5__*) #1

declare dso_local i32 @phy_aneg_done(%struct.TYPE_5__*) #1

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @xgbe_phy_rrc(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
