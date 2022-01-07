; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_stats_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_stats_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [61 x i8] c"frames:  %u\0Apackets: %u\0Aempty:   %u\0Aerrors:  %u\0Ainvalid: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"pts: %u early, %u initial, %u ok\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"scr: %u count ok, %u diff ok\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"sof: %u <= sof <= %u, freq %u.%03u kHz\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @uvc_video_stats_dump(%struct.uvc_streaming* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.uvc_streaming*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %9, align 8
  %10 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %11 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 14
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %16 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 13
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ktime_ms_delta(i32 %14, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %25 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %28, 1000
  %30 = load i32, i32* %8, align 4
  %31 = udiv i32 %29, %30
  store i32 %31, i32* %7, align 4
  br label %33

32:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i8*, i8** %5, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %9, align 8
  %39 = sub i64 %37, %38
  %40 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %41 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 12
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %46 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %51 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %56 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %61 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 8
  %64 = load i32, i32* %63, align 4
  %65 = call i64 (i8*, i64, i8*, i32, i32, ...) @scnprintf(i8* %36, i64 %39, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %49, i32 %54, i32 %59, i32 %64)
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %9, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i64, i64* %9, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* %9, align 8
  %73 = sub i64 %71, %72
  %74 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %75 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %80 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %85 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i64 (i8*, i64, i8*, i32, i32, ...) @scnprintf(i8* %70, i64 %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %83, i32 %88)
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %9, align 8
  %92 = load i8*, i8** %5, align 8
  %93 = load i64, i64* %9, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* %9, align 8
  %97 = sub i64 %95, %96
  %98 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %99 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %104 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i64 (i8*, i64, i8*, i32, i32, ...) @scnprintf(i8* %94, i64 %97, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %102, i32 %107)
  %109 = load i64, i64* %9, align 8
  %110 = add i64 %109, %108
  store i64 %110, i64* %9, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  %114 = load i64, i64* %6, align 8
  %115 = load i64, i64* %9, align 8
  %116 = sub i64 %114, %115
  %117 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %118 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %123 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %7, align 4
  %128 = udiv i32 %127, 1000
  %129 = load i32, i32* %7, align 4
  %130 = urem i32 %129, 1000
  %131 = call i64 (i8*, i64, i8*, i32, i32, ...) @scnprintf(i8* %113, i64 %116, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %121, i32 %126, i32 %128, i32 %130)
  %132 = load i64, i64* %9, align 8
  %133 = add i64 %132, %131
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* %9, align 8
  ret i64 %134
}

declare dso_local i32 @ktime_ms_delta(i32, i32) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
