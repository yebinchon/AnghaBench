; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4i_can_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4i_can_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.sun4ican_priv = type { i64 }

@SUN4I_REG_INT_ADDR = common dso_local global i64 0, align 8
@SUN4I_CAN_MAX_IRQ = common dso_local global i32 0, align 4
@SUN4I_REG_STA_ADDR = common dso_local global i64 0, align 8
@SUN4I_INT_WAKEUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wakeup interrupt\0A\00", align 1
@SUN4I_INT_TBUF_VLD = common dso_local global i32 0, align 4
@SUN4I_REG_RBUF_RBACK_START_ADDR = common dso_local global i64 0, align 8
@CAN_LED_EVENT_TX = common dso_local global i32 0, align 4
@SUN4I_INT_RBUF_VLD = common dso_local global i32 0, align 4
@SUN4I_INT_DATA_OR = common dso_local global i32 0, align 4
@SUN4I_STA_RBUF_RDY = common dso_local global i32 0, align 4
@SUN4I_INT_ERR_WRN = common dso_local global i32 0, align 4
@SUN4I_INT_BUS_ERR = common dso_local global i32 0, align 4
@SUN4I_INT_ERR_PASSIVE = common dso_local global i32 0, align 4
@SUN4I_INT_ARB_LOST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"can't allocate buffer - clearing pending interrupts\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%d messages handled in ISR\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sun4i_can_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4i_can_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sun4ican_priv*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.sun4ican_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.sun4ican_priv* %14, %struct.sun4ican_priv** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  store %struct.net_device_stats* %16, %struct.net_device_stats** %7, align 8
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %124, %2
  %18 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %19 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SUN4I_REG_INT_ADDR, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @readl(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @SUN4I_CAN_MAX_IRQ, align 4
  %28 = icmp slt i32 %26, %27
  br label %29

29:                                               ; preds = %25, %17
  %30 = phi i1 [ false, %17 ], [ %28, %25 ]
  br i1 %30, label %31, label %138

31:                                               ; preds = %29
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %10, align 4
  %34 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %35 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SUN4I_REG_STA_ADDR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @SUN4I_INT_WAKEUP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = call i32 @netdev_warn(%struct.net_device* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %31
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @SUN4I_INT_TBUF_VLD, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %75

52:                                               ; preds = %47
  %53 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %54 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @SUN4I_REG_RBUF_RBACK_START_ADDR, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl(i64 %57)
  %59 = and i32 %58, 15
  %60 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %61 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %65 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = call i32 @can_get_echo_skb(%struct.net_device* %68, i32 0)
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = call i32 @netif_wake_queue(%struct.net_device* %70)
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = load i32, i32* @CAN_LED_EVENT_TX, align 4
  %74 = call i32 @can_led_event(%struct.net_device* %72, i32 %73)
  br label %75

75:                                               ; preds = %52, %47
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @SUN4I_INT_RBUF_VLD, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %75
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @SUN4I_INT_DATA_OR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %91, %85
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @SUN4I_STA_RBUF_RDY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load %struct.net_device*, %struct.net_device** %5, align 8
  %93 = call i32 @sun4i_can_rx(%struct.net_device* %92)
  %94 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %95 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SUN4I_REG_STA_ADDR, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @readl(i64 %98)
  store i32 %99, i32* %9, align 4
  br label %86

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %100, %80, %75
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @SUN4I_INT_DATA_OR, align 4
  %104 = load i32, i32* @SUN4I_INT_ERR_WRN, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @SUN4I_INT_BUS_ERR, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @SUN4I_INT_ERR_PASSIVE, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @SUN4I_INT_ARB_LOST, align 4
  %111 = or i32 %109, %110
  %112 = and i32 %102, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %101
  %115 = load %struct.net_device*, %struct.net_device** %5, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %9, align 4
  %118 = call i64 @sun4i_can_err(%struct.net_device* %115, i32 %116, i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load %struct.net_device*, %struct.net_device** %5, align 8
  %122 = call i32 @netdev_err(%struct.net_device* %121, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %123

123:                                              ; preds = %120, %114
  br label %124

124:                                              ; preds = %123, %101
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %127 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @SUN4I_REG_INT_ADDR, align 8
  %130 = add nsw i64 %128, %129
  %131 = call i32 @writel(i32 %125, i64 %130)
  %132 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %133 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SUN4I_REG_INT_ADDR, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i32 @readl(i64 %136)
  br label %17

138:                                              ; preds = %29
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @SUN4I_CAN_MAX_IRQ, align 4
  %141 = icmp sge i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = load %struct.net_device*, %struct.net_device** %5, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @netdev_dbg(%struct.net_device* %143, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %144)
  br label %146

146:                                              ; preds = %142, %138
  %147 = load i32, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32, i32* @IRQ_HANDLED, align 4
  br label %153

151:                                              ; preds = %146
  %152 = load i32, i32* @IRQ_NONE, align 4
  br label %153

153:                                              ; preds = %151, %149
  %154 = phi i32 [ %150, %149 ], [ %152, %151 ]
  ret i32 %154
}

declare dso_local %struct.sun4ican_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @can_get_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @sun4i_can_rx(%struct.net_device*) #1

declare dso_local i64 @sun4i_can_err(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
