; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_enet_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_enet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32, i32, i32, %struct.net_device*, i32, i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid MAC addr: %pM\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Using random MAC: %pM\0A\00", align 1
@BGMAC_FEAT_IDM_MASK = common dso_local global i32 0, align 4
@BGMAC_FEAT_IRQ_ID_OOB_6 = common dso_local global i32 0, align 4
@BCMA_OOB_SEL_OUT_A30 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Unable to alloc memory for DMA\0A\00", align 1
@BGMAC_IS_ERRMASK = common dso_local global i32 0, align 4
@BGMAC_IS_RX = common dso_local global i32 0, align 4
@BGMAC_IS_TX_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"et0_no_txint\00", align 1
@bgmac_poll = common dso_local global i32 0, align 4
@BGMAC_WEIGHT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Cannot connect to phy\0A\00", align 1
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Cannot register net device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bgmac_enet_probe(%struct.bgmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bgmac*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  %6 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %7 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %6, i32 0, i32 3
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %4, align 8
  %9 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %10 = call i32 @bgmac_chip_intrs_off(%struct.bgmac* %9)
  %11 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %12 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %18 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @SET_NETDEV_DEV(%struct.net_device* %16, i32 %19)
  %21 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %22 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %25 = call i32 @dev_set_drvdata(i32 %23, %struct.bgmac* %24)
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @is_valid_ether_addr(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %48, label %31

31:                                               ; preds = %1
  %32 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %33 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = call i32 @eth_hw_addr_random(%struct.net_device* %39)
  %41 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %42 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %4, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_warn(i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %31, %1
  %49 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %50 = call i32 @bgmac_clk_enable(%struct.bgmac* %49, i32 0)
  %51 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %52 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @BGMAC_FEAT_IDM_MASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %48
  %58 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %59 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @BGMAC_FEAT_IRQ_ID_OOB_6, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %66 = load i32, i32* @BCMA_OOB_SEL_OUT_A30, align 4
  %67 = call i32 @bgmac_idm_write(%struct.bgmac* %65, i32 %66, i32 134)
  br label %68

68:                                               ; preds = %64, %57
  br label %69

69:                                               ; preds = %68, %48
  %70 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %71 = call i32 @bgmac_chip_reset(%struct.bgmac* %70)
  %72 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %73 = call i32 @bgmac_dma_alloc(%struct.bgmac* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %78 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %154

81:                                               ; preds = %69
  %82 = load i32, i32* @BGMAC_IS_ERRMASK, align 4
  %83 = load i32, i32* @BGMAC_IS_RX, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @BGMAC_IS_TX_MASK, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %88 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = call i64 @bcm47xx_nvram_getenv(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 0)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %81
  %92 = load i32, i32* @BGMAC_IS_TX_MASK, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %95 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %91, %81
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %101 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %100, i32 0, i32 4
  %102 = load i32, i32* @bgmac_poll, align 4
  %103 = load i32, i32* @BGMAC_WEIGHT, align 4
  %104 = call i32 @netif_napi_add(%struct.net_device* %99, i32* %101, i32 %102, i32 %103)
  %105 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %106 = call i32 @bgmac_phy_connect(%struct.bgmac* %105)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %98
  %110 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %111 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i32, i8*, ...) @dev_err(i32 %112, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %151

114:                                              ; preds = %98
  %115 = load i32, i32* @NETIF_F_SG, align 4
  %116 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %119 = or i32 %117, %118
  %120 = load %struct.net_device*, %struct.net_device** %4, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.net_device*, %struct.net_device** %4, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = getelementptr inbounds %struct.net_device, %struct.net_device* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.net_device*, %struct.net_device** %4, align 8
  %131 = getelementptr inbounds %struct.net_device, %struct.net_device* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %133 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %132, i32 0, i32 3
  %134 = load %struct.net_device*, %struct.net_device** %133, align 8
  %135 = call i32 @register_netdev(%struct.net_device* %134)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %114
  %139 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %140 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 (i32, i8*, ...) @dev_err(i32 %141, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %146

143:                                              ; preds = %114
  %144 = load %struct.net_device*, %struct.net_device** %4, align 8
  %145 = call i32 @netif_carrier_off(%struct.net_device* %144)
  store i32 0, i32* %2, align 4
  br label %156

146:                                              ; preds = %138
  %147 = load %struct.net_device*, %struct.net_device** %4, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @phy_disconnect(i32 %149)
  br label %151

151:                                              ; preds = %146, %109
  %152 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %153 = call i32 @bgmac_dma_free(%struct.bgmac* %152)
  br label %154

154:                                              ; preds = %151, %76
  %155 = load i32, i32* %5, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %154, %143
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local i32 @bgmac_chip_intrs_off(%struct.bgmac*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32, %struct.bgmac*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @bgmac_clk_enable(%struct.bgmac*, i32) #1

declare dso_local i32 @bgmac_idm_write(%struct.bgmac*, i32, i32) #1

declare dso_local i32 @bgmac_chip_reset(%struct.bgmac*) #1

declare dso_local i32 @bgmac_dma_alloc(%struct.bgmac*) #1

declare dso_local i64 @bcm47xx_nvram_getenv(i8*, i32*, i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i32 @bgmac_phy_connect(%struct.bgmac*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @phy_disconnect(i32) #1

declare dso_local i32 @bgmac_dma_free(%struct.bgmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
