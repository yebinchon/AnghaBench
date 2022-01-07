; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_set_opt_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_set_opt_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb_net_priv = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.kvaser_cmd = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_SET_CTRL_MODE = common dso_local global i32 0, align 4
@CMD_HEADER_LEN = common dso_local global i64 0, align 8
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@KVASER_CTRL_MODE_SILENT = common dso_local global i32 0, align 4
@KVASER_CTRL_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb_net_priv*)* @kvaser_usb_leaf_set_opt_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_leaf_set_opt_mode(%struct.kvaser_usb_net_priv* %0) #0 {
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
  br label %63

13:                                               ; preds = %1
  %14 = load i32, i32* @CMD_SET_CTRL_MODE, align 4
  %15 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i64, i64* @CMD_HEADER_LEN, align 8
  %18 = add i64 %17, 4
  %19 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store i32 255, i32* %24, align 8
  %25 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %26 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  store i32 %27, i32* %31, align 8
  %32 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %33 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %13
  %40 = load i32, i32* @KVASER_CTRL_MODE_SILENT, align 4
  %41 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %42 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  br label %51

45:                                               ; preds = %13
  %46 = load i32, i32* @KVASER_CTRL_MODE_NORMAL, align 4
  %47 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %39
  %52 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %53 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %56 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %57 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @kvaser_usb_send_cmd(i32 %54, %struct.kvaser_cmd* %55, i64 %58)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %61 = call i32 @kfree(%struct.kvaser_cmd* %60)
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %51, %10
  %64 = load i32, i32* %2, align 4
  ret i32 %64
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
