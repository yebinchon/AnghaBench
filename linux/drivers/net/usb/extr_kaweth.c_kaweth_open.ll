; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.kaweth_device = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_5__*, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Interface cannot be resumed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@INTBUFFERSIZE = common dso_local global i32 0, align 4
@int_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @kaweth_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kaweth_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.kaweth_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.kaweth_device* @netdev_priv(%struct.net_device* %6)
  store %struct.kaweth_device* %7, %struct.kaweth_device** %4, align 8
  %8 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %9 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = call i32 @usb_autopm_get_interface(%struct.TYPE_6__* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %16 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %15, i32 0, i32 1
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %87

22:                                               ; preds = %1
  %23 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %80

29:                                               ; preds = %22
  %30 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %31 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %30, i32 0, i32 3
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %34 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %37 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @usb_rcvintpipe(i32 %38, i32 3)
  %40 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %41 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @INTBUFFERSIZE, align 4
  %44 = load i32, i32* @int_callback, align 4
  %45 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %46 = call i32 @usb_fill_int_urb(%struct.TYPE_5__* %32, i32 %35, i32 %39, i32 %42, i32 %43, i32 %44, %struct.kaweth_device* %45, i32 250)
  %47 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %48 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %51 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %50, i32 0, i32 3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %55 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %56 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %55, i32 0, i32 3
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %54
  store i32 %60, i32* %58, align 4
  %61 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %62 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %61, i32 0, i32 3
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* @GFP_KERNEL, align 4
  %65 = call i32 @usb_submit_urb(%struct.TYPE_5__* %63, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %29
  %69 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %70 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @usb_kill_urb(i32 %71)
  br label %80

73:                                               ; preds = %29
  %74 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %75 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.net_device*, %struct.net_device** %3, align 8
  %77 = call i32 @netif_start_queue(%struct.net_device* %76)
  %78 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %79 = call i32 @kaweth_async_set_rx_mode(%struct.kaweth_device* %78)
  store i32 0, i32* %2, align 4
  br label %87

80:                                               ; preds = %68, %28
  %81 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %82 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = call i32 @usb_autopm_put_interface(%struct.TYPE_6__* %83)
  %85 = load i32, i32* @EIO, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %80, %73, %14
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.kaweth_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device*, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.TYPE_5__*, i32, i32, i32, i32, i32, %struct.kaweth_device*, i32) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @kaweth_async_set_rx_mode(%struct.kaweth_device*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
