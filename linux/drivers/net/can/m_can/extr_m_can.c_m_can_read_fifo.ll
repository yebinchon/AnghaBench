; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_read_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_read_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.m_can_classdev = type { i32 }
%struct.canfd_frame = type { i32, i32, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i32 }

@RXFS_FGI_MASK = common dso_local global i32 0, align 4
@RXFS_FGI_SHIFT = common dso_local global i32 0, align 4
@M_CAN_FIFO_DLC = common dso_local global i32 0, align 4
@RX_BUF_FDF = common dso_local global i32 0, align 4
@M_CAN_FIFO_ID = common dso_local global i32 0, align 4
@RX_BUF_XTD = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@RX_BUF_ESI = common dso_local global i32 0, align 4
@CANFD_ESI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ESI Error\0A\00", align 1
@RX_BUF_RTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@RX_BUF_BRS = common dso_local global i32 0, align 4
@CANFD_BRS = common dso_local global i32 0, align 4
@M_CAN_RXF0A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @m_can_read_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m_can_read_fifo(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca %struct.m_can_classdev*, align 8
  %7 = alloca %struct.canfd_frame*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  store %struct.net_device_stats* %14, %struct.net_device_stats** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %15)
  store %struct.m_can_classdev* %16, %struct.m_can_classdev** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @RXFS_FGI_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @RXFS_FGI_SHIFT, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %10, align 4
  %22 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @M_CAN_FIFO_DLC, align 4
  %25 = call i32 @m_can_fifo_read(%struct.m_can_classdev* %22, i32 %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @RX_BUF_FDF, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call %struct.sk_buff* @alloc_canfd_skb(%struct.net_device* %31, %struct.canfd_frame** %7)
  store %struct.sk_buff* %32, %struct.sk_buff** %8, align 8
  br label %37

33:                                               ; preds = %2
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = bitcast %struct.canfd_frame** %7 to %struct.can_frame**
  %36 = call %struct.sk_buff* @alloc_can_skb(%struct.net_device* %34, %struct.can_frame** %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %8, align 8
  br label %37

37:                                               ; preds = %33, %30
  %38 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %42 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %171

45:                                               ; preds = %37
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @RX_BUF_FDF, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i32, i32* %11, align 4
  %52 = ashr i32 %51, 16
  %53 = and i32 %52, 15
  %54 = call i32 @can_dlc2len(i32 %53)
  %55 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %56 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %64

57:                                               ; preds = %45
  %58 = load i32, i32* %11, align 4
  %59 = ashr i32 %58, 16
  %60 = and i32 %59, 15
  %61 = call i32 @get_can_dlc(i32 %60)
  %62 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %63 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @M_CAN_FIFO_ID, align 4
  %68 = call i32 @m_can_fifo_read(%struct.m_can_classdev* %65, i32 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @RX_BUF_XTD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %64
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @CAN_EFF_MASK, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @CAN_EFF_FLAG, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %80 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %88

81:                                               ; preds = %64
  %82 = load i32, i32* %9, align 4
  %83 = ashr i32 %82, 18
  %84 = load i32, i32* @CAN_SFF_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %87 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %81, %73
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @RX_BUF_ESI, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = load i32, i32* @CANFD_ESI, align 4
  %95 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %96 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = call i32 @netdev_dbg(%struct.net_device* %99, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %93, %88
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* @RX_BUF_FDF, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %117, label %106

106:                                              ; preds = %101
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @RX_BUF_RTR, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32, i32* @CAN_RTR_FLAG, align 4
  %113 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %114 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %153

117:                                              ; preds = %106, %101
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @RX_BUF_BRS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load i32, i32* @CANFD_BRS, align 4
  %124 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %125 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %117
  store i32 0, i32* %12, align 4
  br label %129

129:                                              ; preds = %149, %128
  %130 = load i32, i32* %12, align 4
  %131 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %132 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %130, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %129
  %136 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %137 = load i32, i32* %10, align 4
  %138 = load i32, i32* %12, align 4
  %139 = sdiv i32 %138, 4
  %140 = call i32 @M_CAN_FIFO_DATA(i32 %139)
  %141 = call i32 @m_can_fifo_read(%struct.m_can_classdev* %136, i32 %137, i32 %140)
  %142 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %143 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %144, %146
  %148 = inttoptr i64 %147 to i32*
  store i32 %141, i32* %148, align 4
  br label %149

149:                                              ; preds = %135
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 4
  store i32 %151, i32* %12, align 4
  br label %129

152:                                              ; preds = %129
  br label %153

153:                                              ; preds = %152, %111
  %154 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %155 = load i32, i32* @M_CAN_RXF0A, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @m_can_write(%struct.m_can_classdev* %154, i32 %155, i32 %156)
  %158 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %159 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %159, align 4
  %162 = load %struct.canfd_frame*, %struct.canfd_frame** %7, align 8
  %163 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %166 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, %164
  store i32 %168, i32* %166, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %170 = call i32 @netif_receive_skb(%struct.sk_buff* %169)
  br label %171

171:                                              ; preds = %153, %40
  ret void
}

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @m_can_fifo_read(%struct.m_can_classdev*, i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_canfd_skb(%struct.net_device*, %struct.canfd_frame**) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @can_dlc2len(i32) #1

declare dso_local i32 @get_can_dlc(i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @M_CAN_FIFO_DATA(i32) #1

declare dso_local i32 @m_can_write(%struct.m_can_classdev*, i32, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
