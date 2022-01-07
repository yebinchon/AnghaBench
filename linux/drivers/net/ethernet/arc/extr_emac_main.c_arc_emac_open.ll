; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/arc/extr_emac_main.c_arc_emac_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device*, i32 }
%struct.phy_device = type { i32, i32, i64, i64, i32 }
%struct.arc_emac_priv = type { i32, i32, i64, i64, i32, i64, i64, %struct.buffer_state*, %struct.arc_emac_bd* }
%struct.buffer_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.arc_emac_bd = type { i8*, i8* }

@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@RX_BD_NUM = common dso_local global i32 0, align 4
@EMAC_BUFFER_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"cannot dma map\0A\00", align 1
@len = common dso_local global i32 0, align 4
@FOR_EMAC = common dso_local global i32 0, align 4
@TX_RING_SZ = common dso_local global i32 0, align 4
@R_LAFL = common dso_local global i32 0, align 4
@R_LAFH = common dso_local global i32 0, align 4
@R_RX_RING = common dso_local global i32 0, align 4
@R_TX_RING = common dso_local global i32 0, align 4
@R_ENABLE = common dso_local global i32 0, align 4
@RXINT_MASK = common dso_local global i32 0, align 4
@TXINT_MASK = common dso_local global i32 0, align 4
@ERR_MASK = common dso_local global i32 0, align 4
@R_CTRL = common dso_local global i32 0, align 4
@TX_BD_NUM = common dso_local global i32 0, align 4
@TXRN_MASK = common dso_local global i32 0, align 4
@RXRN_MASK = common dso_local global i32 0, align 4
@EN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @arc_emac_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_emac_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.arc_emac_priv*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.arc_emac_bd*, align 8
  %10 = alloca %struct.buffer_state*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.arc_emac_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.arc_emac_priv* %12, %struct.arc_emac_priv** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.phy_device*, %struct.phy_device** %14, align 8
  store %struct.phy_device* %15, %struct.phy_device** %5, align 8
  %16 = load i32, i32* @AUTONEG_ENABLE, align 4
  %17 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %18 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %20 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %27 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @linkmode_and(i32 %25, i32 %28, i32 %31)
  %33 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %34 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %124, %1
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @RX_BD_NUM, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %127

39:                                               ; preds = %35
  %40 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %41 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %40, i32 0, i32 0
  store i32* %41, i32** %8, align 8
  %42 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %43 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %42, i32 0, i32 8
  %44 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %43, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %44, i64 %47
  store %struct.arc_emac_bd* %48, %struct.arc_emac_bd** %9, align 8
  %49 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %50 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %49, i32 0, i32 7
  %51 = load %struct.buffer_state*, %struct.buffer_state** %50, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* %52, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %51, i64 %54
  store %struct.buffer_state* %55, %struct.buffer_state** %10, align 8
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = load i32, i32* @EMAC_BUFFER_SIZE, align 4
  %58 = call %struct.TYPE_3__* @netdev_alloc_skb_ip_align(%struct.net_device* %56, i32 %57)
  %59 = load %struct.buffer_state*, %struct.buffer_state** %10, align 8
  %60 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %59, i32 0, i32 0
  store %struct.TYPE_3__* %58, %struct.TYPE_3__** %60, align 8
  %61 = load %struct.buffer_state*, %struct.buffer_state** %10, align 8
  %62 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = icmp ne %struct.TYPE_3__* %63, null
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %39
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %190

