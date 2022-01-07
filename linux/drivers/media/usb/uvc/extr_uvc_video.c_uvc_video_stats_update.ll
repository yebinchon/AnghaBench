; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_stats_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_video_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.uvc_stats_frame, %struct.TYPE_3__ }
%struct.uvc_stats_frame = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@UVC_TRACE_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [106 x i8] c"frame %u stats: %u/%u/%u packets, %u/%u/%u pts (%searly %sinitial), %u/%u scr, last pts/stc/sof %u/%u/%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uvc_streaming*)* @uvc_video_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_video_stats_update(%struct.uvc_streaming* %0) #0 {
  %2 = alloca %struct.uvc_streaming*, align 8
  %3 = alloca %struct.uvc_stats_frame*, align 8
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %2, align 8
  %4 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %5 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store %struct.uvc_stats_frame* %6, %struct.uvc_stats_frame** %3, align 8
  %7 = load i32, i32* @UVC_TRACE_STATS, align 4
  %8 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %9 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %12 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %15 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %18 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %16, %19
  %21 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %22 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %25 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %24, i32 0, i32 14
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %28 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %31 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %30, i32 0, i32 13
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %34 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %39 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %40 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %45 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %46 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %49 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %48, i32 0, i32 5
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %52 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %55 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %54, i32 0, i32 11
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %58 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @uvc_trace(i32 %7, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %13, i64 %20, i64 %23, i32 %26, i64 %29, i32 %32, i8* %38, i8* %44, i64 %47, i64 %50, i32 %53, i32 %56, i32 %59)
  %61 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %62 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %68 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %73 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %71
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  %80 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %81 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %86 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %84
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  %93 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %94 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %95, i32 0, i32 9
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %99 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %97
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 8
  %106 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %107 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %108, i32 0, i32 8
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %112 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %110
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  %119 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %120 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %1
  %124 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %125 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %123, %1
  %131 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %132 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %131, i32 0, i32 6
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %137 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %135, %130
  %143 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %144 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %147 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp sle i64 %145, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %142
  %151 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %152 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  br label %157

157:                                              ; preds = %150, %142
  %158 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %159 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %158, i32 0, i32 5
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %162 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %165 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = sub nsw i64 %163, %166
  %168 = icmp sge i64 %160, %167
  br i1 %168, label %169, label %176

169:                                              ; preds = %157
  %170 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %171 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %169, %157
  %177 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %178 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 1
  %181 = load %struct.uvc_stats_frame*, %struct.uvc_stats_frame** %3, align 8
  %182 = getelementptr inbounds %struct.uvc_stats_frame, %struct.uvc_stats_frame* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = icmp eq i64 %180, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %176
  %186 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %187 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %185, %176
  %193 = load %struct.uvc_streaming*, %struct.uvc_streaming** %2, align 8
  %194 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = call i32 @memset(%struct.uvc_stats_frame* %195, i32 0, i32 104)
  ret void
}

declare dso_local i32 @uvc_trace(i32, i8*, i32, i64, i64, i64, i32, i64, i32, i8*, i8*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.uvc_stats_frame*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
