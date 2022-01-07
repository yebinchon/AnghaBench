; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_read_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.ifi_canfd_priv = type { i64 }
%struct.canfd_frame = type { i32, i32, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i32 }

@IFI_CANFD_INTERRUPT_RXFIFO_NEMPTY = common dso_local global i32 0, align 4
@IFI_CANFD_INTERRUPT_RXFIFO_NEMPTY_PER = common dso_local global i32 0, align 4
@IFI_CANFD_RXFIFO_DLC = common dso_local global i64 0, align 8
@IFI_CANFD_RXFIFO_DLC_EDL = common dso_local global i32 0, align 4
@IFI_CANFD_RXFIFO_DLC_DLC_OFFSET = common dso_local global i32 0, align 4
@IFI_CANFD_RXFIFO_DLC_DLC_MASK = common dso_local global i32 0, align 4
@IFI_CANFD_RXFIFO_ID = common dso_local global i64 0, align 8
@IFI_CANFD_RXFIFO_ID_ID_OFFSET = common dso_local global i32 0, align 4
@IFI_CANFD_RXFIFO_ID_IDE = common dso_local global i32 0, align 4
@IFI_CANFD_RXFIFO_ID_ID_XTD_MASK = common dso_local global i32 0, align 4
@IFI_CANFD_RXFIFO_ID_ID_XTD_OFFSET = common dso_local global i32 0, align 4
@IFI_CANFD_RXFIFO_ID_ID_STD_MASK = common dso_local global i32 0, align 4
@IFI_CANFD_RXFIFO_ID_ID_XTD_WIDTH = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@IFI_CANFD_RXFIFO_DLC_ESI = common dso_local global i32 0, align 4
@CANFD_ESI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ESI Error\0A\00", align 1
@IFI_CANFD_RXFIFO_DLC_RTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@IFI_CANFD_RXFIFO_DLC_BRS = common dso_local global i32 0, align 4
@CANFD_BRS = common dso_local global i32 0, align 4
@IFI_CANFD_RXFIFO_DATA = common dso_local global i64 0, align 8
@IFI_CANFD_RXSTCMD_REMOVE_MSG = common dso_local global i32 0, align 4
@IFI_CANFD_RXSTCMD = common dso_local global i64 0, align 8
@IFI_CANFD_INTERRUPT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ifi_canfd_read_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ifi_canfd_read_fifo(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_device_stats*, align 8
  %4 = alloca %struct.ifi_canfd_priv*, align 8
  %5 = alloca %struct.canfd_frame*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  store %struct.net_device_stats* %14, %struct.net_device_stats** %3, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.ifi_canfd_priv* %16, %struct.ifi_canfd_priv** %4, align 8
  %17 = load i32, i32* @IFI_CANFD_INTERRUPT_RXFIFO_NEMPTY, align 4
  %18 = load i32, i32* @IFI_CANFD_INTERRUPT_RXFIFO_NEMPTY_PER, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %4, align 8
  %21 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IFI_CANFD_RXFIFO_DLC, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @IFI_CANFD_RXFIFO_DLC_EDL, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call %struct.sk_buff* @alloc_canfd_skb(%struct.net_device* %31, %struct.canfd_frame** %5)
  store %struct.sk_buff* %32, %struct.sk_buff** %6, align 8
  br label %37

33:                                               ; preds = %1
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = bitcast %struct.canfd_frame** %5 to %struct.can_frame**
  %36 = call %struct.sk_buff* @alloc_can_skb(%struct.net_device* %34, %struct.can_frame** %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %6, align 8
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %42 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %198

45:                                               ; preds = %37
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @IFI_CANFD_RXFIFO_DLC_DLC_OFFSET, align 4
  %48 = ashr i32 %46, %47
  %49 = load i32, i32* @IFI_CANFD_RXFIFO_DLC_DLC_MASK, align 4
  %50 = and i32 %48, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @IFI_CANFD_RXFIFO_DLC_EDL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %45
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @can_dlc2len(i32 %56)
  %58 = load %struct.canfd_frame*, %struct.canfd_frame** %5, align 8
  %59 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %65

60:                                               ; preds = %45
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @get_can_dlc(i32 %61)
  %63 = load %struct.canfd_frame*, %struct.canfd_frame** %5, align 8
  %64 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %4, align 8
  %67 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @IFI_CANFD_RXFIFO_ID, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readl(i64 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @IFI_CANFD_RXFIFO_ID_ID_OFFSET, align 4
  %74 = ashr i32 %72, %73
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @IFI_CANFD_RXFIFO_ID_IDE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %65
  %80 = load i32, i32* @IFI_CANFD_RXFIFO_ID_ID_XTD_MASK, align 4
  %81 = load i32, i32* %11, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* @IFI_CANFD_RXFIFO_ID_ID_XTD_OFFSET, align 4
  %85 = ashr i32 %83, %84
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @IFI_CANFD_RXFIFO_ID_ID_STD_MASK, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @IFI_CANFD_RXFIFO_ID_ID_XTD_WIDTH, align 4
  %90 = shl i32 %88, %89
  %91 = or i32 %85, %90
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* @CAN_EFF_FLAG, align 4
  %93 = load i32, i32* %11, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %11, align 4
  br label %99

95:                                               ; preds = %65
  %96 = load i32, i32* @IFI_CANFD_RXFIFO_ID_ID_STD_MASK, align 4
  %97 = load i32, i32* %11, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %95, %79
  %100 = load i32, i32* %11, align 4
  %101 = load %struct.canfd_frame*, %struct.canfd_frame** %5, align 8
  %102 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @IFI_CANFD_RXFIFO_DLC_ESI, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %99
  %108 = load i32, i32* @CANFD_ESI, align 4
  %109 = load %struct.canfd_frame*, %struct.canfd_frame** %5, align 8
  %110 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  %113 = load %struct.net_device*, %struct.net_device** %2, align 8
  %114 = call i32 @netdev_dbg(%struct.net_device* %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %115

115:                                              ; preds = %107, %99
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @IFI_CANFD_RXFIFO_DLC_EDL, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @IFI_CANFD_RXFIFO_DLC_RTR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load i32, i32* @CAN_RTR_FLAG, align 4
  %127 = load %struct.canfd_frame*, %struct.canfd_frame** %5, align 8
  %128 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 4
  br label %170

131:                                              ; preds = %120, %115
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @IFI_CANFD_RXFIFO_DLC_BRS, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load i32, i32* @CANFD_BRS, align 4
  %138 = load %struct.canfd_frame*, %struct.canfd_frame** %5, align 8
  %139 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %142

142:                                              ; preds = %136, %131
  store i32 0, i32* %12, align 4
  br label %143

143:                                              ; preds = %166, %142
  %144 = load i32, i32* %12, align 4
  %145 = load %struct.canfd_frame*, %struct.canfd_frame** %5, align 8
  %146 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %169

149:                                              ; preds = %143
  %150 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %4, align 8
  %151 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @IFI_CANFD_RXFIFO_DATA, align 8
  %154 = add nsw i64 %152, %153
  %155 = load i32, i32* %12, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %154, %156
  %158 = call i32 @readl(i64 %157)
  %159 = load %struct.canfd_frame*, %struct.canfd_frame** %5, align 8
  %160 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %159, i32 0, i32 2
  %161 = load i64, i64* %160, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %161, %163
  %165 = inttoptr i64 %164 to i32*
  store i32 %158, i32* %165, align 4
  br label %166

166:                                              ; preds = %149
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 4
  store i32 %168, i32* %12, align 4
  br label %143

169:                                              ; preds = %143
  br label %170

170:                                              ; preds = %169, %125
  %171 = load i32, i32* @IFI_CANFD_RXSTCMD_REMOVE_MSG, align 4
  %172 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %4, align 8
  %173 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @IFI_CANFD_RXSTCMD, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i32 @writel(i32 %171, i64 %176)
  %178 = load i32, i32* %7, align 4
  %179 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %4, align 8
  %180 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @IFI_CANFD_INTERRUPT, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @writel(i32 %178, i64 %183)
  %185 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %186 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  %189 = load %struct.canfd_frame*, %struct.canfd_frame** %5, align 8
  %190 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.net_device_stats*, %struct.net_device_stats** %3, align 8
  %193 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 %194, %191
  store i32 %195, i32* %193, align 4
  %196 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %197 = call i32 @netif_receive_skb(%struct.sk_buff* %196)
  br label %198

198:                                              ; preds = %170, %40
  ret void
}

declare dso_local %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local %struct.sk_buff* @alloc_canfd_skb(%struct.net_device*, %struct.canfd_frame**) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @can_dlc2len(i32) #1

declare dso_local i32 @get_can_dlc(i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
