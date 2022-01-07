; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_btcx-risc.c_btcx_align.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_btcx-risc.c_btcx_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_clip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"btcx: window align %dx%d+%d+%d [dx=%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"btcx:   clip align %dx%d+%d+%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btcx_align(%struct.v4l2_rect* %0, %struct.v4l2_clip* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.v4l2_rect*, align 8
  %6 = alloca %struct.v4l2_clip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_rect* %0, %struct.v4l2_rect** %5, align 8
  store %struct.v4l2_clip* %1, %struct.v4l2_clip** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %15, %16
  %18 = load i32, i32* %8, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  store i32 %20, i32* %9, align 4
  %21 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %22 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %27, %28
  %30 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = icmp sgt i32 %29, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %38, %4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %46 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %51 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %56 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %59 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.v4l2_rect*, %struct.v4l2_rect** %5, align 8
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 (i8*, i32, i32, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60, i32 %63, i32 %66, i32 %67)
  store i32 0, i32* %12, align 4
  br label %69

69:                                               ; preds = %166, %43
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %169

73:                                               ; preds = %69
  %74 = load %struct.v4l2_clip*, %struct.v4l2_clip** %6, align 8
  %75 = load i32, i32* %12, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %74, i64 %76
  %78 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = sub nsw i32 %80, %81
  %83 = load i32, i32* %8, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  store i32 %85, i32* %9, align 4
  %86 = load %struct.v4l2_clip*, %struct.v4l2_clip** %6, align 8
  %87 = load i32, i32* %12, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %86, i64 %88
  %90 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %92, %94
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %96, %97
  %99 = load %struct.v4l2_clip*, %struct.v4l2_clip** %6, align 8
  %100 = load i32, i32* %12, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %99, i64 %101
  %103 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load %struct.v4l2_clip*, %struct.v4l2_clip** %6, align 8
  %109 = load i32, i32* %12, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %108, i64 %110
  %112 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %107, %114
  %116 = icmp slt i32 %98, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %73
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 1
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %117, %73
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.v4l2_clip*, %struct.v4l2_clip** %6, align 8
  %125 = load i32, i32* %12, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %124, i64 %126
  %128 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  store i32 %123, i32* %129, align 4
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.v4l2_clip*, %struct.v4l2_clip** %6, align 8
  %132 = load i32, i32* %12, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %131, i64 %133
  %135 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i32 %130, i32* %136, align 4
  %137 = load %struct.v4l2_clip*, %struct.v4l2_clip** %6, align 8
  %138 = load i32, i32* %12, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %137, i64 %139
  %141 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.v4l2_clip*, %struct.v4l2_clip** %6, align 8
  %145 = load i32, i32* %12, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %144, i64 %146
  %148 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.v4l2_clip*, %struct.v4l2_clip** %6, align 8
  %152 = load i32, i32* %12, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %151, i64 %153
  %155 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.v4l2_clip*, %struct.v4l2_clip** %6, align 8
  %159 = load i32, i32* %12, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %158, i64 %160
  %162 = getelementptr inbounds %struct.v4l2_clip, %struct.v4l2_clip* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = call i32 (i8*, i32, i32, i32, i32, ...) @dprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %150, i32 %157, i32 %164)
  br label %166

166:                                              ; preds = %122
  %167 = load i32, i32* %12, align 4
  %168 = add i32 %167, 1
  store i32 %168, i32* %12, align 4
  br label %69

169:                                              ; preds = %69
  ret i32 0
}

declare dso_local i32 @dprintk(i8*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
