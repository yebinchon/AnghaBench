; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.rcar_canfd_channel = type { i32, i64, i64, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.canfd_frame = type { i32, i32, i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@RCANFD_CFID_CFIDE = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@RCANFD_CFID_CFRTR = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@RCANFD_CFFIFO_IDX = common dso_local global i32 0, align 4
@RCANFD_CFFDCSTS_CFFDF = common dso_local global i32 0, align 4
@CANFD_BRS = common dso_local global i32 0, align 4
@RCANFD_CFFDCSTS_CFBRS = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i64 0, align 8
@RCANFD_CFFDCSTS_CFESI = common dso_local global i32 0, align 4
@RCANFD_FIFO_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @rcar_canfd_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_canfd_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.rcar_canfd_channel*, align 8
  %7 = alloca %struct.canfd_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device* %13)
  store %struct.rcar_canfd_channel* %14, %struct.rcar_canfd_channel** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.canfd_frame*
  store %struct.canfd_frame* %18, %struct.canfd_frame** %7, align 8
  store i32 0, i32* %8, align 4
  %19 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %20 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %12, align 4
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i64 @can_dropped_invalid_skb(%struct.net_device* %22, %struct.sk_buff* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %27, i32* %3, align 4
  br label %212

28:                                               ; preds = %2
  %29 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %30 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CAN_EFF_FLAG, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %37 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CAN_EFF_MASK, align 4
  %40 = and i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @RCANFD_CFID_CFIDE, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %50

44:                                               ; preds = %28
  %45 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %46 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @CAN_SFF_MASK, align 4
  %49 = and i32 %47, %48
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %44, %35
  %51 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %52 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CAN_RTR_FLAG, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @RCANFD_CFID_CFRTR, align 4
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %50
  %62 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %63 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @can_len2dlc(i32 %64)
  %66 = call i32 @RCANFD_CFPTR_CFDLC(i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %68 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %135

74:                                               ; preds = %61
  %75 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %76 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @RCANFD_CFFIFO_IDX, align 4
  %80 = call i32 @RCANFD_F_CFID(i32 %78, i32 %79)
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @rcar_canfd_write(i32 %77, i32 %80, i32 %81)
  %83 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %84 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* @RCANFD_CFFIFO_IDX, align 4
  %88 = call i32 @RCANFD_F_CFPTR(i32 %86, i32 %87)
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @rcar_canfd_write(i32 %85, i32 %88, i32 %89)
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = call i64 @can_is_canfd_skb(%struct.sk_buff* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %120

94:                                               ; preds = %74
  %95 = load i32, i32* @RCANFD_CFFDCSTS_CFFDF, align 4
  %96 = load i32, i32* %8, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %8, align 4
  %98 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %99 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @CANFD_BRS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %94
  %105 = load i32, i32* @RCANFD_CFFDCSTS_CFBRS, align 4
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %104, %94
  %109 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %110 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %109, i32 0, i32 6
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CAN_STATE_ERROR_PASSIVE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load i32, i32* @RCANFD_CFFDCSTS_CFESI, align 4
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %8, align 4
  br label %119

119:                                              ; preds = %115, %108
  br label %120

120:                                              ; preds = %119, %74
  %121 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %122 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @RCANFD_CFFIFO_IDX, align 4
  %126 = call i32 @RCANFD_F_CFFDCSTS(i32 %124, i32 %125)
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @rcar_canfd_write(i32 %123, i32 %126, i32 %127)
  %129 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %130 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %131 = load i32, i32* %12, align 4
  %132 = load i32, i32* @RCANFD_CFFIFO_IDX, align 4
  %133 = call i32 @RCANFD_F_CFDF(i32 %131, i32 %132, i32 0)
  %134 = call i32 @rcar_canfd_put_data(%struct.rcar_canfd_channel* %129, %struct.canfd_frame* %130, i32 %133)
  br label %158

135:                                              ; preds = %61
  %136 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %137 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* @RCANFD_CFFIFO_IDX, align 4
  %141 = call i32 @RCANFD_C_CFID(i32 %139, i32 %140)
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @rcar_canfd_write(i32 %138, i32 %141, i32 %142)
  %144 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %145 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* @RCANFD_CFFIFO_IDX, align 4
  %149 = call i32 @RCANFD_C_CFPTR(i32 %147, i32 %148)
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @rcar_canfd_write(i32 %146, i32 %149, i32 %150)
  %152 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %153 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @RCANFD_CFFIFO_IDX, align 4
  %156 = call i32 @RCANFD_C_CFDF(i32 %154, i32 %155, i32 0)
  %157 = call i32 @rcar_canfd_put_data(%struct.rcar_canfd_channel* %152, %struct.canfd_frame* %153, i32 %156)
  br label %158

158:                                              ; preds = %135, %120
  %159 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %160 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %163 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %162, i32 0, i32 5
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %166 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @RCANFD_FIFO_DEPTH, align 8
  %169 = urem i64 %167, %168
  %170 = getelementptr inbounds i32, i32* %164, i64 %169
  store i32 %161, i32* %170, align 4
  %171 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %172 = load %struct.net_device*, %struct.net_device** %5, align 8
  %173 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %174 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @RCANFD_FIFO_DEPTH, align 8
  %177 = urem i64 %175, %176
  %178 = call i32 @can_put_echo_skb(%struct.sk_buff* %171, %struct.net_device* %172, i64 %177)
  %179 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %180 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %179, i32 0, i32 3
  %181 = load i64, i64* %11, align 8
  %182 = call i32 @spin_lock_irqsave(i32* %180, i64 %181)
  %183 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %184 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = add i64 %185, 1
  store i64 %186, i64* %184, align 8
  %187 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %188 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %191 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = sub i64 %189, %192
  %194 = load i64, i64* @RCANFD_FIFO_DEPTH, align 8
  %195 = icmp uge i64 %193, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %158
  %197 = load %struct.net_device*, %struct.net_device** %5, align 8
  %198 = call i32 @netif_stop_queue(%struct.net_device* %197)
  br label %199

199:                                              ; preds = %196, %158
  %200 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %201 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* @RCANFD_CFFIFO_IDX, align 4
  %205 = call i32 @RCANFD_CFPCTR(i32 %203, i32 %204)
  %206 = call i32 @rcar_canfd_write(i32 %202, i32 %205, i32 255)
  %207 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %6, align 8
  %208 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %207, i32 0, i32 3
  %209 = load i64, i64* %11, align 8
  %210 = call i32 @spin_unlock_irqrestore(i32* %208, i64 %209)
  %211 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %211, i32* %3, align 4
  br label %212

212:                                              ; preds = %199, %26
  %213 = load i32, i32* %3, align 4
  ret i32 %213
}

declare dso_local %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @RCANFD_CFPTR_CFDLC(i32) #1

declare dso_local i32 @can_len2dlc(i32) #1

declare dso_local i32 @rcar_canfd_write(i32, i32, i32) #1

declare dso_local i32 @RCANFD_F_CFID(i32, i32) #1

declare dso_local i32 @RCANFD_F_CFPTR(i32, i32) #1

declare dso_local i64 @can_is_canfd_skb(%struct.sk_buff*) #1

declare dso_local i32 @RCANFD_F_CFFDCSTS(i32, i32) #1

declare dso_local i32 @rcar_canfd_put_data(%struct.rcar_canfd_channel*, %struct.canfd_frame*, i32) #1

declare dso_local i32 @RCANFD_F_CFDF(i32, i32, i32) #1

declare dso_local i32 @RCANFD_C_CFID(i32, i32) #1

declare dso_local i32 @RCANFD_C_CFPTR(i32, i32) #1

declare dso_local i32 @RCANFD_C_CFDF(i32, i32, i32) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @RCANFD_CFPCTR(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
