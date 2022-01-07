; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-sgmii-fsm9900.c_emac_sgmii_init_fsm9900.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-sgmii-fsm9900.c_emac_sgmii_init_fsm9900.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { i32, %struct.emac_sgmii }
%struct.emac_sgmii = type { i64 }

@physical_coding_sublayer_programming = common dso_local global i32 0, align 4
@sysclk_refclk_setting = common dso_local global i32 0, align 4
@pll_setting = common dso_local global i32 0, align 4
@cdr_setting = common dso_local global i32 0, align 4
@tx_rx_setting = common dso_local global i32 0, align 4
@SERDES_START = common dso_local global i32 0, align 4
@EMAC_SGMII_PHY_SERDES_START = common dso_local global i64 0, align 8
@SERDES_START_WAIT_TIMES = common dso_local global i32 0, align 4
@EMAC_QSERDES_COM_RESET_SM = common dso_local global i64 0, align 8
@READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"error: ser/des failed to start\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EMAC_SGMII_PHY_INTERRUPT_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @emac_sgmii_init_fsm9900(%struct.emac_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.emac_adapter*, align 8
  %4 = alloca %struct.emac_sgmii*, align 8
  %5 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %3, align 8
  %6 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %6, i32 0, i32 1
  store %struct.emac_sgmii* %7, %struct.emac_sgmii** %4, align 8
  %8 = load %struct.emac_sgmii*, %struct.emac_sgmii** %4, align 8
  %9 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @physical_coding_sublayer_programming, align 4
  %12 = load i32, i32* @physical_coding_sublayer_programming, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = call i32 @emac_reg_write_all(i64 %10, i32 %11, i32 %13)
  %15 = load %struct.emac_sgmii*, %struct.emac_sgmii** %4, align 8
  %16 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* @sysclk_refclk_setting, align 4
  %19 = load i32, i32* @sysclk_refclk_setting, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i32 @emac_reg_write_all(i64 %17, i32 %18, i32 %20)
  %22 = load %struct.emac_sgmii*, %struct.emac_sgmii** %4, align 8
  %23 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @pll_setting, align 4
  %26 = load i32, i32* @pll_setting, align 4
  %27 = call i32 @ARRAY_SIZE(i32 %26)
  %28 = call i32 @emac_reg_write_all(i64 %24, i32 %25, i32 %27)
  %29 = load %struct.emac_sgmii*, %struct.emac_sgmii** %4, align 8
  %30 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @cdr_setting, align 4
  %33 = load i32, i32* @cdr_setting, align 4
  %34 = call i32 @ARRAY_SIZE(i32 %33)
  %35 = call i32 @emac_reg_write_all(i64 %31, i32 %32, i32 %34)
  %36 = load %struct.emac_sgmii*, %struct.emac_sgmii** %4, align 8
  %37 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @tx_rx_setting, align 4
  %40 = load i32, i32* @tx_rx_setting, align 4
  %41 = call i32 @ARRAY_SIZE(i32 %40)
  %42 = call i32 @emac_reg_write_all(i64 %38, i32 %39, i32 %41)
  %43 = load i32, i32* @SERDES_START, align 4
  %44 = load %struct.emac_sgmii*, %struct.emac_sgmii** %4, align 8
  %45 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @EMAC_SGMII_PHY_SERDES_START, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %67, %1
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @SERDES_START_WAIT_TIMES, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load %struct.emac_sgmii*, %struct.emac_sgmii** %4, align 8
  %56 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EMAC_QSERDES_COM_RESET_SM, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl(i64 %59)
  %61 = load i32, i32* @READY, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %70

65:                                               ; preds = %54
  %66 = call i32 @usleep_range(i32 100, i32 200)
  br label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %50

70:                                               ; preds = %64, %50
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @SERDES_START_WAIT_TIMES, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %81

74:                                               ; preds = %70
  %75 = load %struct.emac_adapter*, %struct.emac_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @netdev_err(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %88

81:                                               ; preds = %70
  %82 = load %struct.emac_sgmii*, %struct.emac_sgmii** %4, align 8
  %83 = getelementptr inbounds %struct.emac_sgmii, %struct.emac_sgmii* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @EMAC_SGMII_PHY_INTERRUPT_MASK, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 0, i64 %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %81, %74
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @emac_reg_write_all(i64, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
