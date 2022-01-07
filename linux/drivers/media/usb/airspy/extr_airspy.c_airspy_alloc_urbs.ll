; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_alloc_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_alloc_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airspy = type { i32, i32*, %struct.TYPE_4__**, i32*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MAX_BULK_BUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"alloc urb=%d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BULK_BUFFER_SIZE = common dso_local global i32 0, align 4
@airspy_urb_complete = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airspy*)* @airspy_alloc_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @airspy_alloc_urbs(%struct.airspy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.airspy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.airspy* %0, %struct.airspy** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %106, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MAX_BULK_BUFS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %109

10:                                               ; preds = %6
  %11 = load %struct.airspy*, %struct.airspy** %3, align 8
  %12 = getelementptr inbounds %struct.airspy, %struct.airspy* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.TYPE_4__* @usb_alloc_urb(i32 0, i32 %16)
  %18 = load %struct.airspy*, %struct.airspy** %3, align 8
  %19 = getelementptr inbounds %struct.airspy, %struct.airspy* %18, i32 0, i32 2
  %20 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %20, i64 %22
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %23, align 8
  %24 = load %struct.airspy*, %struct.airspy** %3, align 8
  %25 = getelementptr inbounds %struct.airspy, %struct.airspy* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 %28
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %52, label %32

32:                                               ; preds = %10
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.airspy*, %struct.airspy** %3, align 8
  %39 = getelementptr inbounds %struct.airspy, %struct.airspy* %38, i32 0, i32 2
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i32 @usb_free_urb(%struct.TYPE_4__* %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %33

49:                                               ; preds = %33
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %110

52:                                               ; preds = %10
  %53 = load %struct.airspy*, %struct.airspy** %3, align 8
  %54 = getelementptr inbounds %struct.airspy, %struct.airspy* %53, i32 0, i32 2
  %55 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %55, i64 %57
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = load %struct.airspy*, %struct.airspy** %3, align 8
  %61 = getelementptr inbounds %struct.airspy, %struct.airspy* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.airspy*, %struct.airspy** %3, align 8
  %64 = getelementptr inbounds %struct.airspy, %struct.airspy* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @usb_rcvbulkpipe(i32 %65, i32 129)
  %67 = load %struct.airspy*, %struct.airspy** %3, align 8
  %68 = getelementptr inbounds %struct.airspy, %struct.airspy* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BULK_BUFFER_SIZE, align 4
  %75 = load i32, i32* @airspy_urb_complete, align 4
  %76 = load %struct.airspy*, %struct.airspy** %3, align 8
  %77 = call i32 @usb_fill_bulk_urb(%struct.TYPE_4__* %59, i32 %62, i32 %66, i32 %73, i32 %74, i32 %75, %struct.airspy* %76)
  %78 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %79 = load %struct.airspy*, %struct.airspy** %3, align 8
  %80 = getelementptr inbounds %struct.airspy, %struct.airspy* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %80, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %81, i64 %83
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 %78, i32* %86, align 4
  %87 = load %struct.airspy*, %struct.airspy** %3, align 8
  %88 = getelementptr inbounds %struct.airspy, %struct.airspy* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.airspy*, %struct.airspy** %3, align 8
  %95 = getelementptr inbounds %struct.airspy, %struct.airspy* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %96, i64 %98
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %93, i32* %101, align 4
  %102 = load %struct.airspy*, %struct.airspy** %3, align 8
  %103 = getelementptr inbounds %struct.airspy, %struct.airspy* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %52
  %107 = load i32, i32* %4, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %4, align 4
  br label %6

109:                                              ; preds = %6
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %49
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local %struct.TYPE_4__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_4__*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_4__*, i32, i32, i32, i32, i32, %struct.airspy*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
