; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_v_complete_handle_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_v_complete_handle_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxusb_medion_dev = type { i32, i32, i32, %struct.urb**, %struct.dvb_usb_device* }
%struct.urb = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.dvb_usb_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@CXUSB_VIDEO_URBS = common dso_local global i32 0, align 4
@URB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"URB %u status = %d\0A\00", align 1
@EXDEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"URB %u data len = %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"appending URB\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"URB %u resubmit\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [66 x i8] c"unable to resubmit URB %u (%d), you'll have to restart streaming\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxusb_medion_dev*, i32*)* @cxusb_medion_v_complete_handle_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_v_complete_handle_urb(%struct.cxusb_medion_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cxusb_medion_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.cxusb_medion_dev* %0, %struct.cxusb_medion_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %13 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %12, i32 0, i32 4
  %14 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %13, align 8
  store %struct.dvb_usb_device* %14, %struct.dvb_usb_device** %6, align 8
  %15 = load i32*, i32** %5, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %17 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %21 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %20, i32 0, i32 1
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %147

25:                                               ; preds = %2
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %28 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %27, i32 0, i32 1
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  br label %30

30:                                               ; preds = %49, %25
  %31 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %32 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add i32 %33, 1
  store i32 %34, i32* %32, align 8
  %35 = load i32, i32* @CXUSB_VIDEO_URBS, align 4
  %36 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %37 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = urem i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %41 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %40, i32 0, i32 3
  %42 = load %struct.urb**, %struct.urb*** %41, align 8
  %43 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %44 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.urb*, %struct.urb** %42, i64 %46
  %48 = load %struct.urb*, %struct.urb** %47, align 8
  store %struct.urb* %48, %struct.urb** %8, align 8
  br label %49

49:                                               ; preds = %30
  %50 = load %struct.urb*, %struct.urb** %8, align 8
  %51 = icmp ne %struct.urb* %50, null
  %52 = xor i1 %51, true
  br i1 %52, label %30, label %53

53:                                               ; preds = %49
  %54 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %55 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %54, i32 0, i32 3
  %56 = load %struct.urb**, %struct.urb*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.urb*, %struct.urb** %56, i64 %58
  %60 = load %struct.urb*, %struct.urb** %59, align 8
  store %struct.urb* %60, %struct.urb** %8, align 8
  %61 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %62 = load i32, i32* @URB, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.urb*, %struct.urb** %8, align 8
  %65 = getelementptr inbounds %struct.urb, %struct.urb* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (%struct.dvb_usb_device*, i32, i8*, ...) @cxusb_vprintk(%struct.dvb_usb_device* %61, i32 %62, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %66)
  %68 = load %struct.urb*, %struct.urb** %8, align 8
  %69 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %53
  %73 = load %struct.urb*, %struct.urb** %8, align 8
  %74 = getelementptr inbounds %struct.urb, %struct.urb* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @EXDEV, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %122

79:                                               ; preds = %72, %53
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %80

80:                                               ; preds = %97, %79
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.urb*, %struct.urb** %8, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %80
  %87 = load %struct.urb*, %struct.urb** %8, align 8
  %88 = getelementptr inbounds %struct.urb, %struct.urb* %87, i32 0, i32 1
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %11, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %11, align 8
  br label %97

97:                                               ; preds = %86
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %80

100:                                              ; preds = %80
  %101 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %102 = load i32, i32* @URB, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i64, i64* %11, align 8
  %105 = call i32 (%struct.dvb_usb_device*, i32, i8*, ...) @cxusb_vprintk(%struct.dvb_usb_device* %101, i32 %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %103, i64 %104)
  %106 = load i64, i64* %11, align 8
  %107 = icmp ugt i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %100
  %109 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %110 = load i32, i32* @URB, align 4
  %111 = call i32 (%struct.dvb_usb_device*, i32, i8*, ...) @cxusb_vprintk(%struct.dvb_usb_device* %109, i32 %110, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %112 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %113 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %114 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %113, i32 0, i32 2
  %115 = load %struct.urb*, %struct.urb** %8, align 8
  %116 = call i32 @cxusb_auxbuf_append_urb(%struct.dvb_usb_device* %112, i32* %114, %struct.urb* %115)
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = load i32*, i32** %5, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %108, %100
  br label %122

122:                                              ; preds = %121, %72
  %123 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %124 = load i32, i32* @URB, align 4
  %125 = load i32, i32* %7, align 4
  %126 = call i32 (%struct.dvb_usb_device*, i32, i8*, ...) @cxusb_vprintk(%struct.dvb_usb_device* %123, i32 %124, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %125)
  %127 = load %struct.urb*, %struct.urb** %8, align 8
  %128 = load i32, i32* @GFP_KERNEL, align 4
  %129 = call i32 @usb_submit_urb(%struct.urb* %127, i32 %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %122
  %133 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %134 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %133, i32 0, i32 0
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @dev_err(i32* %136, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.4, i64 0, i64 0), i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %132, %122
  %141 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %142 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %4, align 8
  %145 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %144, i32 0, i32 1
  %146 = call i32 @test_bit(i32 %143, i32* %145)
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %140, %24
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*, ...) #1

declare dso_local i32 @cxusb_auxbuf_append_urb(%struct.dvb_usb_device*, i32*, %struct.urb*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
