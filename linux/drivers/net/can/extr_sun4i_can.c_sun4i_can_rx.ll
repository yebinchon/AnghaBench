; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4i_can_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4i_can_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.sun4ican_priv = type { i64 }
%struct.can_frame = type { i32, i32*, i32 }
%struct.sk_buff = type { i32 }

@SUN4I_REG_BUF0_ADDR = common dso_local global i64 0, align 8
@SUN4I_MSG_EFF_FLAG = common dso_local global i32 0, align 4
@SUN4I_REG_BUF5_ADDR = common dso_local global i64 0, align 8
@SUN4I_REG_BUF1_ADDR = common dso_local global i64 0, align 8
@SUN4I_REG_BUF2_ADDR = common dso_local global i64 0, align 8
@SUN4I_REG_BUF3_ADDR = common dso_local global i64 0, align 8
@SUN4I_REG_BUF4_ADDR = common dso_local global i64 0, align 8
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@SUN4I_MSG_RTR_FLAG = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@SUN4I_CMD_RELEASE_RBUF = common dso_local global i32 0, align 4
@CAN_LED_EVENT_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sun4i_can_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun4i_can_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sun4ican_priv*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca %struct.can_frame*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.sun4ican_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.sun4ican_priv* %12, %struct.sun4ican_priv** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  store %struct.net_device_stats* %14, %struct.net_device_stats** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = call %struct.sk_buff* @alloc_can_skb(%struct.net_device* %15, %struct.can_frame** %5)
  store %struct.sk_buff* %16, %struct.sk_buff** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %151

20:                                               ; preds = %1
  %21 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %3, align 8
  %22 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SUN4I_REG_BUF0_ADDR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 15
  %29 = call i32 @get_can_dlc(i32 %28)
  %30 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %31 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SUN4I_MSG_EFF_FLAG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %73

36:                                               ; preds = %20
  %37 = load i64, i64* @SUN4I_REG_BUF5_ADDR, align 8
  store i64 %37, i64* %8, align 8
  %38 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %3, align 8
  %39 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SUN4I_REG_BUF1_ADDR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  %44 = shl i32 %43, 21
  %45 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %3, align 8
  %46 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SUN4I_REG_BUF2_ADDR, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl(i64 %49)
  %51 = shl i32 %50, 13
  %52 = or i32 %44, %51
  %53 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %3, align 8
  %54 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SUN4I_REG_BUF3_ADDR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl(i64 %57)
  %59 = shl i32 %58, 5
  %60 = or i32 %52, %59
  %61 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %3, align 8
  %62 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SUN4I_REG_BUF4_ADDR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @readl(i64 %65)
  %67 = ashr i32 %66, 3
  %68 = and i32 %67, 31
  %69 = or i32 %60, %68
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* @CAN_EFF_FLAG, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %91

73:                                               ; preds = %20
  %74 = load i64, i64* @SUN4I_REG_BUF3_ADDR, align 8
  store i64 %74, i64* %8, align 8
  %75 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %3, align 8
  %76 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SUN4I_REG_BUF1_ADDR, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @readl(i64 %79)
  %81 = shl i32 %80, 3
  %82 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %3, align 8
  %83 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SUN4I_REG_BUF2_ADDR, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @readl(i64 %86)
  %88 = ashr i32 %87, 5
  %89 = and i32 %88, 7
  %90 = or i32 %81, %89
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %73, %36
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @SUN4I_MSG_RTR_FLAG, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* @CAN_RTR_FLAG, align 4
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  br label %128

100:                                              ; preds = %91
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %124, %100
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %104 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %127

107:                                              ; preds = %101
  %108 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %3, align 8
  %109 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %8, align 8
  %112 = add nsw i64 %110, %111
  %113 = load i32, i32* %10, align 4
  %114 = mul nsw i32 %113, 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %112, %115
  %117 = call i32 @readl(i64 %116)
  %118 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %119 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %117, i32* %123, align 4
  br label %124

124:                                              ; preds = %107
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %101

127:                                              ; preds = %101
  br label %128

128:                                              ; preds = %127, %96
  %129 = load i32, i32* %9, align 4
  %130 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %131 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %3, align 8
  %133 = load i32, i32* @SUN4I_CMD_RELEASE_RBUF, align 4
  %134 = call i32 @sun4i_can_write_cmdreg(%struct.sun4ican_priv* %132, i32 %133)
  %135 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %136 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  %139 = load %struct.can_frame*, %struct.can_frame** %5, align 8
  %140 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %143 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %147 = call i32 @netif_rx(%struct.sk_buff* %146)
  %148 = load %struct.net_device*, %struct.net_device** %2, align 8
  %149 = load i32, i32* @CAN_LED_EVENT_RX, align 4
  %150 = call i32 @can_led_event(%struct.net_device* %148, i32 %149)
  br label %151

151:                                              ; preds = %128, %19
  ret void
}

declare dso_local %struct.sun4ican_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @get_can_dlc(i32) #1

declare dso_local i32 @sun4i_can_write_cmdreg(%struct.sun4ican_priv*, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
