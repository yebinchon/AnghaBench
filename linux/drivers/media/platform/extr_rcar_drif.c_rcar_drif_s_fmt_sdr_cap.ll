; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_s_fmt_sdr_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_rcar_drif.c_rcar_drif_s_fmt_sdr_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.rcar_drif_sdr = type { i64, i64, i32, i32, %struct.TYPE_7__*, %struct.vb2_queue }
%struct.vb2_queue = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@formats = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"cur: idx %u mask %lu num %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @rcar_drif_s_fmt_sdr_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_drif_s_fmt_sdr_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.rcar_drif_sdr*, align 8
  %9 = alloca %struct.vb2_queue*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.rcar_drif_sdr* @video_drvdata(%struct.file* %11)
  store %struct.rcar_drif_sdr* %12, %struct.rcar_drif_sdr** %8, align 8
  %13 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %8, align 8
  %14 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %13, i32 0, i32 5
  store %struct.vb2_queue* %14, %struct.vb2_queue** %9, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %16 = call i64 @vb2_is_busy(%struct.vb2_queue* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %126

21:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %42, %21
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** @formats, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %24)
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** @formats, align 8
  %29 = load i32, i32* %10, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %45

41:                                               ; preds = %27
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %10, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %22

45:                                               ; preds = %40, %22
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @formats, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %47)
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %50, %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** @formats, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i64 %54
  %56 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %8, align 8
  %57 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %56, i32 0, i32 4
  store %struct.TYPE_7__* %55, %struct.TYPE_7__** %57, align 8
  %58 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %8, align 8
  %59 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %58, i32 0, i32 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  store i32 %62, i32* %66, align 4
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @formats, align 8
  %68 = load i32, i32* %10, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 4
  %77 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @memset(i32 %81, i32 0, i32 4)
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** @formats, align 8
  %84 = load i32, i32* %10, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %8, align 8
  %90 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %51
  %94 = call i32 @BIT(i32 0)
  %95 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %8, align 8
  %96 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** @formats, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %8, align 8
  %104 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  br label %116

105:                                              ; preds = %51
  %106 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %8, align 8
  %107 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %8, align 8
  %110 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %8, align 8
  %112 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %8, align 8
  %115 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %114, i32 0, i32 1
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %105, %93
  %117 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %8, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %8, align 8
  %120 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.rcar_drif_sdr*, %struct.rcar_drif_sdr** %8, align 8
  %123 = getelementptr inbounds %struct.rcar_drif_sdr, %struct.rcar_drif_sdr* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @rdrif_dbg(%struct.rcar_drif_sdr* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %121, i64 %124)
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %116, %18
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.rcar_drif_sdr* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rdrif_dbg(%struct.rcar_drif_sdr*, i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
