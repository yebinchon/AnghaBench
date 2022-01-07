; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_usb_urb.c_usb_urb_initv2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_usb_urb.c_usb_urb_initv2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_data_stream = type { %struct.TYPE_9__*, %struct.TYPE_10__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.usb_data_stream_properties = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"%s: there is no data callback - this doesn't make sense\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: unknown urb-type for data transfer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_urb_initv2(%struct.usb_data_stream* %0, %struct.usb_data_stream_properties* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_data_stream*, align 8
  %5 = alloca %struct.usb_data_stream_properties*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_data_stream* %0, %struct.usb_data_stream** %4, align 8
  store %struct.usb_data_stream_properties* %1, %struct.usb_data_stream_properties** %5, align 8
  %7 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %8 = icmp ne %struct.usb_data_stream* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.usb_data_stream_properties*, %struct.usb_data_stream_properties** %5, align 8
  %11 = icmp ne %struct.usb_data_stream_properties* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %94

15:                                               ; preds = %9
  %16 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %17 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %16, i32 0, i32 1
  %18 = load %struct.usb_data_stream_properties*, %struct.usb_data_stream_properties** %5, align 8
  %19 = call i32 @memcpy(%struct.TYPE_10__* %17, %struct.usb_data_stream_properties* %18, i32 4)
  %20 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %21 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %15
  %25 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %26 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* @KBUILD_MODNAME, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %94

33:                                               ; preds = %15
  %34 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %35 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %85 [
    i32 129, label %38
    i32 128, label %58
  ]

38:                                               ; preds = %33
  %39 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %40 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %41 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %45 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @usb_alloc_stream_buffers(%struct.usb_data_stream* %39, i32 %43, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %94

55:                                               ; preds = %38
  %56 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %57 = call i32 @usb_urb_alloc_bulk_urbs(%struct.usb_data_stream* %56)
  store i32 %57, i32* %3, align 4
  br label %94

58:                                               ; preds = %33
  %59 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %60 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %61 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %65 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %71 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %69, %75
  %77 = call i32 @usb_alloc_stream_buffers(%struct.usb_data_stream* %59, i32 %63, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %58
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %94

82:                                               ; preds = %58
  %83 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %84 = call i32 @usb_urb_alloc_isoc_urbs(%struct.usb_data_stream* %83)
  store i32 %84, i32* %3, align 4
  br label %94

85:                                               ; preds = %33
  %86 = load %struct.usb_data_stream*, %struct.usb_data_stream** %4, align 8
  %87 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %86, i32 0, i32 0
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* @KBUILD_MODNAME, align 4
  %91 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %85, %82, %80, %55, %53, %24, %12
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @memcpy(%struct.TYPE_10__*, %struct.usb_data_stream_properties*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_alloc_stream_buffers(%struct.usb_data_stream*, i32, i32) #1

declare dso_local i32 @usb_urb_alloc_bulk_urbs(%struct.usb_data_stream*) #1

declare dso_local i32 @usb_urb_alloc_isoc_urbs(%struct.usb_data_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
