; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_alloc_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hackrf/extr_hackrf.c_hackrf_alloc_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hackrf_dev = type { i32, i32*, %struct.TYPE_4__**, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@hackrf_urb_complete_in = common dso_local global i32 0, align 4
@hackrf_urb_complete_out = common dso_local global i32 0, align 4
@MAX_BULK_BUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"alloc urb=%d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BULK_BUFFER_SIZE = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hackrf_dev*, i32)* @hackrf_alloc_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hackrf_alloc_urbs(%struct.hackrf_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hackrf_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.hackrf_dev* %0, %struct.hackrf_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.hackrf_dev*, %struct.hackrf_dev** %4, align 8
  %14 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @usb_rcvbulkpipe(i32 %15, i32 129)
  store i32 %16, i32* %8, align 4
  store i32* @hackrf_urb_complete_in, i32** %9, align 8
  br label %22

17:                                               ; preds = %2
  %18 = load %struct.hackrf_dev*, %struct.hackrf_dev** %4, align 8
  %19 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @usb_sndbulkpipe(i32 %20, i32 2)
  store i32 %21, i32* %8, align 4
  store i32* @hackrf_urb_complete_out, i32** %9, align 8
  br label %22

22:                                               ; preds = %17, %12
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %120, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MAX_BULK_BUFS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %123

27:                                               ; preds = %23
  %28 = load %struct.hackrf_dev*, %struct.hackrf_dev** %4, align 8
  %29 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.TYPE_4__* @usb_alloc_urb(i32 0, i32 %33)
  %35 = load %struct.hackrf_dev*, %struct.hackrf_dev** %4, align 8
  %36 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %39
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %40, align 8
  %41 = load %struct.hackrf_dev*, %struct.hackrf_dev** %4, align 8
  %42 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %42, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %43, i64 %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %69, label %49

49:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %63, %49
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load %struct.hackrf_dev*, %struct.hackrf_dev** %4, align 8
  %56 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %57, i64 %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = call i32 @usb_free_urb(%struct.TYPE_4__* %61)
  br label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %50

66:                                               ; preds = %50
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %124

69:                                               ; preds = %27
  %70 = load %struct.hackrf_dev*, %struct.hackrf_dev** %4, align 8
  %71 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %70, i32 0, i32 2
  %72 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %72, i64 %74
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load %struct.hackrf_dev*, %struct.hackrf_dev** %4, align 8
  %78 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.hackrf_dev*, %struct.hackrf_dev** %4, align 8
  %82 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @BULK_BUFFER_SIZE, align 4
  %89 = load i32*, i32** %9, align 8
  %90 = load %struct.hackrf_dev*, %struct.hackrf_dev** %4, align 8
  %91 = call i32 @usb_fill_bulk_urb(%struct.TYPE_4__* %76, i32 %79, i32 %80, i32 %87, i32 %88, i32* %89, %struct.hackrf_dev* %90)
  %92 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %93 = load %struct.hackrf_dev*, %struct.hackrf_dev** %4, align 8
  %94 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %95, i64 %97
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  store i32 %92, i32* %100, align 4
  %101 = load %struct.hackrf_dev*, %struct.hackrf_dev** %4, align 8
  %102 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.hackrf_dev*, %struct.hackrf_dev** %4, align 8
  %109 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %110, i64 %112
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  store i32 %107, i32* %115, align 4
  %116 = load %struct.hackrf_dev*, %struct.hackrf_dev** %4, align 8
  %117 = getelementptr inbounds %struct.hackrf_dev, %struct.hackrf_dev* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %69
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %23

123:                                              ; preds = %23
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %66
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_4__*, i32, i32, i32, i32, i32*, %struct.hackrf_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
