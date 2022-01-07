; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_flush_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_flush_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb_net_priv = type { i32, i32 }
%struct.kvaser_cmd = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_FLUSH_QUEUE = common dso_local global i32 0, align 4
@CMD_HEADER_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb_net_priv*)* @kvaser_usb_leaf_flush_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_leaf_flush_queue(%struct.kvaser_usb_net_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_usb_net_priv*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.kvaser_usb_net_priv* %0, %struct.kvaser_usb_net_priv** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.kvaser_cmd* @kmalloc(i32 24, i32 %6)
  store %struct.kvaser_cmd* %7, %struct.kvaser_cmd** %4, align 8
  %8 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %9 = icmp ne %struct.kvaser_cmd* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %43

13:                                               ; preds = %1
  %14 = load i32, i32* @CMD_FLUSH_QUEUE, align 4
  %15 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load i64, i64* @CMD_HEADER_LEN, align 8
  %18 = add i64 %17, 4
  %19 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %22 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %23, i32* %27, align 4
  %28 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 8
  %32 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %33 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %36 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @kvaser_usb_send_cmd(i32 %34, %struct.kvaser_cmd* %35, i64 %38)
  store i32 %39, i32* %5, align 4
  %40 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %41 = call i32 @kfree(%struct.kvaser_cmd* %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %13, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.kvaser_cmd* @kmalloc(i32, i32) #1

declare dso_local i32 @kvaser_usb_send_cmd(i32, %struct.kvaser_cmd*, i64) #1

declare dso_local i32 @kfree(%struct.kvaser_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
