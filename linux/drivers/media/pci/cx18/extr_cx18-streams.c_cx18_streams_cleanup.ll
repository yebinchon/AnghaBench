; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.c_cx18_streams_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.c_cx18_streams_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, %struct.video_device, i32* }
%struct.video_device = type { i32* }

@CX18_MAX_STREAMS = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_TS = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_IDX = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_YUV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx18_streams_cleanup(%struct.cx18* %0, i32 %1) #0 {
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %136, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @CX18_MAX_STREAMS, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %139

11:                                               ; preds = %7
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @CX18_ENC_STREAM_TYPE_TS, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %61

15:                                               ; preds = %11
  %16 = load %struct.cx18*, %struct.cx18** %3, align 8
  %17 = getelementptr inbounds %struct.cx18, %struct.cx18* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %60

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.cx18*, %struct.cx18** %3, align 8
  %30 = getelementptr inbounds %struct.cx18, %struct.cx18* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = call i32 @cx18_dvb_unregister(%struct.TYPE_3__* %34)
  br label %36

36:                                               ; preds = %28, %25
  %37 = load %struct.cx18*, %struct.cx18** %3, align 8
  %38 = getelementptr inbounds %struct.cx18, %struct.cx18* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @kfree(i32* %44)
  %46 = load %struct.cx18*, %struct.cx18** %3, align 8
  %47 = getelementptr inbounds %struct.cx18, %struct.cx18* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i32* null, i32** %52, align 8
  %53 = load %struct.cx18*, %struct.cx18** %3, align 8
  %54 = getelementptr inbounds %struct.cx18, %struct.cx18* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = call i32 @cx18_stream_free(%struct.TYPE_3__* %58)
  br label %60

60:                                               ; preds = %36, %15
  br label %136

61:                                               ; preds = %11
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @CX18_ENC_STREAM_TYPE_IDX, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %100

65:                                               ; preds = %61
  %66 = load %struct.cx18*, %struct.cx18** %3, align 8
  %67 = getelementptr inbounds %struct.cx18, %struct.cx18* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %65
  %75 = load %struct.cx18*, %struct.cx18** %3, align 8
  %76 = getelementptr inbounds %struct.cx18, %struct.cx18* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i64, i64* %77, i64 %79
  store i64 0, i64* %80, align 8
  %81 = load %struct.cx18*, %struct.cx18** %3, align 8
  %82 = getelementptr inbounds %struct.cx18, %struct.cx18* %81, i32 0, i32 1
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %74
  %91 = load %struct.cx18*, %struct.cx18** %3, align 8
  %92 = getelementptr inbounds %struct.cx18, %struct.cx18* %91, i32 0, i32 1
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = call i32 @cx18_stream_free(%struct.TYPE_3__* %96)
  br label %98

98:                                               ; preds = %90, %74
  br label %99

99:                                               ; preds = %98, %65
  br label %136

100:                                              ; preds = %61
  %101 = load %struct.cx18*, %struct.cx18** %3, align 8
  %102 = getelementptr inbounds %struct.cx18, %struct.cx18* %101, i32 0, i32 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  store %struct.video_device* %107, %struct.video_device** %5, align 8
  %108 = load %struct.video_device*, %struct.video_device** %5, align 8
  %109 = getelementptr inbounds %struct.video_device, %struct.video_device* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = icmp eq i32* %110, null
  br i1 %111, label %112, label %113

112:                                              ; preds = %100
  br label %136

113:                                              ; preds = %100
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @CX18_ENC_STREAM_TYPE_YUV, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load %struct.cx18*, %struct.cx18** %3, align 8
  %119 = getelementptr inbounds %struct.cx18, %struct.cx18* %118, i32 0, i32 1
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = call i32 @videobuf_mmap_free(i32* %124)
  br label %126

126:                                              ; preds = %117, %113
  %127 = load %struct.cx18*, %struct.cx18** %3, align 8
  %128 = getelementptr inbounds %struct.cx18, %struct.cx18* %127, i32 0, i32 1
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 %131
  %133 = call i32 @cx18_stream_free(%struct.TYPE_3__* %132)
  %134 = load %struct.video_device*, %struct.video_device** %5, align 8
  %135 = call i32 @video_unregister_device(%struct.video_device* %134)
  br label %136

136:                                              ; preds = %126, %112, %99, %60
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %7

139:                                              ; preds = %7
  ret void
}

declare dso_local i32 @cx18_dvb_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @cx18_stream_free(%struct.TYPE_3__*) #1

declare dso_local i32 @videobuf_mmap_free(i32*) #1

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
