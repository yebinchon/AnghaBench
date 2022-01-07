; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-driver.c_ivtv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-driver.c_ivtv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.v4l2_device = type { i32 }
%struct.ivtv = type { i32, i32, i32, %struct.TYPE_5__, %struct.TYPE_6__*, i64, i64, %struct.TYPE_4__, i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.ivtv** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"Removing card\0A\00", align 1
@IVTV_F_I_INITED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Stopping all streams\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Stopping decoding\0A\00", align 1
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@IVTV_HW_SAA7127 = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@IVTV_F_I_DEC_YUV = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_YUV = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i32 0, align 4
@V4L2_DEC_CMD_STOP_TO_BLACK = common dso_local global i32 0, align 4
@V4L2_DEC_CMD_STOP_IMMEDIATELY = common dso_local global i32 0, align 4
@IVTV_ENCODER_SIZE = common dso_local global i32 0, align 4
@IVTV_REG_OFFSET = common dso_local global i64 0, align 8
@IVTV_REG_SIZE = common dso_local global i32 0, align 4
@IVTV_DECODER_OFFSET = common dso_local global i64 0, align 8
@IVTV_DECODER_SIZE = common dso_local global i32 0, align 4
@IVTV_VBI_FRAMES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Removed %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ivtv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.v4l2_device*, align 8
  %4 = alloca %struct.ivtv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %8 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %7, i32 0, i32 0
  %9 = call %struct.v4l2_device* @dev_get_drvdata(i32* %8)
  store %struct.v4l2_device* %9, %struct.v4l2_device** %3, align 8
  %10 = load %struct.v4l2_device*, %struct.v4l2_device** %3, align 8
  %11 = call %struct.ivtv* @to_ivtv(%struct.v4l2_device* %10)
  store %struct.ivtv* %11, %struct.ivtv** %4, align 8
  %12 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %14 = call i32 @flush_request_modules(%struct.ivtv* %13)
  %15 = load i32, i32* @IVTV_F_I_INITED, align 4
  %16 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 12
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %72

20:                                               ; preds = %1
  %21 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %23 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %22, i32 0, i32 14
  %24 = call i64 @atomic_read(i32* %23)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %28 = call i32 @ivtv_stop_all_captures(%struct.ivtv* %27)
  br label %29

29:                                               ; preds = %26, %20
  %30 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %32 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %39 = load i32, i32* @IVTV_HW_SAA7127, align 4
  %40 = load i32, i32* @video, align 4
  %41 = load i32, i32* @s_stream, align 4
  %42 = call i32 @ivtv_call_hw(%struct.ivtv* %38, i32 %39, i32 %40, i32 %41, i32 0)
  br label %43

43:                                               ; preds = %37, %29
  %44 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %45 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %44, i32 0, i32 13
  %46 = call i64 @atomic_read(i32* %45)
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %43
  %49 = load i32, i32* @IVTV_F_I_DEC_YUV, align 4
  %50 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %51 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %50, i32 0, i32 12
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @IVTV_DEC_STREAM_TYPE_YUV, align 4
  store i32 %55, i32* %6, align 4
  br label %58

56:                                               ; preds = %48
  %57 = load i32, i32* @IVTV_DEC_STREAM_TYPE_MPG, align 4
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %60 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %59, i32 0, i32 11
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* @V4L2_DEC_CMD_STOP_TO_BLACK, align 4
  %66 = load i32, i32* @V4L2_DEC_CMD_STOP_IMMEDIATELY, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @ivtv_stop_v4l2_decode_stream(i32* %64, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %58, %43
  %70 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %71 = call i32 @ivtv_halt_firmware(%struct.ivtv* %70)
  br label %72

72:                                               ; preds = %69, %1
  %73 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %74 = call i32 @ivtv_set_irq_mask(%struct.ivtv* %73, i32 -1)
  %75 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %76 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %75, i32 0, i32 10
  %77 = call i32 @del_timer_sync(i32* %76)
  %78 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %79 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %78, i32 0, i32 9
  %80 = call i32 @kthread_flush_worker(i32* %79)
  %81 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %82 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %81, i32 0, i32 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @kthread_stop(i32 %83)
  %85 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %86 = call i32 @ivtv_streams_cleanup(%struct.ivtv* %85)
  %87 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %88 = call i32 @ivtv_udma_free(%struct.ivtv* %87)
  %89 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %90 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %89, i32 0, i32 7
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i32 @v4l2_ctrl_handler_free(i32* %91)
  %93 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %94 = call i32 @exit_ivtv_i2c(%struct.ivtv* %93)
  %95 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %96 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %95, i32 0, i32 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %101 = bitcast %struct.ivtv* %100 to i8*
  %102 = call i32 @free_irq(i32 %99, i8* %101)
  %103 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %104 = call i32 @ivtv_iounmap(%struct.ivtv* %103)
  %105 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %106 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* @IVTV_ENCODER_SIZE, align 4
  %109 = call i32 @release_mem_region(i64 %107, i32 %108)
  %110 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %111 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @IVTV_REG_OFFSET, align 8
  %114 = add nsw i64 %112, %113
  %115 = load i32, i32* @IVTV_REG_SIZE, align 4
  %116 = call i32 @release_mem_region(i64 %114, i32 %115)
  %117 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %118 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %129

121:                                              ; preds = %72
  %122 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %123 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %122, i32 0, i32 5
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @IVTV_DECODER_OFFSET, align 8
  %126 = add nsw i64 %124, %125
  %127 = load i32, i32* @IVTV_DECODER_SIZE, align 4
  %128 = call i32 @release_mem_region(i64 %126, i32 %127)
  br label %129

129:                                              ; preds = %121, %72
  %130 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %131 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %130, i32 0, i32 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = call i32 @pci_disable_device(%struct.TYPE_6__* %132)
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %148, %129
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* @IVTV_VBI_FRAMES, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %134
  %139 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %140 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load %struct.ivtv**, %struct.ivtv*** %141, align 8
  %143 = load i32, i32* %5, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.ivtv*, %struct.ivtv** %142, i64 %144
  %146 = load %struct.ivtv*, %struct.ivtv** %145, align 8
  %147 = call i32 @kfree(%struct.ivtv* %146)
  br label %148

148:                                              ; preds = %138
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %134

151:                                              ; preds = %134
  %152 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %153 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @pr_info(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %154)
  %156 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %157 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %156, i32 0, i32 1
  %158 = call i32 @v4l2_device_unregister(i32* %157)
  %159 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %160 = call i32 @kfree(%struct.ivtv* %159)
  ret void
}

declare dso_local %struct.v4l2_device* @dev_get_drvdata(i32*) #1

declare dso_local %struct.ivtv* @to_ivtv(%struct.v4l2_device*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*) #1

declare dso_local i32 @flush_request_modules(%struct.ivtv*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ivtv_stop_all_captures(%struct.ivtv*) #1

declare dso_local i32 @ivtv_call_hw(%struct.ivtv*, i32, i32, i32, i32) #1

declare dso_local i32 @ivtv_stop_v4l2_decode_stream(i32*, i32, i32) #1

declare dso_local i32 @ivtv_halt_firmware(%struct.ivtv*) #1

declare dso_local i32 @ivtv_set_irq_mask(%struct.ivtv*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @kthread_flush_worker(i32*) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @ivtv_streams_cleanup(%struct.ivtv*) #1

declare dso_local i32 @ivtv_udma_free(%struct.ivtv*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @exit_ivtv_i2c(%struct.ivtv*) #1

declare dso_local i32 @free_irq(i32, i8*) #1

declare dso_local i32 @ivtv_iounmap(%struct.ivtv*) #1

declare dso_local i32 @release_mem_region(i64, i32) #1

declare dso_local i32 @pci_disable_device(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(%struct.ivtv*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