72:                                               ; preds = %39
  %73 = load %struct.net_device*, %struct.net_device** %3, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = load %struct.buffer_state*, %struct.buffer_state** %10, align 8
  %76 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = load i32, i32* @EMAC_BUFFER_SIZE, align 4
  %82 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %83 = call i32 @dma_map_single(i32* %74, i8* %80, i32 %81, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 1
  %86 = load i32, i32* %7, align 4
  %87 = call i64 @dma_mapping_error(i32* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %72
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = call i32 @netdev_err(%struct.net_device* %90, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %92 = load %struct.buffer_state*, %struct.buffer_state** %10, align 8
  %93 = getelementptr inbounds %struct.buffer_state, %struct.buffer_state* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = call i32 @dev_kfree_skb(%struct.TYPE_3__* %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %190

98:                                               ; preds = %72
  %99 = load %struct.buffer_state*, %struct.buffer_state** %10, align 8
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @dma_unmap_addr_set(%struct.buffer_state* %99, i32 %100, i32 %101)
  %103 = load %struct.buffer_state*, %struct.buffer_state** %10, align 8
  %104 = load i32, i32* @len, align 4
  %105 = load i32, i32* @EMAC_BUFFER_SIZE, align 4
  %106 = call i32 @dma_unmap_len_set(%struct.buffer_state* %103, i32 %104, i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = call i8* @cpu_to_le32(i32 %107)
  %109 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %9, align 8
  %110 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = call i32 (...) @wmb()
  %112 = load i32, i32* @FOR_EMAC, align 4
  %113 = load i32, i32* @EMAC_BUFFER_SIZE, align 4
  %114 = or i32 %112, %113
  %115 = call i8* @cpu_to_le32(i32 %114)
  %116 = load %struct.arc_emac_bd*, %struct.arc_emac_bd** %9, align 8
  %117 = getelementptr inbounds %struct.arc_emac_bd, %struct.arc_emac_bd* %116, i32 0, i32 0
  store i8* %115, i8** %117, align 8
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %118, align 4
  %120 = add i32 %119, 1
  %121 = load i32, i32* @RX_BD_NUM, align 4
  %122 = urem i32 %120, %121
  %123 = load i32*, i32** %8, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %98
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %35

127:                                              ; preds = %35
  %128 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %129 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %128, i32 0, i32 6
  store i64 0, i64* %129, align 8
  %130 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %131 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %130, i32 0, i32 5
  store i64 0, i64* %131, align 8
  %132 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %133 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @TX_RING_SZ, align 4
  %136 = call i32 @memset(i32 %134, i32 0, i32 %135)
  %137 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %138 = load i32, i32* @R_LAFL, align 4
  %139 = call i32 @arc_reg_set(%struct.arc_emac_priv* %137, i32 %138, i32 0)
  %140 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %141 = load i32, i32* @R_LAFH, align 4
  %142 = call i32 @arc_reg_set(%struct.arc_emac_priv* %140, i32 %141, i32 0)
  %143 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %144 = load i32, i32* @R_RX_RING, align 4
  %145 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %146 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 @arc_reg_set(%struct.arc_emac_priv* %143, i32 %144, i32 %148)
  %150 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %151 = load i32, i32* @R_TX_RING, align 4
  %152 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %153 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 @arc_reg_set(%struct.arc_emac_priv* %150, i32 %151, i32 %155)
  %157 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %158 = load i32, i32* @R_ENABLE, align 4
  %159 = load i32, i32* @RXINT_MASK, align 4
  %160 = load i32, i32* @TXINT_MASK, align 4
  %161 = or i32 %159, %160
  %162 = load i32, i32* @ERR_MASK, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @arc_reg_set(%struct.arc_emac_priv* %157, i32 %158, i32 %163)
  %165 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %166 = load i32, i32* @R_CTRL, align 4
  %167 = load i32, i32* @RX_BD_NUM, align 4
  %168 = shl i32 %167, 24
  %169 = load i32, i32* @TX_BD_NUM, align 4
  %170 = shl i32 %169, 16
  %171 = or i32 %168, %170
  %172 = load i32, i32* @TXRN_MASK, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @RXRN_MASK, align 4
  %175 = or i32 %173, %174
  %176 = call i32 @arc_reg_set(%struct.arc_emac_priv* %165, i32 %166, i32 %175)
  %177 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %178 = getelementptr inbounds %struct.arc_emac_priv, %struct.arc_emac_priv* %177, i32 0, i32 1
  %179 = call i32 @napi_enable(i32* %178)
  %180 = load %struct.arc_emac_priv*, %struct.arc_emac_priv** %4, align 8
  %181 = load i32, i32* @R_CTRL, align 4
  %182 = load i32, i32* @EN_MASK, align 4
  %183 = call i32 @arc_reg_or(%struct.arc_emac_priv* %180, i32 %181, i32 %182)
  %184 = load %struct.net_device*, %struct.net_device** %3, align 8
  %185 = getelementptr inbounds %struct.net_device, %struct.net_device* %184, i32 0, i32 0
  %186 = load %struct.phy_device*, %struct.phy_device** %185, align 8
  %187 = call i32 @phy_start(%struct.phy_device* %186)
  %188 = load %struct.net_device*, %struct.net_device** %3, align 8
  %189 = call i32 @netif_start_queue(%struct.net_device* %188)
  store i32 0, i32* %2, align 4
  br label %190

190:                                              ; preds = %127, %89, %69
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local %struct.arc_emac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @linkmode_and(i32, i32, i32) #1

declare dso_local %struct.TYPE_3__* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_3__*) #1

declare dso_local i32 @dma_unmap_addr_set(%struct.buffer_state*, i32, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.buffer_state*, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @arc_reg_set(%struct.arc_emac_priv*, i32, i32) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @arc_reg_or(%struct.arc_emac_priv*, i32, i32) #1

declare dso_local i32 @phy_start(%struct.phy_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
