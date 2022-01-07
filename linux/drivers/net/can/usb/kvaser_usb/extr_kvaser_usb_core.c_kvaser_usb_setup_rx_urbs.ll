; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_setup_rx_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_setup_rx_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i32, %struct.TYPE_4__*, i8**, i32**, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.urb = type { i32, i8* }

@KVASER_USB_MAX_RX_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KVASER_USB_RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No memory left for USB buffer\0A\00", align 1
@kvaser_usb_read_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot setup read URBs, error %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"RX performances may be slow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb*)* @kvaser_usb_setup_rx_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_setup_rx_urbs(%struct.kvaser_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %10 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %139

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %111, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @KVASER_USB_MAX_RX_URBS, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %114

19:                                               ; preds = %15
  store %struct.urb* null, %struct.urb** %6, align 8
  store i32* null, i32** %7, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %20)
  store %struct.urb* %21, %struct.urb** %6, align 8
  %22 = load %struct.urb*, %struct.urb** %6, align 8
  %23 = icmp ne %struct.urb* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %114

27:                                               ; preds = %19
  %28 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %29 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @KVASER_USB_RX_BUFFER_SIZE, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call i32* @usb_alloc_coherent(i32 %30, i32 %31, i32 %32, i8** %8)
  store i32* %33, i32** %7, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %27
  %37 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %38 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 (i32*, i8*, ...) @dev_warn(i32* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.urb*, %struct.urb** %6, align 8
  %43 = call i32 @usb_free_urb(%struct.urb* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %114

46:                                               ; preds = %27
  %47 = load %struct.urb*, %struct.urb** %6, align 8
  %48 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %49 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %52 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %55 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %54, i32 0, i32 6
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @usb_rcvbulkpipe(i32 %53, i32 %58)
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* @KVASER_USB_RX_BUFFER_SIZE, align 4
  %62 = load i32, i32* @kvaser_usb_read_bulk_callback, align 4
  %63 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %64 = call i32 @usb_fill_bulk_urb(%struct.urb* %47, i32 %50, i32 %59, i32* %60, i32 %61, i32 %62, %struct.kvaser_usb* %63)
  %65 = load i8*, i8** %8, align 8
  %66 = load %struct.urb*, %struct.urb** %6, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %69 = load %struct.urb*, %struct.urb** %6, align 8
  %70 = getelementptr inbounds %struct.urb, %struct.urb* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.urb*, %struct.urb** %6, align 8
  %74 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %75 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %74, i32 0, i32 5
  %76 = call i32 @usb_anchor_urb(%struct.urb* %73, i32* %75)
  %77 = load %struct.urb*, %struct.urb** %6, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32 @usb_submit_urb(%struct.urb* %77, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %94

82:                                               ; preds = %46
  %83 = load %struct.urb*, %struct.urb** %6, align 8
  %84 = call i32 @usb_unanchor_urb(%struct.urb* %83)
  %85 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %86 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @KVASER_USB_RX_BUFFER_SIZE, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @usb_free_coherent(i32 %87, i32 %88, i32* %89, i8* %90)
  %92 = load %struct.urb*, %struct.urb** %6, align 8
  %93 = call i32 @usb_free_urb(%struct.urb* %92)
  br label %114

94:                                               ; preds = %46
  %95 = load i32*, i32** %7, align 8
  %96 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %97 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %96, i32 0, i32 3
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  store i32* %95, i32** %101, align 8
  %102 = load i8*, i8** %8, align 8
  %103 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %104 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %103, i32 0, i32 2
  %105 = load i8**, i8*** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %105, i64 %107
  store i8* %102, i8** %108, align 8
  %109 = load %struct.urb*, %struct.urb** %6, align 8
  %110 = call i32 @usb_free_urb(%struct.urb* %109)
  br label %111

111:                                              ; preds = %94
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %15

114:                                              ; preds = %82, %36, %24, %15
  %115 = load i32, i32* %4, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %114
  %118 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %119 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %118, i32 0, i32 1
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %5, align 4
  %123 = call i32 (i32*, i8*, ...) @dev_warn(i32* %121, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %5, align 4
  store i32 %124, i32* %2, align 4
  br label %139

125:                                              ; preds = %114
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* @KVASER_USB_MAX_RX_URBS, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %131 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %130, i32 0, i32 1
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = call i32 (i32*, i8*, ...) @dev_warn(i32* %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %135

135:                                              ; preds = %129, %125
  br label %136

136:                                              ; preds = %135
  %137 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %138 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %137, i32 0, i32 0
  store i32 1, i32* %138, align 8
  store i32 0, i32* %2, align 4
  br label %139

139:                                              ; preds = %136, %117, %13
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @usb_alloc_coherent(i32, i32, i32, i8**) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.kvaser_usb*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_coherent(i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
