; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an73_tx_training.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an73_tx_training.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.1*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque

@XGBE_RX_COMPLETE = common dso_local global i32 0, align 4
@XGBE_AN_PAGE_RECEIVED = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_ADVERTISE = common dso_local global i64 0, align 8
@MDIO_AN_LPA = common dso_local global i64 0, align 8
@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_PMA_10GBR_FECCTRL = common dso_local global i64 0, align 8
@MDIO_PMA_10GBR_FECABLE_ABLE = common dso_local global i32 0, align 4
@MDIO_PMA_10GBR_FECABLE_ERRABLE = common dso_local global i32 0, align 4
@MDIO_PMA_10GBR_PMD_CTRL = common dso_local global i64 0, align 8
@XGBE_KR_TRAINING_ENABLE = common dso_local global i32 0, align 4
@XGBE_KR_TRAINING_START = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"KR training initiated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32*)* @xgbe_an73_tx_training to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_an73_tx_training(%struct.xgbe_prv_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @XGBE_RX_COMPLETE, align 4
  %10 = load i32*, i32** %5, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %12 = call i32 @xgbe_in_kr_mode(%struct.xgbe_prv_data* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @XGBE_AN_PAGE_RECEIVED, align 4
  store i32 %15, i32* %3, align 4
  br label %110

16:                                               ; preds = %2
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %18 = load i32, i32* @MDIO_MMD_AN, align 4
  %19 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %20 = add nsw i64 %19, 2
  %21 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %17, i32 %18, i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %23 = load i32, i32* @MDIO_MMD_AN, align 4
  %24 = load i64, i64* @MDIO_AN_LPA, align 8
  %25 = add nsw i64 %24, 2
  %26 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %22, i32 %23, i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %28 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %29 = load i64, i64* @MDIO_PMA_10GBR_FECCTRL, align 8
  %30 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %27, i32 %28, i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* @MDIO_PMA_10GBR_FECABLE_ABLE, align 4
  %32 = load i32, i32* @MDIO_PMA_10GBR_FECABLE_ERRABLE, align 4
  %33 = or i32 %31, %32
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, 49152
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %16
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 49152
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %40
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %46 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %44, %40, %16
  %51 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %52 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %53 = load i64, i64* @MDIO_PMA_10GBR_FECCTRL, align 8
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %51, i32 %52, i64 %53, i32 %54)
  %56 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %57 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %59, align 8
  %61 = icmp ne i32 (%struct.xgbe_prv_data.1*)* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %50
  %63 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %64 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %66, align 8
  %68 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %69 = bitcast %struct.xgbe_prv_data* %68 to %struct.xgbe_prv_data.1*
  %70 = call i32 %67(%struct.xgbe_prv_data.1* %69)
  br label %71

71:                                               ; preds = %62, %50
  %72 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %73 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %74 = load i64, i64* @MDIO_PMA_10GBR_PMD_CTRL, align 8
  %75 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %72, i32 %73, i64 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* @XGBE_KR_TRAINING_ENABLE, align 4
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* @XGBE_KR_TRAINING_START, align 4
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  %82 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %83 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %84 = load i64, i64* @MDIO_PMA_10GBR_PMD_CTRL, align 8
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @XMDIO_WRITE(%struct.xgbe_prv_data* %82, i32 %83, i64 %84, i32 %85)
  %87 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %88 = load i32, i32* @link, align 4
  %89 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %90 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @netif_dbg(%struct.xgbe_prv_data* %87, i32 %88, i32 %91, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %93 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %94 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %96, align 8
  %98 = icmp ne i32 (%struct.xgbe_prv_data.0*)* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %71
  %100 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %101 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %103, align 8
  %105 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %106 = bitcast %struct.xgbe_prv_data* %105 to %struct.xgbe_prv_data.0*
  %107 = call i32 %104(%struct.xgbe_prv_data.0* %106)
  br label %108

108:                                              ; preds = %99, %71
  %109 = load i32, i32* @XGBE_AN_PAGE_RECEIVED, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %108, %14
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @xgbe_in_kr_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i64) #1

declare dso_local i32 @XMDIO_WRITE(%struct.xgbe_prv_data*, i32, i64, i32) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
