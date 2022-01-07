; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_set_bittiming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_set_bittiming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.kvaser_usb_net_priv = type { %struct.TYPE_4__, i32, %struct.kvaser_usb* }
%struct.TYPE_4__ = type { i32, %struct.can_bittiming }
%struct.can_bittiming = type { i32, i64, i64, i32, i32 }
%struct.kvaser_usb = type { i32 }
%struct.kvaser_cmd = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_SET_BUS_PARAMS = common dso_local global i32 0, align 4
@CMD_HEADER_LEN = common dso_local global i64 0, align 8
@CAN_CTRLMODE_3_SAMPLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @kvaser_usb_leaf_set_bittiming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_leaf_set_bittiming(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.kvaser_usb_net_priv*, align 8
  %5 = alloca %struct.can_bittiming*, align 8
  %6 = alloca %struct.kvaser_usb*, align 8
  %7 = alloca %struct.kvaser_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.kvaser_usb_net_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.kvaser_usb_net_priv* %10, %struct.kvaser_usb_net_priv** %4, align 8
  %11 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %12 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  store %struct.can_bittiming* %13, %struct.can_bittiming** %5, align 8
  %14 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %15 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %14, i32 0, i32 2
  %16 = load %struct.kvaser_usb*, %struct.kvaser_usb** %15, align 8
  store %struct.kvaser_usb* %16, %struct.kvaser_usb** %6, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.kvaser_cmd* @kmalloc(i32 56, i32 %17)
  store %struct.kvaser_cmd* %18, %struct.kvaser_cmd** %7, align 8
  %19 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %20 = icmp ne %struct.kvaser_cmd* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %103

24:                                               ; preds = %1
  %25 = load i32, i32* @CMD_SET_BUS_PARAMS, align 4
  %26 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %27 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i64, i64* @CMD_HEADER_LEN, align 8
  %29 = add i64 %28, 4
  %30 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %33 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %36 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 6
  store i32 %34, i32* %38, align 8
  %39 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %40 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i32 255, i32* %42, align 8
  %43 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %44 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cpu_to_le32(i32 %45)
  %47 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %48 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 5
  store i32 %46, i32* %50, align 4
  %51 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %52 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 4
  store i32 %53, i32* %57, align 8
  %58 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %59 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %62 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %60, %63
  %65 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %66 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 3
  store i64 %64, i64* %68, align 8
  %69 = load %struct.can_bittiming*, %struct.can_bittiming** %5, align 8
  %70 = getelementptr inbounds %struct.can_bittiming, %struct.can_bittiming* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %73 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  store i32 %71, i32* %75, align 8
  %76 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %4, align 8
  %77 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @CAN_CTRLMODE_3_SAMPLES, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %24
  %84 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %85 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  store i32 3, i32* %87, align 4
  br label %93

88:                                               ; preds = %24
  %89 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %90 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.kvaser_usb*, %struct.kvaser_usb** %6, align 8
  %95 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %96 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %97 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @kvaser_usb_send_cmd(%struct.kvaser_usb* %94, %struct.kvaser_cmd* %95, i64 %98)
  store i32 %99, i32* %8, align 4
  %100 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %101 = call i32 @kfree(%struct.kvaser_cmd* %100)
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %93, %21
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.kvaser_usb_net_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.kvaser_cmd* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @kvaser_usb_send_cmd(%struct.kvaser_usb*, %struct.kvaser_cmd*, i64) #1

declare dso_local i32 @kfree(%struct.kvaser_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
