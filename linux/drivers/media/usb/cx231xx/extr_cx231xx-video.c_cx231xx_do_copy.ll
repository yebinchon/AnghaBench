; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_do_copy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_do_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.cx231xx_buffer* }
%struct.cx231xx_buffer = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_5__ = type { %struct.cx231xx_buffer* }
%struct.cx231xx_dmaqueue = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_do_copy(%struct.cx231xx* %0, %struct.cx231xx_dmaqueue* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx231xx*, align 8
  %7 = alloca %struct.cx231xx_dmaqueue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cx231xx_buffer*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %6, align 8
  store %struct.cx231xx_dmaqueue* %1, %struct.cx231xx_dmaqueue** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %18 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = shl i32 %19, 1
  store i32 %20, i32* %13, align 4
  %21 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %22 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %4
  %26 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %27 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %29, align 8
  store %struct.cx231xx_buffer* %30, %struct.cx231xx_buffer** %12, align 8
  br label %37

31:                                               ; preds = %4
  %32 = load %struct.cx231xx*, %struct.cx231xx** %6, align 8
  %33 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %35, align 8
  store %struct.cx231xx_buffer* %36, %struct.cx231xx_buffer** %12, align 8
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %12, align 8
  %39 = icmp eq %struct.cx231xx_buffer* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %5, align 4
  br label %110

41:                                               ; preds = %37
  %42 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %12, align 8
  %43 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %42, i32 0, i32 0
  %44 = call i32* @videobuf_to_vmalloc(%struct.TYPE_8__* %43)
  store i32* %44, i32** %10, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %47 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %51 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %57

55:                                               ; preds = %41
  %56 = load i32, i32* %13, align 4
  br label %57

57:                                               ; preds = %55, %54
  %58 = phi i32 [ 0, %54 ], [ %56, %55 ]
  store i32 %58, i32* %15, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = bitcast i32* %62 to i8*
  store i8* %63, i8** %14, align 8
  %64 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %65 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %13, align 4
  %68 = mul nsw i32 %66, %67
  %69 = mul nsw i32 %68, 2
  %70 = load i8*, i8** %14, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr i8, i8* %70, i64 %71
  store i8* %72, i8** %14, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i8*, i8** %14, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr i8, i8* %74, i64 %75
  store i8* %76, i8** %14, align 8
  %77 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %78 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %57
  %83 = load i32, i32* %9, align 4
  br label %88

84:                                               ; preds = %57
  %85 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %86 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  br label %88

88:                                               ; preds = %84, %82
  %89 = phi i32 [ %83, %82 ], [ %87, %84 ]
  store i32 %89, i32* %16, align 4
  %90 = load i8*, i8** %14, align 8
  %91 = load i32, i32* %16, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr i8, i8* %90, i64 %92
  %94 = bitcast i8* %93 to i32*
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %12, align 8
  %97 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %95, i64 %100
  %102 = icmp ugt i32* %94, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %88
  store i32 0, i32* %5, align 4
  br label %110

104:                                              ; preds = %88
  %105 = load i32*, i32** %8, align 8
  %106 = load i8*, i8** %14, align 8
  %107 = bitcast i8* %106 to i32*
  %108 = load i32, i32* %16, align 4
  %109 = call i32 @cx231xx_swab(i32* %105, i32* %107, i32 %108)
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %104, %103, %40
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32* @videobuf_to_vmalloc(%struct.TYPE_8__*) #1

declare dso_local i32 @cx231xx_swab(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
