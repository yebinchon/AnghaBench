; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_set_opt_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_set_opt_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb_net_priv = type { i64, %struct.TYPE_9__, i32, %struct.kvaser_usb* }
%struct.TYPE_9__ = type { i32 }
%struct.kvaser_usb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.kvaser_cmd = type { %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD_NON_ISO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"CTRLMODE_FD shall be on if CTRLMODE_FD_NON_ISO is on\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_SET_DRIVERMODE_REQ = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_CTRLMODE_LISTEN = common dso_local global i32 0, align 4
@KVASER_USB_HYDRA_CTRLMODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb_net_priv*)* @kvaser_usb_hydra_set_opt_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_hydra_set_opt_mode(%struct.kvaser_usb_net_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_usb_net_priv*, align 8
  %4 = alloca %struct.kvaser_usb*, align 8
  %5 = alloca %struct.kvaser_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.kvaser_usb_net_priv* %0, %struct.kvaser_usb_net_priv** %3, align 8
  %7 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %8 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %7, i32 0, i32 3
  %9 = load %struct.kvaser_usb*, %struct.kvaser_usb** %8, align 8
  store %struct.kvaser_usb* %9, %struct.kvaser_usb** %4, align 8
  %10 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %11 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %15 = load i32, i32* @CAN_CTRLMODE_FD_NON_ISO, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = load i32, i32* @CAN_CTRLMODE_FD_NON_ISO, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %22 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @netdev_warn(i32 %23, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %82

27:                                               ; preds = %1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.kvaser_cmd* @kcalloc(i32 1, i32 8, i32 %28)
  store %struct.kvaser_cmd* %29, %struct.kvaser_cmd** %5, align 8
  %30 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %5, align 8
  %31 = icmp ne %struct.kvaser_cmd* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %82

35:                                               ; preds = %27
  %36 = load i32, i32* @CMD_SET_DRIVERMODE_REQ, align 4
  %37 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %5, align 8
  %38 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %5, align 8
  %41 = load %struct.kvaser_usb*, %struct.kvaser_usb** %4, align 8
  %42 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %47 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @kvaser_usb_hydra_set_cmd_dest_he(%struct.kvaser_cmd* %40, i32 %50)
  %52 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %5, align 8
  %53 = load %struct.kvaser_usb*, %struct.kvaser_usb** %4, align 8
  %54 = call i32 @kvaser_usb_hydra_get_next_transid(%struct.kvaser_usb* %53)
  %55 = call i32 @kvaser_usb_hydra_set_cmd_transid(%struct.kvaser_cmd* %52, i32 %54)
  %56 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %3, align 8
  %57 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %35
  %64 = load i32, i32* @KVASER_USB_HYDRA_CTRLMODE_LISTEN, align 4
  %65 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %5, align 8
  %66 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  br label %73

68:                                               ; preds = %35
  %69 = load i32, i32* @KVASER_USB_HYDRA_CTRLMODE_NORMAL, align 4
  %70 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %5, align 8
  %71 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 4
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.kvaser_usb*, %struct.kvaser_usb** %4, align 8
  %75 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %5, align 8
  %76 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %5, align 8
  %77 = call i32 @kvaser_usb_hydra_cmd_size(%struct.kvaser_cmd* %76)
  %78 = call i32 @kvaser_usb_send_cmd(%struct.kvaser_usb* %74, %struct.kvaser_cmd* %75, i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %5, align 8
  %80 = call i32 @kfree(%struct.kvaser_cmd* %79)
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %73, %32, %20
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local %struct.kvaser_cmd* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kvaser_usb_hydra_set_cmd_dest_he(%struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_set_cmd_transid(%struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_get_next_transid(%struct.kvaser_usb*) #1

declare dso_local i32 @kvaser_usb_send_cmd(%struct.kvaser_usb*, %struct.kvaser_cmd*, i32) #1

declare dso_local i32 @kvaser_usb_hydra_cmd_size(%struct.kvaser_cmd*) #1

declare dso_local i32 @kfree(%struct.kvaser_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
