; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_usb_8dev.c_usb_8dev_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_8dev_priv = type { %struct.net_device*, %struct.TYPE_2__, i32, i32 }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32, i32 }

@MAX_RX_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No memory left for USB buffer\0A\00", align 1
@USB_8DEV_ENDP_DATA_RX = common dso_local global i32 0, align 4
@usb_8dev_read_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"couldn't setup read URBs\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"rx performance may be slow\0A\00", align 1
@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"couldn't submit control: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_8dev_priv*)* @usb_8dev_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_8dev_start(%struct.usb_8dev_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_8dev_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32*, align 8
  store %struct.usb_8dev_priv* %0, %struct.usb_8dev_priv** %3, align 8
  %9 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %10 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %88, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @MAX_RX_URBS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %91

16:                                               ; preds = %12
  store %struct.urb* null, %struct.urb** %7, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %17)
  store %struct.urb* %18, %struct.urb** %7, align 8
  %19 = load %struct.urb*, %struct.urb** %7, align 8
  %20 = icmp ne %struct.urb* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %91

24:                                               ; preds = %16
  %25 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %26 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @RX_BUFFER_SIZE, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = load %struct.urb*, %struct.urb** %7, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 0
  %32 = call i32* @usb_alloc_coherent(i32 %27, i32 %28, i32 %29, i32* %31)
  store i32* %32, i32** %8, align 8
  %33 = load i32*, i32** %8, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %24
  %36 = load %struct.net_device*, %struct.net_device** %4, align 8
  %37 = call i32 @netdev_err(%struct.net_device* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.urb*, %struct.urb** %7, align 8
  %39 = call i32 @usb_free_urb(%struct.urb* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %91

42:                                               ; preds = %24
  %43 = load %struct.urb*, %struct.urb** %7, align 8
  %44 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %45 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %48 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @USB_8DEV_ENDP_DATA_RX, align 4
  %51 = call i32 @usb_rcvbulkpipe(i32 %49, i32 %50)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32, i32* @RX_BUFFER_SIZE, align 4
  %54 = load i32, i32* @usb_8dev_read_bulk_callback, align 4
  %55 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %56 = call i32 @usb_fill_bulk_urb(%struct.urb* %43, i32 %46, i32 %51, i32* %52, i32 %53, i32 %54, %struct.usb_8dev_priv* %55)
  %57 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %58 = load %struct.urb*, %struct.urb** %7, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.urb*, %struct.urb** %7, align 8
  %63 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %64 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %63, i32 0, i32 3
  %65 = call i32 @usb_anchor_urb(%struct.urb* %62, i32* %64)
  %66 = load %struct.urb*, %struct.urb** %7, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i32 @usb_submit_urb(%struct.urb* %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %42
  %72 = load %struct.urb*, %struct.urb** %7, align 8
  %73 = call i32 @usb_unanchor_urb(%struct.urb* %72)
  %74 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %75 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @RX_BUFFER_SIZE, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = load %struct.urb*, %struct.urb** %7, align 8
  %80 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @usb_free_coherent(i32 %76, i32 %77, i32* %78, i32 %81)
  %83 = load %struct.urb*, %struct.urb** %7, align 8
  %84 = call i32 @usb_free_urb(%struct.urb* %83)
  br label %91

85:                                               ; preds = %42
  %86 = load %struct.urb*, %struct.urb** %7, align 8
  %87 = call i32 @usb_free_urb(%struct.urb* %86)
  br label %88

88:                                               ; preds = %85
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %12

91:                                               ; preds = %71, %35, %21, %12
  %92 = load i32, i32* %6, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %95, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %131

98:                                               ; preds = %91
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @MAX_RX_URBS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.net_device*, %struct.net_device** %4, align 8
  %104 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %103, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %98
  %106 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %107 = call i32 @usb_8dev_cmd_open(%struct.usb_8dev_priv* %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %116

111:                                              ; preds = %105
  %112 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %113 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %114 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i32 %112, i32* %115, align 8
  store i32 0, i32* %2, align 4
  br label %131

116:                                              ; preds = %110
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @ENODEV, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.usb_8dev_priv*, %struct.usb_8dev_priv** %3, align 8
  %123 = getelementptr inbounds %struct.usb_8dev_priv, %struct.usb_8dev_priv* %122, i32 0, i32 0
  %124 = load %struct.net_device*, %struct.net_device** %123, align 8
  %125 = call i32 @netif_device_detach(%struct.net_device* %124)
  br label %126

126:                                              ; preds = %121, %116
  %127 = load %struct.net_device*, %struct.net_device** %4, align 8
  %128 = load i32, i32* %5, align 4
  %129 = call i32 (%struct.net_device*, i8*, ...) @netdev_warn(%struct.net_device* %127, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %126, %111, %94
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.usb_8dev_priv*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @usb_8dev_cmd_open(%struct.usb_8dev_priv*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
