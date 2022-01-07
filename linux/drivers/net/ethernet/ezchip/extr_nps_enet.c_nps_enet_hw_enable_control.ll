; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_hw_enable_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_hw_enable_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nps_enet_priv = type { i32, i32 }

@CFG_2_STAT_EN_MASK = common dso_local global i32 0, align 4
@NPS_ENET_GE_MAC_CFG_2_STAT_EN = common dso_local global i32 0, align 4
@CFG_2_STAT_EN_SHIFT = common dso_local global i32 0, align 4
@CFG_2_DISK_DA_MASK = common dso_local global i32 0, align 4
@NPS_ENET_ENABLE = common dso_local global i32 0, align 4
@CFG_2_DISK_DA_SHIFT = common dso_local global i32 0, align 4
@CFG_2_DISK_MC_MASK = common dso_local global i32 0, align 4
@CFG_2_DISK_MC_SHIFT = common dso_local global i32 0, align 4
@NPS_ENET_REG_GE_MAC_CFG_2 = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@NPS_ENET_MAX_FRAME_LENGTH = common dso_local global i32 0, align 4
@CFG_3_MAX_LEN_MASK = common dso_local global i32 0, align 4
@CFG_3_MAX_LEN_SHIFT = common dso_local global i32 0, align 4
@RX_RDY_SHIFT = common dso_local global i32 0, align 4
@TX_DONE_SHIFT = common dso_local global i32 0, align 4
@NPS_ENET_REG_BUF_INT_ENABLE = common dso_local global i32 0, align 4
@CFG_0_TX_PAD_EN_SHIFT = common dso_local global i32 0, align 4
@CFG_0_TX_CRC_EN_SHIFT = common dso_local global i32 0, align 4
@CFG_0_RX_CRC_STRIP_SHIFT = common dso_local global i32 0, align 4
@NPS_ENET_GE_MAC_CFG_0_RX_IFG = common dso_local global i32 0, align 4
@CFG_0_RX_IFG_SHIFT = common dso_local global i32 0, align 4
@NPS_ENET_GE_MAC_CFG_0_TX_IFG = common dso_local global i32 0, align 4
@CFG_0_TX_IFG_SHIFT = common dso_local global i32 0, align 4
@CFG_0_RX_PR_CHECK_EN_SHIFT = common dso_local global i32 0, align 4
@NPS_ENET_GE_MAC_CFG_0_TX_PR_LEN = common dso_local global i32 0, align 4
@CFG_0_TX_PR_LEN_SHIFT = common dso_local global i32 0, align 4
@CFG_0_TX_FC_EN_SHIFT = common dso_local global i32 0, align 4
@CFG_0_RX_FC_EN_SHIFT = common dso_local global i32 0, align 4
@NPS_ENET_GE_MAC_CFG_0_TX_FC_RETR = common dso_local global i32 0, align 4
@CFG_0_TX_FC_RETR_SHIFT = common dso_local global i32 0, align 4
@CFG_3_CF_DROP_MASK = common dso_local global i32 0, align 4
@CFG_3_CF_DROP_SHIFT = common dso_local global i32 0, align 4
@CFG_0_RX_EN_SHIFT = common dso_local global i32 0, align 4
@CFG_0_TX_EN_SHIFT = common dso_local global i32 0, align 4
@NPS_ENET_REG_GE_MAC_CFG_3 = common dso_local global i32 0, align 4
@NPS_ENET_REG_GE_MAC_CFG_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @nps_enet_hw_enable_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nps_enet_hw_enable_control(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.nps_enet_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.nps_enet_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.nps_enet_priv* %10, %struct.nps_enet_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %12 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %11, i32 0, i32 0
  store i32* %12, i32** %6, align 8
  %13 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %14 = getelementptr inbounds %struct.nps_enet_priv, %struct.nps_enet_priv* %13, i32 0, i32 1
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CFG_2_STAT_EN_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i32, i32* @NPS_ENET_GE_MAC_CFG_2_STAT_EN, align 4
  %21 = load i32, i32* @CFG_2_STAT_EN_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = or i32 %19, %22
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CFG_2_DISK_DA_MASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %31 = load i32, i32* @CFG_2_DISK_DA_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %29, %32
  %34 = load i32*, i32** %6, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CFG_2_DISK_MC_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %41 = load i32, i32* @CFG_2_DISK_MC_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  %44 = load i32*, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %46 = load i32, i32* @NPS_ENET_REG_GE_MAC_CFG_2, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %45, i32 %46, i32 %48)
  %50 = load i32, i32* @ETH_HLEN, align 4
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %50, %53
  %55 = load i32, i32* @ETH_FCS_LEN, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @NPS_ENET_MAX_FRAME_LENGTH, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %1
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @CFG_3_MAX_LEN_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = and i32 %62, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @CFG_3_MAX_LEN_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = or i32 %65, %68
  %70 = load i32*, i32** %7, align 8
  store i32 %69, i32* %70, align 4
  br label %71

