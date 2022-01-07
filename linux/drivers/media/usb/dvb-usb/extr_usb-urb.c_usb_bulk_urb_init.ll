; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_usb-urb.c_usb_bulk_urb_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_usb-urb.c_usb_bulk_urb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_data_stream = type { i32, i32*, %struct.TYPE_10__**, %struct.TYPE_9__, i32*, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"not enough memory for urb_alloc_urb!.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@usb_urb_complete = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_data_stream*)* @usb_bulk_urb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_bulk_urb_init(%struct.usb_data_stream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_data_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usb_data_stream* %0, %struct.usb_data_stream** %3, align 8
  %6 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %7 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %8 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %12 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @usb_allocate_stream_buffers(%struct.usb_data_stream* %6, i32 %10, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %134

21:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %130, %21
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %25 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %133

29:                                               ; preds = %22
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call %struct.TYPE_10__* @usb_alloc_urb(i32 0, i32 %30)
  %32 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %33 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %32, i32 0, i32 2
  %34 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %34, i64 %36
  store %struct.TYPE_10__* %31, %struct.TYPE_10__** %37, align 8
  %38 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %39 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %38, i32 0, i32 2
  %40 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %40, i64 %42
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %67, label %46

46:                                               ; preds = %29
  %47 = call i32 @deb_mem(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %61, %46
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %54 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %53, i32 0, i32 2
  %55 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %55, i64 %57
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = call i32 @usb_free_urb(%struct.TYPE_10__* %59)
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %48

64:                                               ; preds = %48
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %134

67:                                               ; preds = %29
  %68 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %69 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %68, i32 0, i32 2
  %70 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %70, i64 %72
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %76 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %79 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %82 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @usb_rcvbulkpipe(i32 %80, i32 %84)
  %86 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %87 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %94 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @usb_urb_complete, align 4
  %100 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %101 = call i32 @usb_fill_bulk_urb(%struct.TYPE_10__* %74, i32 %77, i32 %85, i32 %92, i32 %98, i32 %99, %struct.usb_data_stream* %100)
  %102 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %103 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %104 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %103, i32 0, i32 2
  %105 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %104, align 8
  %106 = load i32, i32* %4, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %105, i64 %107
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  store i32 %102, i32* %110, align 4
  %111 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %112 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %119 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %118, i32 0, i32 2
  %120 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %119, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %120, i64 %122
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  store i32 %117, i32* %125, align 4
  %126 = load %struct.usb_data_stream*, %struct.usb_data_stream** %3, align 8
  %127 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %67
  %131 = load i32, i32* %4, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %4, align 4
  br label %22

133:                                              ; preds = %22
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %64, %19
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @usb_allocate_stream_buffers(%struct.usb_data_stream*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @deb_mem(i8*) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_10__*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_10__*, i32, i32, i32, i32, i32, %struct.usb_data_stream*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
