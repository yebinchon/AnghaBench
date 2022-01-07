; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_ti_hecc.c_ti_hecc_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.ti_hecc_priv = type { i32, i32, i32, i32 }
%struct.can_frame = type { i32, i32, i64 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@HECC_CANME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"BUG: TX mbx not ready tx_head=%08X, tx_tail=%08X\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@HECC_CANMCF_RTR = common dso_local global i32 0, align 4
@HECC_CANMCF = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@HECC_CANMID_IDE = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@HECC_CANMID = common dso_local global i32 0, align 4
@HECC_CANMDL = common dso_local global i32 0, align 4
@HECC_CANMDH = common dso_local global i32 0, align 4
@HECC_TX_MASK = common dso_local global i32 0, align 4
@HECC_CANTRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ti_hecc_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_hecc_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ti_hecc_priv*, align 8
  %7 = alloca %struct.can_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.ti_hecc_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.ti_hecc_priv* %13, %struct.ti_hecc_priv** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.can_frame*
  store %struct.can_frame* %17, %struct.can_frame** %7, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i64 @can_dropped_invalid_skb(%struct.net_device* %18, %struct.sk_buff* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %23, i32* %3, align 4
  br label %191

24:                                               ; preds = %2
  %25 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %26 = call i32 @get_tx_head_mb(%struct.ti_hecc_priv* %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @BIT(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %30 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %29, i32 0, i32 1
  %31 = load i64, i64* %11, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %34 = load i32, i32* @HECC_CANME, align 4
  %35 = call i32 @hecc_read(%struct.ti_hecc_priv* %33, i32 %34)
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %35, %36
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %24
  %41 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %42 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %41, i32 0, i32 1
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = call i32 @netif_stop_queue(%struct.net_device* %45)
  %47 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %48 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %51 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %54 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @netdev_err(i32 %49, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %57, i32* %3, align 4
  br label %191

58:                                               ; preds = %24
  %59 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %60 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %59, i32 0, i32 1
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  %63 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %64 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %67 = call i32 @get_tx_head_prio(%struct.ti_hecc_priv* %66)
  %68 = shl i32 %67, 8
  %69 = or i32 %65, %68
  store i32 %69, i32* %10, align 4
  %70 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %71 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CAN_RTR_FLAG, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %58
  %77 = load i32, i32* @HECC_CANMCF_RTR, align 4
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %10, align 4
  br label %80

80:                                               ; preds = %76, %58
  %81 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @HECC_CANMCF, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @hecc_write_mbx(%struct.ti_hecc_priv* %81, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %87 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CAN_EFF_FLAG, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %80
  %93 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %94 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CAN_EFF_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @HECC_CANMID_IDE, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* %10, align 4
  br label %107

100:                                              ; preds = %80
  %101 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %102 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @CAN_SFF_MASK, align 4
  %105 = and i32 %103, %104
  %106 = shl i32 %105, 18
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %100, %92
  %108 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @HECC_CANMID, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @hecc_write_mbx(%struct.ti_hecc_priv* %108, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @HECC_CANMDL, align 4
  %116 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %117 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = inttoptr i64 %118 to i32*
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @be32_to_cpu(i32 %120)
  %122 = call i32 @hecc_write_mbx(%struct.ti_hecc_priv* %113, i32 %114, i32 %115, i32 %121)
  %123 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %124 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %125, 4
  br i1 %126, label %127, label %139

127:                                              ; preds = %107
  %128 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @HECC_CANMDH, align 4
  %131 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %132 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %131, i32 0, i32 2
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %133, 4
  %135 = inttoptr i64 %134 to i32*
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @be32_to_cpu(i32 %136)
  %138 = call i32 @hecc_write_mbx(%struct.ti_hecc_priv* %128, i32 %129, i32 %130, i32 %137)
  br label %145

139:                                              ; preds = %107
  %140 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %141 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, 4
  %144 = inttoptr i64 %143 to i32*
  store i32 0, i32* %144, align 4
  br label %145

145:                                              ; preds = %139, %127
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = load %struct.net_device*, %struct.net_device** %5, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 @can_put_echo_skb(%struct.sk_buff* %146, %struct.net_device* %147, i32 %148)
  %150 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %151 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %150, i32 0, i32 1
  %152 = load i64, i64* %11, align 8
  %153 = call i32 @spin_lock_irqsave(i32* %151, i64 %152)
  %154 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %155 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %155, align 4
  %158 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %159 = load i32, i32* @HECC_CANME, align 4
  %160 = call i32 @hecc_read(%struct.ti_hecc_priv* %158, i32 %159)
  %161 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %162 = call i32 @get_tx_head_mb(%struct.ti_hecc_priv* %161)
  %163 = call i32 @BIT(i32 %162)
  %164 = and i32 %160, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %174, label %166

166:                                              ; preds = %145
  %167 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %168 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @HECC_TX_MASK, align 4
  %171 = and i32 %169, %170
  %172 = load i32, i32* @HECC_TX_MASK, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %177

174:                                              ; preds = %166, %145
  %175 = load %struct.net_device*, %struct.net_device** %5, align 8
  %176 = call i32 @netif_stop_queue(%struct.net_device* %175)
  br label %177

177:                                              ; preds = %174, %166
  %178 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %179 = load i32, i32* @HECC_CANME, align 4
  %180 = load i32, i32* %9, align 4
  %181 = call i32 @hecc_set_bit(%struct.ti_hecc_priv* %178, i32 %179, i32 %180)
  %182 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %183 = getelementptr inbounds %struct.ti_hecc_priv, %struct.ti_hecc_priv* %182, i32 0, i32 1
  %184 = load i64, i64* %11, align 8
  %185 = call i32 @spin_unlock_irqrestore(i32* %183, i64 %184)
  %186 = load %struct.ti_hecc_priv*, %struct.ti_hecc_priv** %6, align 8
  %187 = load i32, i32* @HECC_CANTRS, align 4
  %188 = load i32, i32* %9, align 4
  %189 = call i32 @hecc_write(%struct.ti_hecc_priv* %186, i32 %187, i32 %188)
  %190 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %190, i32* %3, align 4
  br label %191

191:                                              ; preds = %177, %40, %22
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local %struct.ti_hecc_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @get_tx_head_mb(%struct.ti_hecc_priv*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @hecc_read(%struct.ti_hecc_priv*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @get_tx_head_prio(%struct.ti_hecc_priv*) #1

declare dso_local i32 @hecc_write_mbx(%struct.ti_hecc_priv*, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @hecc_set_bit(%struct.ti_hecc_priv*, i32, i32) #1

declare dso_local i32 @hecc_write(%struct.ti_hecc_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
