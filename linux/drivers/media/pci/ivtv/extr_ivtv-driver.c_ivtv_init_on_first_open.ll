; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-driver.c_ivtv_init_on_first_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-driver.c_ivtv_init_on_first_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.v4l2_frequency = type { i32, i32, i64 }
%struct.ivtv_open_id = type { i32, %struct.ivtv* }

@IVTV_ENC_STREAM_TYPE_MPG = common dso_local global i32 0, align 4
@IVTV_F_I_FAILED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@IVTV_F_I_INITED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Retry loading firmware\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Getting firmware version..\0A\00", align 1
@IVTV_HW_CX25840 = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@load_fw = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M_JP = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@IVTV_HW_SAA7127 = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@IVTV_REG_DMACONTROL = common dso_local global i32 0, align 4
@IVTV_IRQ_MASK_INIT = common dso_local global i32 0, align 4
@IVTV_IRQ_DEC_VSYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_init_on_first_open(%struct.ivtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca %struct.v4l2_frequency, align 8
  %5 = alloca %struct.ivtv_open_id, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store i32 3, i32* %6, align 4
  %8 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %9 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %5, i32 0, i32 1
  store %struct.ivtv* %8, %struct.ivtv** %9, align 8
  %10 = load i32, i32* @IVTV_ENC_STREAM_TYPE_MPG, align 4
  %11 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %5, i32 0, i32 0
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* @IVTV_F_I_FAILED, align 4
  %13 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %14 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %13, i32 0, i32 9
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %171

20:                                               ; preds = %1
  %21 = load i32, i32* @IVTV_F_I_INITED, align 4
  %22 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %23 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %22, i32 0, i32 9
  %24 = call i64 @test_and_set_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %171

27:                                               ; preds = %20
  br label %28

28:                                               ; preds = %42, %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %34 = call i64 @ivtv_firmware_init(%struct.ivtv* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %43

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @IVTV_WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  br label %28

43:                                               ; preds = %36, %28
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* @IVTV_F_I_FAILED, align 4
  %48 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %49 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %48, i32 0, i32 9
  %50 = call i32 @set_bit(i32 %47, i32* %49)
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %171

53:                                               ; preds = %43
  %54 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %56 = call i32 @ivtv_firmware_versions(%struct.ivtv* %55)
  %57 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %58 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %57, i32 0, i32 7
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IVTV_HW_CX25840, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %53
  %66 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %67 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @core, align 4
  %70 = load i32, i32* @load_fw, align 4
  %71 = call i32 @v4l2_subdev_call(i32 %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %53
  %73 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %4, i32 0, i32 2
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %75 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %4, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %4, i32 0, i32 0
  store i32 6400, i32* %76, align 8
  %77 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %78 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @V4L2_STD_NTSC_M_JP, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %4, i32 0, i32 0
  store i32 1460, i32* %83, align 8
  br label %94

84:                                               ; preds = %72
  %85 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %86 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @V4L2_STD_NTSC_M, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %4, i32 0, i32 0
  store i32 1076, i32* %92, align 8
  br label %93

93:                                               ; preds = %91, %84
  br label %94

94:                                               ; preds = %93, %82
  %95 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %96 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %7, align 4
  %98 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %99 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @ivtv_s_input(i32* null, %struct.ivtv_open_id* %5, i32 %102)
  %104 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %105 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 8
  %108 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %109 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %112 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = call i32 @ivtv_s_frequency(i32* null, %struct.ivtv_open_id* %5, %struct.v4l2_frequency* %4)
  %114 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %115 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %114, i32 0, i32 7
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %130

122:                                              ; preds = %94
  %123 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %124 = load i32, i32* @IVTV_HW_SAA7127, align 4
  %125 = load i32, i32* @video, align 4
  %126 = load i32, i32* @s_stream, align 4
  %127 = call i32 @ivtv_call_hw(%struct.ivtv* %123, i32 %124, i32 %125, i32 %126, i32 1)
  %128 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %129 = call i32 @ivtv_init_mpeg_decoder(%struct.ivtv* %128)
  br label %130

130:                                              ; preds = %122, %94
  %131 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %132 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %131, i32 0, i32 6
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %138, label %135

135:                                              ; preds = %130
  %136 = load i32, i32* @IVTV_REG_DMACONTROL, align 4
  %137 = call i32 @write_reg_sync(i32 3, i32 %136)
  br label %138

138:                                              ; preds = %135, %130
  %139 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %140 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %141 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @ivtv_s_std_enc(%struct.ivtv* %139, i32 %142)
  %144 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %145 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %138
  %151 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %152 = load i32, i32* @IVTV_IRQ_MASK_INIT, align 4
  %153 = load i32, i32* @IVTV_IRQ_DEC_VSYNC, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @ivtv_clear_irq_mask(%struct.ivtv* %151, i32 %154)
  %156 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %157 = call i32 @ivtv_set_osd_alpha(%struct.ivtv* %156)
  %158 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %159 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %160 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @ivtv_s_std_dec(%struct.ivtv* %158, i32 %161)
  br label %167

163:                                              ; preds = %138
  %164 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %165 = load i32, i32* @IVTV_IRQ_MASK_INIT, align 4
  %166 = call i32 @ivtv_clear_irq_mask(%struct.ivtv* %164, i32 %165)
  br label %167

167:                                              ; preds = %163, %150
  %168 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %169 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %168, i32 0, i32 4
  %170 = call i32 @cx2341x_handler_setup(i32* %169)
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %167, %46, %26, %17
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @ivtv_firmware_init(%struct.ivtv*) #1

declare dso_local i32 @IVTV_WARN(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*) #1

declare dso_local i32 @ivtv_firmware_versions(%struct.ivtv*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32) #1

declare dso_local i32 @ivtv_s_input(i32*, %struct.ivtv_open_id*, i32) #1

declare dso_local i32 @ivtv_s_frequency(i32*, %struct.ivtv_open_id*, %struct.v4l2_frequency*) #1

declare dso_local i32 @ivtv_call_hw(%struct.ivtv*, i32, i32, i32, i32) #1

declare dso_local i32 @ivtv_init_mpeg_decoder(%struct.ivtv*) #1

declare dso_local i32 @write_reg_sync(i32, i32) #1

declare dso_local i32 @ivtv_s_std_enc(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_clear_irq_mask(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_set_osd_alpha(%struct.ivtv*) #1

declare dso_local i32 @ivtv_s_std_dec(%struct.ivtv*, i32) #1

declare dso_local i32 @cx2341x_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
