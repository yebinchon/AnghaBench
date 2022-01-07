; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_serdes_init_niu_10g_fiber.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_serdes_init_niu_10g_fiber.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.niu_link_config }
%struct.niu_link_config = type { i64 }

@PLL_TX_CFG_ENTX = common dso_local global i32 0, align 4
@PLL_TX_CFG_SWING_1375MV = common dso_local global i32 0, align 4
@PLL_RX_CFG_ENRX = common dso_local global i32 0, align 4
@PLL_RX_CFG_TERM_0P8VDDT = common dso_local global i32 0, align 4
@PLL_RX_CFG_ALIGN_ENA = common dso_local global i32 0, align 4
@PLL_RX_CFG_LOS_LTHRESH = common dso_local global i32 0, align 4
@PLL_RX_CFG_EQ_LP_ADAPTIVE = common dso_local global i32 0, align 4
@LOOPBACK_PHY = common dso_local global i64 0, align 8
@PLL_TEST_CFG_LOOPBACK_CML_DIS = common dso_local global i32 0, align 4
@NIU_ESR2_DEV_ADDR = common dso_local global i32 0, align 4
@ESR2_TI_PLL_TEST_CFG_L = common dso_local global i32 0, align 4
@PLL_TX_CFG_ENTEST = common dso_local global i32 0, align 4
@PLL_RX_CFG_ENTEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @serdes_init_niu_10g_fiber to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serdes_init_niu_10g_fiber(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.niu_link_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %11 = load %struct.niu*, %struct.niu** %3, align 8
  %12 = getelementptr inbounds %struct.niu, %struct.niu* %11, i32 0, i32 1
  store %struct.niu_link_config* %12, %struct.niu_link_config** %4, align 8
  %13 = load i32, i32* @PLL_TX_CFG_ENTX, align 4
  %14 = load i32, i32* @PLL_TX_CFG_SWING_1375MV, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @PLL_RX_CFG_ENRX, align 4
  %17 = load i32, i32* @PLL_RX_CFG_TERM_0P8VDDT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @PLL_RX_CFG_ALIGN_ENA, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PLL_RX_CFG_LOS_LTHRESH, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PLL_RX_CFG_EQ_LP_ADAPTIVE, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %26 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @LOOPBACK_PHY, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %1
  %31 = load i32, i32* @PLL_TEST_CFG_LOOPBACK_CML_DIS, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.niu*, %struct.niu** %3, align 8
  %33 = load %struct.niu*, %struct.niu** %3, align 8
  %34 = getelementptr inbounds %struct.niu, %struct.niu* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @NIU_ESR2_DEV_ADDR, align 4
  %37 = load i32, i32* @ESR2_TI_PLL_TEST_CFG_L, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @mdio_write(%struct.niu* %32, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @PLL_TX_CFG_ENTEST, align 4
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* @PLL_RX_CFG_ENTEST, align 4
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %30, %1
  store i64 0, i64* %7, align 8
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i64, i64* %7, align 8
  %49 = icmp ult i64 %48, 4
  br i1 %49, label %50, label %63

50:                                               ; preds = %47
  %51 = load %struct.niu*, %struct.niu** %3, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @esr2_set_tx_cfg(%struct.niu* %51, i64 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %2, align 4
  br label %81

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %7, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %7, align 8
  br label %47

63:                                               ; preds = %47
  store i64 0, i64* %7, align 8
  br label %64

64:                                               ; preds = %77, %63
  %65 = load i64, i64* %7, align 8
  %66 = icmp ult i64 %65, 4
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load %struct.niu*, %struct.niu** %3, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @esr2_set_rx_cfg(%struct.niu* %68, i64 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %67
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %2, align 4
  br label %81

76:                                               ; preds = %67
  br label %77

77:                                               ; preds = %76
  %78 = load i64, i64* %7, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %7, align 8
  br label %64

80:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %74, %57
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @mdio_write(%struct.niu*, i32, i32, i32, i32) #1

declare dso_local i32 @esr2_set_tx_cfg(%struct.niu*, i64, i32) #1

declare dso_local i32 @esr2_set_rx_cfg(%struct.niu*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
