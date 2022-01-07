; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_rx_can_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_rx_can_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb_net_priv = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.kvaser_cmd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MSG_FLAG_ERROR_FRAME = common dso_local global i32 0, align 4
@MSG_FLAG_NERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unknown error (flags: 0x%02x)\0A\00", align 1
@MSG_FLAG_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb_net_priv*, %struct.kvaser_cmd*)* @kvaser_usb_leaf_rx_can_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_leaf_rx_can_err(%struct.kvaser_usb_net_priv* %0, %struct.kvaser_cmd* %1) #0 {
  %3 = alloca %struct.kvaser_usb_net_priv*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  store %struct.kvaser_usb_net_priv* %0, %struct.kvaser_usb_net_priv** %3, align 8
  store %struct.kvaser_cmd* %1, %struct.kvaser_cmd** %4, align 8
  %6 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %7 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MSG_FLAG_ERROR_FRAME, align 4
  %12 = load i32, i32* @MSG_FLAG_NERR, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %18 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %17, i32 0, i32 0
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  store %struct.net_device_stats* %20, %struct.net_device_stats** %5, align 8
  %21 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %22 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @netdev_err(%struct.TYPE_7__* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %31 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %48

34:                                               ; preds = %2
  %35 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MSG_FLAG_OVERRUN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %45 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = call i32 @kvaser_usb_can_rx_over_error(%struct.TYPE_7__* %46)
  br label %48

48:                                               ; preds = %16, %43, %34
  ret void
}

declare dso_local i32 @netdev_err(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @kvaser_usb_can_rx_over_error(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
