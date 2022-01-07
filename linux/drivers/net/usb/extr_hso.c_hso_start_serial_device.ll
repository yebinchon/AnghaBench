; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_start_serial_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_start_serial_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { i32 }
%struct.hso_serial = type { i32, %struct.TYPE_8__*, i64, %struct.TYPE_10__*, i32*, i32, i32*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@HSO_INTF_MUX = common dso_local global i32 0, align 4
@hso_std_serial_read_bulk_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to submit urb - res %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hso_device*, i32)* @hso_start_serial_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_start_serial_device(%struct.hso_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hso_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hso_serial*, align 8
  store %struct.hso_device* %0, %struct.hso_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.hso_device*, %struct.hso_device** %4, align 8
  %10 = call %struct.hso_serial* @dev2ser(%struct.hso_device* %9)
  store %struct.hso_serial* %10, %struct.hso_serial** %8, align 8
  %11 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %12 = icmp ne %struct.hso_serial* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %146

16:                                               ; preds = %2
  %17 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %18 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @HSO_INTF_MUX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %95, label %25

25:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %91, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %29 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %94

32:                                               ; preds = %26
  %33 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %34 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %41 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %40, i32 0, i32 1
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %46 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %51 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %50, i32 0, i32 7
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 127
  %56 = call i32 @usb_rcvbulkpipe(%struct.TYPE_9__* %49, i32 %55)
  %57 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %58 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %57, i32 0, i32 6
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %65 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @hso_std_serial_read_bulk_callback, align 4
  %68 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %69 = call i32 @usb_fill_bulk_urb(i32 %39, %struct.TYPE_9__* %44, i32 %56, i32 %63, i32 %66, i32 %67, %struct.hso_serial* %68)
  %70 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %71 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @usb_submit_urb(i32 %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %32
  %82 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %83 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @dev_warn(i32* %87, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %94

90:                                               ; preds = %32
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %26

94:                                               ; preds = %81, %26
  br label %128

95:                                               ; preds = %16
  %96 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %97 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %96, i32 0, i32 3
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = call i32 @mutex_lock(i32* %99)
  %101 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %102 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %101, i32 0, i32 3
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %95
  %108 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %109 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %108, i32 0, i32 3
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = load %struct.hso_device*, %struct.hso_device** %4, align 8
  %112 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @hso_mux_submit_intr_urb(%struct.TYPE_10__* %110, i32 %113, i32 %114)
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %107, %95
  %117 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %118 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %117, i32 0, i32 3
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %124 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %123, i32 0, i32 3
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = call i32 @mutex_unlock(i32* %126)
  br label %128

128:                                              ; preds = %116, %94
  %129 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %130 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %128
  %134 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %135 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %136 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.hso_serial*, %struct.hso_serial** %8, align 8
  %139 = getelementptr inbounds %struct.hso_serial, %struct.hso_serial* %138, i32 0, i32 1
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = call i32 @tiocmget_submit_urb(%struct.hso_serial* %134, i64 %137, %struct.TYPE_9__* %142)
  br label %144

144:                                              ; preds = %133, %128
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %144, %13
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local %struct.hso_serial* @dev2ser(%struct.hso_device*) #1

declare dso_local i32 @usb_fill_bulk_urb(i32, %struct.TYPE_9__*, i32, i32, i32, i32, %struct.hso_serial*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @hso_mux_submit_intr_urb(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tiocmget_submit_urb(%struct.hso_serial*, i64, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
