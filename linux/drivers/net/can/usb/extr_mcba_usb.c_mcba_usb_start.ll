; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcba_priv = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.urb = type { i32, i32 }

@MCBA_MAX_RX_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MCBA_USB_RX_BUFF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No memory left for USB buffer\0A\00", align 1
@MCBA_USB_EP_IN = common dso_local global i32 0, align 4
@mcba_usb_read_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"couldn't setup read URBs\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"rx performance may be slow\0A\00", align 1
@MCBA_VER_REQ_USB = common dso_local global i32 0, align 4
@MCBA_VER_REQ_CAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcba_priv*)* @mcba_usb_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcba_usb_start(%struct.mcba_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mcba_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32*, align 8
  store %struct.mcba_priv* %0, %struct.mcba_priv** %3, align 8
  %9 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %10 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %9, i32 0, i32 2
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %13 = call i32 @mcba_init_ctx(%struct.mcba_priv* %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %90, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MCBA_MAX_RX_URBS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %93

18:                                               ; preds = %14
  store %struct.urb* null, %struct.urb** %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %19)
  store %struct.urb* %20, %struct.urb** %7, align 8
  %21 = load %struct.urb*, %struct.urb** %7, align 8
  %22 = icmp ne %struct.urb* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %93

26:                                               ; preds = %18
  %27 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %28 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @MCBA_USB_RX_BUFF_SIZE, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load %struct.urb*, %struct.urb** %7, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 0
  %34 = call i32* @usb_alloc_coherent(i32 %29, i32 %30, i32 %31, i32* %33)
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %26
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = call i32 @netdev_err(%struct.net_device* %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.urb*, %struct.urb** %7, align 8
  %41 = call i32 @usb_free_urb(%struct.urb* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %93

44:                                               ; preds = %26
  %45 = load %struct.urb*, %struct.urb** %7, align 8
  %46 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %47 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %50 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MCBA_USB_EP_IN, align 4
  %53 = call i32 @usb_rcvbulkpipe(i32 %51, i32 %52)
  %54 = load i32*, i32** %8, align 8
  %55 = load i32, i32* @MCBA_USB_RX_BUFF_SIZE, align 4
  %56 = load i32, i32* @mcba_usb_read_bulk_callback, align 4
  %57 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %58 = call i32 @usb_fill_bulk_urb(%struct.urb* %45, i32 %48, i32 %53, i32* %54, i32 %55, i32 %56, %struct.mcba_priv* %57)
  %59 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %60 = load %struct.urb*, %struct.urb** %7, align 8
  %61 = getelementptr inbounds %struct.urb, %struct.urb* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.urb*, %struct.urb** %7, align 8
  %65 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %66 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %65, i32 0, i32 1
  %67 = call i32 @usb_anchor_urb(%struct.urb* %64, i32* %66)
  %68 = load %struct.urb*, %struct.urb** %7, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i32 @usb_submit_urb(%struct.urb* %68, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %44
  %74 = load %struct.urb*, %struct.urb** %7, align 8
  %75 = call i32 @usb_unanchor_urb(%struct.urb* %74)
  %76 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %77 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @MCBA_USB_RX_BUFF_SIZE, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load %struct.urb*, %struct.urb** %7, align 8
  %82 = getelementptr inbounds %struct.urb, %struct.urb* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @usb_free_coherent(i32 %78, i32 %79, i32* %80, i32 %83)
  %85 = load %struct.urb*, %struct.urb** %7, align 8
  %86 = call i32 @usb_free_urb(%struct.urb* %85)
  br label %93

87:                                               ; preds = %44
  %88 = load %struct.urb*, %struct.urb** %7, align 8
  %89 = call i32 @usb_free_urb(%struct.urb* %88)
  br label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %14

93:                                               ; preds = %73, %37, %23, %14
  %94 = load i32, i32* %6, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.net_device*, %struct.net_device** %4, align 8
  %98 = call i32 @netdev_warn(%struct.net_device* %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %115

100:                                              ; preds = %93
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @MCBA_MAX_RX_URBS, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %100
  %105 = load %struct.net_device*, %struct.net_device** %4, align 8
  %106 = call i32 @netdev_warn(%struct.net_device* %105, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %100
  %108 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %109 = load i32, i32* @MCBA_VER_REQ_USB, align 4
  %110 = call i32 @mcba_usb_xmit_read_fw_ver(%struct.mcba_priv* %108, i32 %109)
  %111 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %112 = load i32, i32* @MCBA_VER_REQ_CAN, align 4
  %113 = call i32 @mcba_usb_xmit_read_fw_ver(%struct.mcba_priv* %111, i32 %112)
  %114 = load i32, i32* %5, align 4
  store i32 %114, i32* %2, align 4
  br label %115

115:                                              ; preds = %107, %96
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local i32 @mcba_init_ctx(%struct.mcba_priv*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.mcba_priv*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @mcba_usb_xmit_read_fw_ver(%struct.mcba_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