71:                                               ; preds = %60, %1
  %72 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %73 = load i32, i32* @RX_RDY_SHIFT, align 4
  %74 = shl i32 %72, %73
  %75 = load i32, i32* %5, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %78 = load i32, i32* @TX_DONE_SHIFT, align 4
  %79 = shl i32 %77, %78
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %83 = load i32, i32* @NPS_ENET_REG_BUF_INT_ENABLE, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %82, i32 %83, i32 %84)
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = call i32 @nps_enet_set_hw_mac_address(%struct.net_device* %86)
  %88 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %89 = load i32, i32* @CFG_0_TX_PAD_EN_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = load i32, i32* %4, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %94 = load i32, i32* @CFG_0_TX_CRC_EN_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = load i32, i32* %4, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %4, align 4
  %98 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %99 = load i32, i32* @CFG_0_RX_CRC_STRIP_SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = load i32, i32* %4, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* @NPS_ENET_GE_MAC_CFG_0_RX_IFG, align 4
  %104 = load i32, i32* @CFG_0_RX_IFG_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* %4, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* @NPS_ENET_GE_MAC_CFG_0_TX_IFG, align 4
  %109 = load i32, i32* @CFG_0_TX_IFG_SHIFT, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* %4, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %114 = load i32, i32* @CFG_0_RX_PR_CHECK_EN_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = load i32, i32* %4, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* @NPS_ENET_GE_MAC_CFG_0_TX_PR_LEN, align 4
  %119 = load i32, i32* @CFG_0_TX_PR_LEN_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = load i32, i32* %4, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %4, align 4
  %123 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %124 = load i32, i32* @CFG_0_TX_FC_EN_SHIFT, align 4
  %125 = shl i32 %123, %124
  %126 = load i32, i32* %4, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %129 = load i32, i32* @CFG_0_RX_FC_EN_SHIFT, align 4
  %130 = shl i32 %128, %129
  %131 = load i32, i32* %4, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* @NPS_ENET_GE_MAC_CFG_0_TX_FC_RETR, align 4
  %134 = load i32, i32* @CFG_0_TX_FC_RETR_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = load i32, i32* %4, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %4, align 4
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @CFG_3_CF_DROP_MASK, align 4
  %141 = xor i32 %140, -1
  %142 = and i32 %139, %141
  %143 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %144 = load i32, i32* @CFG_3_CF_DROP_SHIFT, align 4
  %145 = shl i32 %143, %144
  %146 = or i32 %142, %145
  %147 = load i32*, i32** %7, align 8
  store i32 %146, i32* %147, align 4
  %148 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %149 = load i32, i32* @CFG_0_RX_EN_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = load i32, i32* %4, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %154 = load i32, i32* @CFG_0_TX_EN_SHIFT, align 4
  %155 = shl i32 %153, %154
  %156 = load i32, i32* %4, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %4, align 4
  %158 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %159 = load i32, i32* @NPS_ENET_REG_GE_MAC_CFG_3, align 4
  %160 = load i32*, i32** %7, align 8
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %158, i32 %159, i32 %161)
  %163 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %3, align 8
  %164 = load i32, i32* @NPS_ENET_REG_GE_MAC_CFG_0, align 4
  %165 = load i32, i32* %4, align 4
  %166 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %163, i32 %164, i32 %165)
  ret void
}

declare dso_local %struct.nps_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nps_enet_reg_set(%struct.nps_enet_priv*, i32, i32) #1

declare dso_local i32 @nps_enet_set_hw_mac_address(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
