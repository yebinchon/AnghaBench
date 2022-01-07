; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_process_frame_data_em25xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_process_frame_data_em25xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.TYPE_2__, i64, %struct.em28xx_v4l2*, %struct.em28xx_dmaqueue }
%struct.TYPE_2__ = type { %struct.em28xx_buffer* }
%struct.em28xx_buffer = type { i32 }
%struct.em28xx_v4l2 = type { i32 }
%struct.em28xx_dmaqueue = type { i32 }

@EM25XX_FRMDATAHDR_BYTE1 = common dso_local global i8 0, align 1
@EM25XX_FRMDATAHDR_BYTE2_MASK = common dso_local global i8 0, align 1
@EM25XX_FRMDATAHDR_BYTE2_FRAME_ID = common dso_local global i8 0, align 1
@EM25XX_FRMDATAHDR_BYTE2_FRAME_END = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*, i8*, i32)* @process_frame_data_em25xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_frame_data_em25xx(%struct.em28xx* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.em28xx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.em28xx_buffer*, align 8
  %8 = alloca %struct.em28xx_dmaqueue*, align 8
  %9 = alloca %struct.em28xx_v4l2*, align 8
  %10 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %12 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %13, align 8
  store %struct.em28xx_buffer* %14, %struct.em28xx_buffer** %7, align 8
  %15 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %16 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %15, i32 0, i32 3
  store %struct.em28xx_dmaqueue* %16, %struct.em28xx_dmaqueue** %8, align 8
  %17 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %18 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %17, i32 0, i32 2
  %19 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %18, align 8
  store %struct.em28xx_v4l2* %19, %struct.em28xx_v4l2** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp uge i32 %20, 2
  br i1 %21, label %22, label %82

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, i8* @EM25XX_FRMDATAHDR_BYTE1, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %22
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @EM25XX_FRMDATAHDR_BYTE2_MASK, align 1
  %36 = zext i8 %35 to i32
  %37 = xor i32 %36, -1
  %38 = and i32 %34, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %30
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load i8, i8* @EM25XX_FRMDATAHDR_BYTE2_FRAME_ID, align 1
  %46 = zext i8 %45 to i32
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %9, align 8
  %52 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @EM25XX_FRMDATAHDR_BYTE2_FRAME_END, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %56, %58
  store i32 %59, i32* %10, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 2
  store i8* %61, i8** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sub i32 %62, 2
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %40, %30, %22
  %65 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %66 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %74 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %75 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %76 = call %struct.em28xx_buffer* @finish_field_prepare_next(%struct.em28xx* %73, %struct.em28xx_buffer* %74, %struct.em28xx_dmaqueue* %75)
  store %struct.em28xx_buffer* %76, %struct.em28xx_buffer** %7, align 8
  %77 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %78 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %79 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store %struct.em28xx_buffer* %77, %struct.em28xx_buffer** %80, align 8
  br label %81

81:                                               ; preds = %72, %69, %64
  br label %82

82:                                               ; preds = %81, %3
  %83 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %84 = icmp ne %struct.em28xx_buffer* %83, null
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = icmp ugt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %90 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %91 = load i8*, i8** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @em28xx_copy_video(%struct.em28xx* %89, %struct.em28xx_buffer* %90, i8* %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %85, %82
  %95 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %96 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %111, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %104 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %105 = load %struct.em28xx_dmaqueue*, %struct.em28xx_dmaqueue** %8, align 8
  %106 = call %struct.em28xx_buffer* @finish_field_prepare_next(%struct.em28xx* %103, %struct.em28xx_buffer* %104, %struct.em28xx_dmaqueue* %105)
  store %struct.em28xx_buffer* %106, %struct.em28xx_buffer** %7, align 8
  %107 = load %struct.em28xx_buffer*, %struct.em28xx_buffer** %7, align 8
  %108 = load %struct.em28xx*, %struct.em28xx** %4, align 8
  %109 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store %struct.em28xx_buffer* %107, %struct.em28xx_buffer** %110, align 8
  br label %111

111:                                              ; preds = %102, %99, %94
  ret void
}

declare dso_local %struct.em28xx_buffer* @finish_field_prepare_next(%struct.em28xx*, %struct.em28xx_buffer*, %struct.em28xx_dmaqueue*) #1

declare dso_local i32 @em28xx_copy_video(%struct.em28xx*, %struct.em28xx_buffer*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
