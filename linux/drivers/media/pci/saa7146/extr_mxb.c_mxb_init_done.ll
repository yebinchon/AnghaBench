; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_mxb.c_mxb_init_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7146/extr_mxb.c_mxb_init_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.saa7146_dev = type { i64 }
%struct.mxb = type { i64, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.i2c_msg = type { i32, i32, i32*, i64 }
%struct.tuner_setup = type { i32, i32, i32 }

@V4L2_STD_PAL_BG = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@s_routing = common dso_local global i32 0, align 4
@SAA7115_COMPOSITE0 = common dso_local global i32 0, align 4
@SAA7111_FMT_CCIR = common dso_local global i32 0, align 4
@T_ANALOG_TV = common dso_local global i32 0, align 4
@ADDR_UNSET = common dso_local global i32 0, align 4
@TUNER_PHILIPS_PAL = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_type_addr = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@freq = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@GPIO_CTRL = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_gpio = common dso_local global i32 0, align 4
@video_audio_connect = common dso_local global i32* null, align 8
@V4L2_TUNER_MODE_STEREO = common dso_local global i32 0, align 4
@mxb_saa7740_init = common dso_local global %struct.TYPE_6__* null, align 8
@SAA7146_USE_I2C_IRQ = common dso_local global i32 0, align 4
@extension = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to initialize 'sound arena module'\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"'sound arena module' detected\0A\00", align 1
@input_port_selection = common dso_local global %struct.TYPE_7__* null, align 8
@DD1_STREAM_B = common dso_local global i32 0, align 4
@DD1_INIT = common dso_local global i32 0, align 4
@MC2 = common dso_local global i32 0, align 4
@MASK_09 = common dso_local global i32 0, align 4
@MASK_25 = common dso_local global i32 0, align 4
@MASK_10 = common dso_local global i32 0, align 4
@MASK_26 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*)* @mxb_init_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxb_init_done(%struct.saa7146_dev* %0) #0 {
  %2 = alloca %struct.saa7146_dev*, align 8
  %3 = alloca %struct.mxb*, align 8
  %4 = alloca %struct.i2c_msg, align 8
  %5 = alloca %struct.tuner_setup, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %2, align 8
  %9 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %10 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.mxb*
  store %struct.mxb* %12, %struct.mxb** %3, align 8
  %13 = load i32, i32* @V4L2_STD_PAL_BG, align 4
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %14 = load %struct.mxb*, %struct.mxb** %3, align 8
  %15 = call i32 @tea6420_route(%struct.mxb* %14, i32 6)
  %16 = load %struct.mxb*, %struct.mxb** %3, align 8
  %17 = load i32, i32* @video, align 4
  %18 = load i32, i32* @s_std, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 (%struct.mxb*, i32, i32, i32, ...) @saa7111a_call(%struct.mxb* %16, i32 %17, i32 %18, i32 %19)
  store i32 0, i32* %7, align 4
  %21 = load %struct.mxb*, %struct.mxb** %3, align 8
  %22 = load i32, i32* @video, align 4
  %23 = load i32, i32* @s_routing, align 4
  %24 = load i32, i32* @SAA7115_COMPOSITE0, align 4
  %25 = load i32, i32* @SAA7111_FMT_CCIR, align 4
  %26 = call i32 (%struct.mxb*, i32, i32, i32, ...) @saa7111a_call(%struct.mxb* %21, i32 %22, i32 %23, i32 %24, i32 %25, i32 0)
  %27 = load i32, i32* @T_ANALOG_TV, align 4
  %28 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %5, i32 0, i32 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @ADDR_UNSET, align 4
  %30 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %5, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @TUNER_PHILIPS_PAL, align 4
  %32 = getelementptr inbounds %struct.tuner_setup, %struct.tuner_setup* %5, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.mxb*, %struct.mxb** %3, align 8
  %34 = load i32, i32* @tuner, align 4
  %35 = load i32, i32* @s_type_addr, align 4
  %36 = call i32 (%struct.mxb*, i32, i32, ...) @tuner_call(%struct.mxb* %33, i32 %34, i32 %35, %struct.tuner_setup* %5)
  %37 = load %struct.mxb*, %struct.mxb** %3, align 8
  %38 = getelementptr inbounds %struct.mxb, %struct.mxb* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %41 = load %struct.mxb*, %struct.mxb** %3, align 8
  %42 = getelementptr inbounds %struct.mxb, %struct.mxb* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @freq, align 4
  %45 = load %struct.mxb*, %struct.mxb** %3, align 8
  %46 = getelementptr inbounds %struct.mxb, %struct.mxb* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.mxb*, %struct.mxb** %3, align 8
  %49 = load i32, i32* @tuner, align 4
  %50 = load i32, i32* @s_frequency, align 4
  %51 = load %struct.mxb*, %struct.mxb** %3, align 8
  %52 = getelementptr inbounds %struct.mxb, %struct.mxb* %51, i32 0, i32 5
  %53 = call i32 (%struct.mxb*, i32, i32, ...) @tuner_call(%struct.mxb* %48, i32 %49, i32 %50, %struct.TYPE_5__* %52)
  %54 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %55 = load i32, i32* @GPIO_CTRL, align 4
  %56 = call i32 @saa7146_write(%struct.saa7146_dev* %54, i32 %55, i32 4210768)
  %57 = load %struct.mxb*, %struct.mxb** %3, align 8
  %58 = load i32, i32* @core, align 4
  %59 = load i32, i32* @s_gpio, align 4
  %60 = call i32 (%struct.mxb*, i32, i32, i32, ...) @saa7111a_call(%struct.mxb* %57, i32 %58, i32 %59, i32 1)
  %61 = load %struct.mxb*, %struct.mxb** %3, align 8
  %62 = load i32, i32* @video, align 4
  %63 = load i32, i32* @s_std, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 (%struct.mxb*, i32, i32, i32, ...) @saa7111a_call(%struct.mxb* %61, i32 %62, i32 %63, i32 %64)
  %66 = load %struct.mxb*, %struct.mxb** %3, align 8
  %67 = load i32, i32* @video, align 4
  %68 = load i32, i32* @s_std, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 (%struct.mxb*, i32, i32, ...) @tuner_call(%struct.mxb* %66, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.mxb*, %struct.mxb** %3, align 8
  %72 = load i32, i32* @video, align 4
  %73 = load i32, i32* @s_routing, align 4
  %74 = call i32 @tea6415c_call(%struct.mxb* %71, i32 %72, i32 %73, i32 3, i32 17, i32 0)
  %75 = load %struct.mxb*, %struct.mxb** %3, align 8
  %76 = load i32, i32* @video, align 4
  %77 = load i32, i32* @s_routing, align 4
  %78 = call i32 @tea6415c_call(%struct.mxb* %75, i32 %76, i32 %77, i32 3, i32 13, i32 0)
  %79 = load %struct.mxb*, %struct.mxb** %3, align 8
  %80 = getelementptr inbounds %struct.mxb, %struct.mxb* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load i32*, i32** @video_audio_connect, align 8
  %82 = load %struct.mxb*, %struct.mxb** %3, align 8
  %83 = getelementptr inbounds %struct.mxb, %struct.mxb* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mxb*, %struct.mxb** %3, align 8
  %88 = getelementptr inbounds %struct.mxb, %struct.mxb* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 4
  %89 = load %struct.mxb*, %struct.mxb** %3, align 8
  %90 = getelementptr inbounds %struct.mxb, %struct.mxb* %89, i32 0, i32 1
  store i32 1, i32* %90, align 8
  %91 = load i32, i32* @V4L2_TUNER_MODE_STEREO, align 4
  %92 = load %struct.mxb*, %struct.mxb** %3, align 8
  %93 = getelementptr inbounds %struct.mxb, %struct.mxb* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load %struct.mxb*, %struct.mxb** %3, align 8
  %95 = call i32 @mxb_update_audmode(%struct.mxb* %94)
  %96 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 0
  store i32 27, i32* %96, align 8
  %97 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mxb_saa7740_init, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mxb_saa7740_init, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 2
  store i32* %107, i32** %108, align 8
  %109 = load %struct.mxb*, %struct.mxb** %3, align 8
  %110 = getelementptr inbounds %struct.mxb, %struct.mxb* %109, i32 0, i32 2
  %111 = call i32 @i2c_transfer(i32* %110, %struct.i2c_msg* %4, i32 1)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %157

114:                                              ; preds = %1
  %115 = load i32, i32* @SAA7146_USE_I2C_IRQ, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @extension, i32 0, i32 0), align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @extension, i32 0, i32 0), align 4
  store i32 1, i32* %7, align 4
  br label %119

