; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcba_priv = type { i32, i32, i32 }
%struct.mcba_usb_msg = type { i32 }
%struct.mcba_usb_ctx = type { i32 }
%struct.urb = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MCBA_USB_TX_BUFF_SIZE = common dso_local global i32 0, align 4
@MCBA_USB_EP_OUT = common dso_local global i32 0, align 4
@mcba_usb_write_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"failed tx_urb %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcba_priv*, %struct.mcba_usb_msg*, %struct.mcba_usb_ctx*)* @mcba_usb_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcba_usb_xmit(%struct.mcba_priv* %0, %struct.mcba_usb_msg* %1, %struct.mcba_usb_ctx* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mcba_priv*, align 8
  %6 = alloca %struct.mcba_usb_msg*, align 8
  %7 = alloca %struct.mcba_usb_ctx*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.mcba_priv* %0, %struct.mcba_priv** %5, align 8
  store %struct.mcba_usb_msg* %1, %struct.mcba_usb_msg** %6, align 8
  store %struct.mcba_usb_ctx* %2, %struct.mcba_usb_ctx** %7, align 8
  %11 = load i32, i32* @GFP_ATOMIC, align 4
  %12 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %11)
  store %struct.urb* %12, %struct.urb** %8, align 8
  %13 = load %struct.urb*, %struct.urb** %8, align 8
  %14 = icmp ne %struct.urb* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %102

18:                                               ; preds = %3
  %19 = load %struct.mcba_priv*, %struct.mcba_priv** %5, align 8
  %20 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MCBA_USB_TX_BUFF_SIZE, align 4
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = load %struct.urb*, %struct.urb** %8, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 0
  %26 = call i32* @usb_alloc_coherent(i32 %21, i32 %22, i32 %23, i32* %25)
  store i32* %26, i32** %9, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %18
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %10, align 4
  br label %98

32:                                               ; preds = %18
  %33 = load i32*, i32** %9, align 8
  %34 = load %struct.mcba_usb_msg*, %struct.mcba_usb_msg** %6, align 8
  %35 = load i32, i32* @MCBA_USB_TX_BUFF_SIZE, align 4
  %36 = call i32 @memcpy(i32* %33, %struct.mcba_usb_msg* %34, i32 %35)
  %37 = load %struct.urb*, %struct.urb** %8, align 8
  %38 = load %struct.mcba_priv*, %struct.mcba_priv** %5, align 8
  %39 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mcba_priv*, %struct.mcba_priv** %5, align 8
  %42 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MCBA_USB_EP_OUT, align 4
  %45 = call i32 @usb_sndbulkpipe(i32 %43, i32 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @MCBA_USB_TX_BUFF_SIZE, align 4
  %48 = load i32, i32* @mcba_usb_write_bulk_callback, align 4
  %49 = load %struct.mcba_usb_ctx*, %struct.mcba_usb_ctx** %7, align 8
  %50 = call i32 @usb_fill_bulk_urb(%struct.urb* %37, i32 %40, i32 %45, i32* %46, i32 %47, i32 %48, %struct.mcba_usb_ctx* %49)
  %51 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %52 = load %struct.urb*, %struct.urb** %8, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.urb*, %struct.urb** %8, align 8
  %57 = load %struct.mcba_priv*, %struct.mcba_priv** %5, align 8
  %58 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %57, i32 0, i32 2
  %59 = call i32 @usb_anchor_urb(%struct.urb* %56, i32* %58)
  %60 = load %struct.urb*, %struct.urb** %8, align 8
  %61 = load i32, i32* @GFP_ATOMIC, align 4
  %62 = call i32 @usb_submit_urb(%struct.urb* %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %32
  br label %70

67:                                               ; preds = %32
  %68 = load %struct.urb*, %struct.urb** %8, align 8
  %69 = call i32 @usb_free_urb(%struct.urb* %68)
  store i32 0, i32* %4, align 4
  br label %102

70:                                               ; preds = %66
  %71 = load %struct.urb*, %struct.urb** %8, align 8
  %72 = call i32 @usb_unanchor_urb(%struct.urb* %71)
  %73 = load %struct.mcba_priv*, %struct.mcba_priv** %5, align 8
  %74 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @MCBA_USB_TX_BUFF_SIZE, align 4
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.urb*, %struct.urb** %8, align 8
  %79 = getelementptr inbounds %struct.urb, %struct.urb* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @usb_free_coherent(i32 %75, i32 %76, i32* %77, i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %70
  %87 = load %struct.mcba_priv*, %struct.mcba_priv** %5, align 8
  %88 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @netif_device_detach(i32 %89)
  br label %97

91:                                               ; preds = %70
  %92 = load %struct.mcba_priv*, %struct.mcba_priv** %5, align 8
  %93 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @netdev_warn(i32 %94, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %91, %86
  br label %98

98:                                               ; preds = %97, %29
  %99 = load %struct.urb*, %struct.urb** %8, align 8
  %100 = call i32 @usb_free_urb(%struct.urb* %99)
  %101 = load i32, i32* %10, align 4
  store i32 %101, i32* %4, align 4
  br label %102

102:                                              ; preds = %98, %67, %15
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.mcba_usb_msg*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.mcba_usb_ctx*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
