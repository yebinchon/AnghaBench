; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_usb-urb.c_usb_allocate_stream_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_usb-urb.c_usb_allocate_stream_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_data_stream = type { i32, i64, i32, i32**, i64*, i32 }

@.str = private unnamed_addr constant [47 x i8] c"all in all I will use %lu bytes for streaming\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"allocating buffer %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"not enough memory for urb-buffer allocation.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"buffer %d: %p (dma: %Lu)\0A\00", align 1
@USB_STATE_URB_BUF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"allocation successful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_data_stream*, i32, i64)* @usb_allocate_stream_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_allocate_stream_buffers(%struct.usb_data_stream* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_data_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.usb_data_stream* %0, %struct.usb_data_stream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %8 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %9 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %12 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %11, i32 0, i32 1
  store i64 %10, i64* %12, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = load i64, i64* %7, align 8
  %16 = mul i64 %14, %15
  %17 = call i32 (i8*, ...) @deb_mem(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %19 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  br label %20

20:                                               ; preds = %99, %3
  %21 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %22 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %104

26:                                               ; preds = %20
  %27 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %28 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @deb_mem(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %32 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %37 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %36, i32 0, i32 4
  %38 = load i64*, i64** %37, align 8
  %39 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %40 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %38, i64 %42
  %44 = call i32* @usb_alloc_coherent(i32 %33, i64 %34, i32 %35, i64* %43)
  %45 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %46 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %45, i32 0, i32 3
  %47 = load i32**, i32*** %46, align 8
  %48 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %49 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %47, i64 %51
  store i32* %44, i32** %52, align 8
  %53 = icmp eq i32* %44, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %26
  %55 = call i32 (i8*, ...) @deb_mem(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %57 = call i32 @usb_free_stream_buffers(%struct.usb_data_stream* %56)
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %106

60:                                               ; preds = %26
  %61 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %62 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %65 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %64, i32 0, i32 3
  %66 = load i32**, i32*** %65, align 8
  %67 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %68 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %66, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %74 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %73, i32 0, i32 4
  %75 = load i64*, i64** %74, align 8
  %76 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %77 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %75, i64 %79
  %81 = load i64, i64* %80, align 8
  %82 = call i32 (i8*, ...) @deb_mem(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32* %72, i64 %81)
  %83 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %84 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %83, i32 0, i32 3
  %85 = load i32**, i32*** %84, align 8
  %86 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %87 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32*, i32** %85, i64 %89
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* %7, align 8
  %93 = call i32 @memset(i32* %91, i32 0, i64 %92)
  %94 = load i32, i32* @USB_STATE_URB_BUF, align 4
  %95 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %96 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %60
  %100 = load %struct.usb_data_stream*, %struct.usb_data_stream** %5, align 8
  %101 = getelementptr inbounds %struct.usb_data_stream, %struct.usb_data_stream* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  br label %20

104:                                              ; preds = %20
  %105 = call i32 (i8*, ...) @deb_mem(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %54
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @deb_mem(i8*, ...) #1

declare dso_local i32* @usb_alloc_coherent(i32, i64, i32, i64*) #1

declare dso_local i32 @usb_free_stream_buffers(%struct.usb_data_stream*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