119:                                              ; preds = %152, %114
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mxb_saa7740_init, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 -1, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %155

128:                                              ; preds = %119
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mxb_saa7740_init, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 1
  store i32 %134, i32* %135, align 4
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mxb_saa7740_init, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %4, i32 0, i32 2
  store i32* %142, i32** %143, align 8
  %144 = load %struct.mxb*, %struct.mxb** %3, align 8
  %145 = getelementptr inbounds %struct.mxb, %struct.mxb* %144, i32 0, i32 2
  %146 = call i32 @i2c_transfer(i32* %145, %struct.i2c_msg* %4, i32 1)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 1
  br i1 %148, label %149, label %151

149:                                              ; preds = %128
  %150 = call i32 @DEB_D(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %158

151:                                              ; preds = %128
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  br label %119

155:                                              ; preds = %127
  %156 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %1
  br label %158

158:                                              ; preds = %157, %149
  %159 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** @input_port_selection, align 8
  %161 = load %struct.mxb*, %struct.mxb** %3, align 8
  %162 = getelementptr inbounds %struct.mxb, %struct.mxb* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** @input_port_selection, align 8
  %168 = load %struct.mxb*, %struct.mxb** %3, align 8
  %169 = getelementptr inbounds %struct.mxb, %struct.mxb* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @saa7146_set_hps_source_and_sync(%struct.saa7146_dev* %159, i32 %166, i32 %173)
  %175 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %176 = load i32, i32* @DD1_STREAM_B, align 4
  %177 = call i32 @saa7146_write(%struct.saa7146_dev* %175, i32 %176, i32 0)
  %178 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %179 = load i32, i32* @DD1_INIT, align 4
  %180 = call i32 @saa7146_write(%struct.saa7146_dev* %178, i32 %179, i32 33554944)
  %181 = load %struct.saa7146_dev*, %struct.saa7146_dev** %2, align 8
  %182 = load i32, i32* @MC2, align 4
  %183 = load i32, i32* @MASK_09, align 4
  %184 = load i32, i32* @MASK_25, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @MASK_10, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @MASK_26, align 4
  %189 = or i32 %187, %188
  %190 = call i32 @saa7146_write(%struct.saa7146_dev* %181, i32 %182, i32 %189)
  ret i32 0
}

declare dso_local i32 @tea6420_route(%struct.mxb*, i32) #1

declare dso_local i32 @saa7111a_call(%struct.mxb*, i32, i32, i32, ...) #1

declare dso_local i32 @tuner_call(%struct.mxb*, i32, i32, ...) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @tea6415c_call(%struct.mxb*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mxb_update_audmode(%struct.mxb*) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @saa7146_set_hps_source_and_sync(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
