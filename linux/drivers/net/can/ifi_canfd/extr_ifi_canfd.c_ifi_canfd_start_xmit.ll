; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.ifi_canfd_priv = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.canfd_frame = type { i32, i32, i32, i64 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@IFI_CANFD_TXSTCMD = common dso_local global i64 0, align 8
@IFI_CANFD_TXSTCMD_FULL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"BUG! TX FIFO full when queue awake!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@IFI_CANFD_TXFIFO_ID_ID_XTD_WIDTH = common dso_local global i32 0, align 4
@IFI_CANFD_TXFIFO_ID_ID_XTD_MASK = common dso_local global i32 0, align 4
@IFI_CANFD_TXFIFO_ID_ID_XTD_OFFSET = common dso_local global i32 0, align 4
@IFI_CANFD_TXFIFO_ID_IDE = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@IFI_CANFD_TXFIFO_DLC_EDL = common dso_local global i32 0, align 4
@CANFD_BRS = common dso_local global i32 0, align 4
@IFI_CANFD_TXFIFO_DLC_BRS = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@IFI_CANFD_TXFIFO_DLC_RTR = common dso_local global i32 0, align 4
@IFI_CANFD_TXFIFO_ID = common dso_local global i64 0, align 8
@IFI_CANFD_TXFIFO_DLC = common dso_local global i64 0, align 8
@IFI_CANFD_TXFIFO_DATA = common dso_local global i64 0, align 8
@IFI_CANFD_TXFIFO_REPEATCOUNT = common dso_local global i64 0, align 8
@IFI_CANFD_TXFIFO_SUSPEND_US = common dso_local global i64 0, align 8
@IFI_CANFD_TXSTCMD_ADD_MSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ifi_canfd_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifi_canfd_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifi_canfd_priv*, align 8
  %7 = alloca %struct.canfd_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.ifi_canfd_priv* %13, %struct.ifi_canfd_priv** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.canfd_frame*
  store %struct.canfd_frame* %17, %struct.canfd_frame** %7, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = call i64 @can_dropped_invalid_skb(%struct.net_device* %18, %struct.sk_buff* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %23, i32* %3, align 4
  br label %182

24:                                               ; preds = %2
  %25 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %26 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IFI_CANFD_TXSTCMD, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @IFI_CANFD_TXSTCMD_FULL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %24
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i32 @netif_stop_queue(%struct.net_device* %36)
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = call i32 @netdev_err(%struct.net_device* %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %40, i32* %3, align 4
  br label %182

41:                                               ; preds = %24
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call i32 @netif_stop_queue(%struct.net_device* %42)
  %44 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %45 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CAN_EFF_FLAG, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %68

50:                                               ; preds = %41
  %51 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %52 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CAN_EFF_MASK, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @IFI_CANFD_TXFIFO_ID_ID_XTD_WIDTH, align 4
  %58 = ashr i32 %56, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @IFI_CANFD_TXFIFO_ID_ID_XTD_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @IFI_CANFD_TXFIFO_ID_ID_XTD_OFFSET, align 4
  %63 = shl i32 %61, %62
  %64 = or i32 %58, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @IFI_CANFD_TXFIFO_ID_IDE, align 4
  %66 = load i32, i32* %9, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %9, align 4
  br label %74

68:                                               ; preds = %41
  %69 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %70 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @CAN_SFF_MASK, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %68, %50
  %75 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %76 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @can_len2dlc(i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %80 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %74
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = call i64 @can_is_canfd_skb(%struct.sk_buff* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %86
  %91 = load i32, i32* @IFI_CANFD_TXFIFO_DLC_EDL, align 4
  %92 = load i32, i32* %10, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %10, align 4
  %94 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %95 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @CANFD_BRS, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %90
  %101 = load i32, i32* @IFI_CANFD_TXFIFO_DLC_BRS, align 4
  %102 = load i32, i32* %10, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %100, %90
  br label %105

105:                                              ; preds = %104, %86, %74
  %106 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %107 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @CAN_RTR_FLAG, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %105
  %113 = load i32, i32* @IFI_CANFD_TXFIFO_DLC_RTR, align 4
  %114 = load i32, i32* %10, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %112, %105
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %119 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @IFI_CANFD_TXFIFO_ID, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @writel(i32 %117, i64 %122)
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %126 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @IFI_CANFD_TXFIFO_DLC, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writel(i32 %124, i64 %129)
  store i32 0, i32* %11, align 4
  br label %131

131:                                              ; preds = %155, %116
  %132 = load i32, i32* %11, align 4
  %133 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %134 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = icmp slt i32 %132, %135
  br i1 %136, label %137, label %158

137:                                              ; preds = %131
  %138 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %139 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %140, %142
  %144 = inttoptr i64 %143 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %147 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @IFI_CANFD_TXFIFO_DATA, align 8
  %150 = add nsw i64 %148, %149
  %151 = load i32, i32* %11, align 4
  %152 = sext i32 %151 to i64
  %153 = add nsw i64 %150, %152
  %154 = call i32 @writel(i32 %145, i64 %153)
  br label %155

155:                                              ; preds = %137
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 4
  store i32 %157, i32* %11, align 4
  br label %131

158:                                              ; preds = %131
  %159 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %160 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @IFI_CANFD_TXFIFO_REPEATCOUNT, align 8
  %163 = add nsw i64 %161, %162
  %164 = call i32 @writel(i32 0, i64 %163)
  %165 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %166 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @IFI_CANFD_TXFIFO_SUSPEND_US, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @writel(i32 0, i64 %169)
  %171 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %172 = load %struct.net_device*, %struct.net_device** %5, align 8
  %173 = call i32 @can_put_echo_skb(%struct.sk_buff* %171, %struct.net_device* %172, i32 0)
  %174 = load i32, i32* @IFI_CANFD_TXSTCMD_ADD_MSG, align 4
  %175 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %176 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @IFI_CANFD_TXSTCMD, align 8
  %179 = add nsw i64 %177, %178
  %180 = call i32 @writel(i32 %174, i64 %179)
  %181 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %181, i32* %3, align 4
  br label %182

182:                                              ; preds = %158, %35, %22
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @can_len2dlc(i32) #1

declare dso_local i64 @can_is_canfd_skb(%struct.sk_buff*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
