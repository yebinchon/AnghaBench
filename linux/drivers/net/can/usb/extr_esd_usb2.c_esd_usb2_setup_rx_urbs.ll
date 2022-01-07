; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_setup_rx_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_esd_usb2.c_esd_usb2_setup_rx_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esd_usb2 = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.urb = type { i32, i32 }

@MAX_RX_URBS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No memory left for USB buffer\0A\00", align 1
@esd_usb2_read_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"couldn't setup read URBs\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"rx performance may be slow\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esd_usb2*)* @esd_usb2_setup_rx_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esd_usb2_setup_rx_urbs(%struct.esd_usb2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.esd_usb2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i32*, align 8
  store %struct.esd_usb2* %0, %struct.esd_usb2** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %9 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %125

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %95, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MAX_RX_URBS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %98

18:                                               ; preds = %14
  store %struct.urb* null, %struct.urb** %6, align 8
  store i32* null, i32** %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %19)
  store %struct.urb* %20, %struct.urb** %6, align 8
  %21 = load %struct.urb*, %struct.urb** %6, align 8
  %22 = icmp ne %struct.urb* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %98

26:                                               ; preds = %18
  %27 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %28 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %27, i32 0, i32 1
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = load i32, i32* @RX_BUFFER_SIZE, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = load %struct.urb*, %struct.urb** %6, align 8
  %33 = getelementptr inbounds %struct.urb, %struct.urb* %32, i32 0, i32 0
  %34 = call i32* @usb_alloc_coherent(%struct.TYPE_7__* %29, i32 %30, i32 %31, i32* %33)
  store i32* %34, i32** %7, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %47, label %37

37:                                               ; preds = %26
  %38 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %39 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_warn(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %88

47:                                               ; preds = %26
  %48 = load %struct.urb*, %struct.urb** %6, align 8
  %49 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %50 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %49, i32 0, i32 1
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %53 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = call i32 @usb_rcvbulkpipe(%struct.TYPE_7__* %54, i32 1)
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* @RX_BUFFER_SIZE, align 4
  %58 = load i32, i32* @esd_usb2_read_bulk_callback, align 4
  %59 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %60 = call i32 @usb_fill_bulk_urb(%struct.urb* %48, %struct.TYPE_7__* %51, i32 %55, i32* %56, i32 %57, i32 %58, %struct.esd_usb2* %59)
  %61 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %62 = load %struct.urb*, %struct.urb** %6, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.urb*, %struct.urb** %6, align 8
  %67 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %68 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %67, i32 0, i32 2
  %69 = call i32 @usb_anchor_urb(%struct.urb* %66, i32* %68)
  %70 = load %struct.urb*, %struct.urb** %6, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32 @usb_submit_urb(%struct.urb* %70, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %47
  %76 = load %struct.urb*, %struct.urb** %6, align 8
  %77 = call i32 @usb_unanchor_urb(%struct.urb* %76)
  %78 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %79 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = load i32, i32* @RX_BUFFER_SIZE, align 4
  %82 = load i32*, i32** %7, align 8
  %83 = load %struct.urb*, %struct.urb** %6, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @usb_free_coherent(%struct.TYPE_7__* %80, i32 %81, i32* %82, i32 %85)
  br label %87

87:                                               ; preds = %75, %47
  br label %88

88:                                               ; preds = %87, %37
  %89 = load %struct.urb*, %struct.urb** %6, align 8
  %90 = call i32 @usb_free_urb(%struct.urb* %89)
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %98

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %14

98:                                               ; preds = %93, %23, %14
  %99 = load i32, i32* %4, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %103 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @dev_err(i32 %107, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* %2, align 4
  br label %125

110:                                              ; preds = %98
  %111 = load i32, i32* %4, align 4
  %112 = load i32, i32* @MAX_RX_URBS, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %116 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %115, i32 0, i32 1
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dev_warn(i32 %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %122

122:                                              ; preds = %114, %110
  %123 = load %struct.esd_usb2*, %struct.esd_usb2** %3, align 8
  %124 = getelementptr inbounds %struct.esd_usb2, %struct.esd_usb2* %123, i32 0, i32 0
  store i32 1, i32* %124, align 8
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %122, %101, %12
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @usb_alloc_coherent(%struct.TYPE_7__*, i32, i32, i32*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.TYPE_7__*, i32, i32*, i32, i32, %struct.esd_usb2*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_free_coherent(%struct.TYPE_7__*, i32, i32*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
