; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_sja1000_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000.c_sja1000_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.sja1000_priv = type { %struct.TYPE_2__, i32 (%struct.sja1000_priv*, i32, i32)* }
%struct.TYPE_2__ = type { i32 }
%struct.can_frame = type { i32, i32, i32* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@SJA1000_FI_RTR = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@SJA1000_FI_FF = common dso_local global i32 0, align 4
@SJA1000_EFF_BUF = common dso_local global i32 0, align 4
@SJA1000_FI = common dso_local global i32 0, align 4
@SJA1000_ID1 = common dso_local global i32 0, align 4
@SJA1000_ID2 = common dso_local global i32 0, align 4
@SJA1000_ID3 = common dso_local global i32 0, align 4
@SJA1000_ID4 = common dso_local global i32 0, align 4
@SJA1000_SFF_BUF = common dso_local global i32 0, align 4
@CAN_CTRLMODE_ONE_SHOT = common dso_local global i32 0, align 4
@CMD_AT = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@CMD_SRR = common dso_local global i32 0, align 4
@CMD_TR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @sja1000_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sja1000_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sja1000_priv*, align 8
  %7 = alloca %struct.can_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.sja1000_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.sja1000_priv* %15, %struct.sja1000_priv** %6, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.can_frame*
  store %struct.can_frame* %19, %struct.can_frame** %7, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i64 @can_dropped_invalid_skb(%struct.net_device* %20, %struct.sk_buff* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %25, i32* %3, align 4
  br label %182

26:                                               ; preds = %2
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = call i32 @netif_stop_queue(%struct.net_device* %27)
  %29 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %30 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %9, align 4
  store i32 %31, i32* %8, align 4
  %32 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %33 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @CAN_RTR_FLAG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %26
  %40 = load i32, i32* @SJA1000_FI_RTR, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %39, %26
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @CAN_EFF_FLAG, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %96

48:                                               ; preds = %43
  %49 = load i32, i32* @SJA1000_FI_FF, align 4
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @SJA1000_EFF_BUF, align 4
  store i32 %52, i32* %11, align 4
  %53 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %54 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %53, i32 0, i32 1
  %55 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %54, align 8
  %56 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %57 = load i32, i32* @SJA1000_FI, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 %55(%struct.sja1000_priv* %56, i32 %57, i32 %58)
  %60 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %61 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %60, i32 0, i32 1
  %62 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %61, align 8
  %63 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %64 = load i32, i32* @SJA1000_ID1, align 4
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 534773760
  %67 = ashr i32 %66, 21
  %68 = call i32 %62(%struct.sja1000_priv* %63, i32 %64, i32 %67)
  %69 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %70 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %69, i32 0, i32 1
  %71 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %70, align 8
  %72 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %73 = load i32, i32* @SJA1000_ID2, align 4
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %74, 2088960
  %76 = ashr i32 %75, 13
  %77 = call i32 %71(%struct.sja1000_priv* %72, i32 %73, i32 %76)
  %78 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %79 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %78, i32 0, i32 1
  %80 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %79, align 8
  %81 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %82 = load i32, i32* @SJA1000_ID3, align 4
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %83, 8160
  %85 = ashr i32 %84, 5
  %86 = call i32 %80(%struct.sja1000_priv* %81, i32 %82, i32 %85)
  %87 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %88 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %87, i32 0, i32 1
  %89 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %88, align 8
  %90 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %91 = load i32, i32* @SJA1000_ID4, align 4
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, 31
  %94 = shl i32 %93, 3
  %95 = call i32 %89(%struct.sja1000_priv* %90, i32 %91, i32 %94)
  br label %123

96:                                               ; preds = %43
  %97 = load i32, i32* @SJA1000_SFF_BUF, align 4
  store i32 %97, i32* %11, align 4
  %98 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %99 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %98, i32 0, i32 1
  %100 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %99, align 8
  %101 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %102 = load i32, i32* @SJA1000_FI, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 %100(%struct.sja1000_priv* %101, i32 %102, i32 %103)
  %105 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %106 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %105, i32 0, i32 1
  %107 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %106, align 8
  %108 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %109 = load i32, i32* @SJA1000_ID1, align 4
  %110 = load i32, i32* %10, align 4
  %111 = and i32 %110, 2040
  %112 = ashr i32 %111, 3
  %113 = call i32 %107(%struct.sja1000_priv* %108, i32 %109, i32 %112)
  %114 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %115 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %114, i32 0, i32 1
  %116 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %115, align 8
  %117 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %118 = load i32, i32* @SJA1000_ID2, align 4
  %119 = load i32, i32* %10, align 4
  %120 = and i32 %119, 7
  %121 = shl i32 %120, 5
  %122 = call i32 %116(%struct.sja1000_priv* %117, i32 %118, i32 %121)
  br label %123

123:                                              ; preds = %96, %48
  store i32 0, i32* %13, align 4
  br label %124

124:                                              ; preds = %143, %123
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %146

128:                                              ; preds = %124
  %129 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %130 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %129, i32 0, i32 1
  %131 = load i32 (%struct.sja1000_priv*, i32, i32)*, i32 (%struct.sja1000_priv*, i32, i32)** %130, align 8
  %132 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  %135 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %136 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 %131(%struct.sja1000_priv* %132, i32 %133, i32 %141)
  br label %143

143:                                              ; preds = %128
  %144 = load i32, i32* %13, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %13, align 4
  br label %124

146:                                              ; preds = %124
  %147 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %148 = load %struct.net_device*, %struct.net_device** %5, align 8
  %149 = call i32 @can_put_echo_skb(%struct.sk_buff* %147, %struct.net_device* %148, i32 0)
  %150 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %151 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @CAN_CTRLMODE_ONE_SHOT, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %146
  %158 = load i32, i32* @CMD_AT, align 4
  %159 = load i32, i32* %12, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %157, %146
  %162 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %163 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %161
  %170 = load i32, i32* @CMD_SRR, align 4
  %171 = load i32, i32* %12, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %12, align 4
  br label %177

173:                                              ; preds = %161
  %174 = load i32, i32* @CMD_TR, align 4
  %175 = load i32, i32* %12, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %12, align 4
  br label %177

177:                                              ; preds = %173, %169
  %178 = load %struct.sja1000_priv*, %struct.sja1000_priv** %6, align 8
  %179 = load i32, i32* %12, align 4
  %180 = call i32 @sja1000_write_cmdreg(%struct.sja1000_priv* %178, i32 %179)
  %181 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %177, %24
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local %struct.sja1000_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @sja1000_write_cmdreg(%struct.sja1000_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
