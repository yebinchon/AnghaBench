; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.TYPE_6__, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sd = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32*, i64 }

@MODE_RAW = common dso_local global i32 0, align 4
@MODE_JPEG = common dso_local global i32 0, align 4
@SCALE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Set 1280x1024\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Set 640x480\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Set 320x240\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Set 160x120\0A\00", align 1
@JPEG_QT0_OFFSET = common dso_local global i64 0, align 8
@JPEG_QT1_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %3, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %31 = load %struct.sd*, %struct.sd** %3, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 17
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @jpeg_define(i32* %33, i32 %34, i32 %35, i32 33)
  %37 = load %struct.sd*, %struct.sd** %3, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 17
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.sd*, %struct.sd** %3, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 18
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @v4l2_ctrl_g_ctrl(i64 %42)
  %44 = call i32 @jpeg_set_qual(i32* %39, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MODE_RAW, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %1
  store i32 45, i32* %7, align 4
  br label %58

50:                                               ; preds = %1
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @MODE_JPEG, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  store i32 36, i32* %7, align 4
  br label %57

56:                                               ; preds = %50
  store i32 47, i32* %7, align 4
  br label %57

57:                                               ; preds = %56, %55
  br label %58

58:                                               ; preds = %57, %49
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.sd*, %struct.sd** %3, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @SCALE_MASK, align 4
  %64 = and i32 %62, %63
  switch i32 %64, label %73 [
    i32 131, label %65
    i32 128, label %67
    i32 129, label %69
    i32 130, label %71
  ]

65:                                               ; preds = %58
  store i32 192, i32* %8, align 4
  %66 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %73

67:                                               ; preds = %58
  store i32 128, i32* %8, align 4
  %68 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %73

69:                                               ; preds = %58
  store i32 144, i32* %8, align 4
  %70 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %73

71:                                               ; preds = %58
  store i32 160, i32* %8, align 4
  %72 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %73

73:                                               ; preds = %58, %71, %69, %67, %65
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @configure_sensor_output(%struct.gspca_dev* %74, i32 %75)
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %78 = load %struct.sd*, %struct.sd** %3, align 8
  %79 = getelementptr inbounds %struct.sd, %struct.sd* %78, i32 0, i32 17
  %80 = load i32*, i32** %79, align 8
  %81 = load i64, i64* @JPEG_QT0_OFFSET, align 8
  %82 = getelementptr inbounds i32, i32* %80, i64 %81
  %83 = call i32 @reg_w(%struct.gspca_dev* %77, i32 4352, i32* %82, i32 64)
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %85 = load %struct.sd*, %struct.sd** %3, align 8
  %86 = getelementptr inbounds %struct.sd, %struct.sd* %85, i32 0, i32 17
  %87 = load i32*, i32** %86, align 8
  %88 = load i64, i64* @JPEG_QT1_OFFSET, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = call i32 @reg_w(%struct.gspca_dev* %84, i32 4416, i32* %89, i32 64)
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32* @CLR_WIN(i32 %92, i32 %93)
  %95 = call i32 @reg_w(%struct.gspca_dev* %91, i32 4347, i32* %94, i32 5)
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.sd*, %struct.sd** %3, align 8
  %99 = getelementptr inbounds %struct.sd, %struct.sd* %98, i32 0, i32 16
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.sd*, %struct.sd** %3, align 8
  %102 = getelementptr inbounds %struct.sd, %struct.sd* %101, i32 0, i32 15
  %103 = load i32, i32* %102, align 8
  %104 = call i32* @HW_WIN(i32 %97, i32 %100, i32 %103)
  %105 = call i32 @reg_w(%struct.gspca_dev* %96, i32 4480, i32* %104, i32 6)
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @reg_w1(%struct.gspca_dev* %106, i32 4489, i32 %107)
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @reg_w1(%struct.gspca_dev* %109, i32 4320, i32 %110)
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %113 = load %struct.sd*, %struct.sd** %3, align 8
  %114 = getelementptr inbounds %struct.sd, %struct.sd* %113, i32 0, i32 14
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @v4l2_ctrl_g_ctrl(i64 %115)
  %117 = load %struct.sd*, %struct.sd** %3, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 13
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @v4l2_ctrl_g_ctrl(i64 %119)
  %121 = load %struct.sd*, %struct.sd** %3, align 8
  %122 = getelementptr inbounds %struct.sd, %struct.sd* %121, i32 0, i32 12
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @v4l2_ctrl_g_ctrl(i64 %123)
  %125 = load %struct.sd*, %struct.sd** %3, align 8
  %126 = getelementptr inbounds %struct.sd, %struct.sd* %125, i32 0, i32 11
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @v4l2_ctrl_g_ctrl(i64 %127)
  %129 = call i32 @set_cmatrix(%struct.gspca_dev* %112, i32 %116, i32 %120, i32 %124, i32 %128)
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %131 = load %struct.sd*, %struct.sd** %3, align 8
  %132 = getelementptr inbounds %struct.sd, %struct.sd* %131, i32 0, i32 10
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @v4l2_ctrl_g_ctrl(i64 %133)
  %135 = call i32 @set_gamma(%struct.gspca_dev* %130, i32 %134)
  %136 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %137 = load %struct.sd*, %struct.sd** %3, align 8
  %138 = getelementptr inbounds %struct.sd, %struct.sd* %137, i32 0, i32 9
  %139 = load i64, i64* %138, align 8
  %140 = call i32 @v4l2_ctrl_g_ctrl(i64 %139)
  %141 = load %struct.sd*, %struct.sd** %3, align 8
  %142 = getelementptr inbounds %struct.sd, %struct.sd* %141, i32 0, i32 8
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @v4l2_ctrl_g_ctrl(i64 %143)
  %145 = call i32 @set_redblue(%struct.gspca_dev* %136, i32 %140, i32 %144)
  %146 = load %struct.sd*, %struct.sd** %3, align 8
  %147 = getelementptr inbounds %struct.sd, %struct.sd* %146, i32 0, i32 7
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %73
  %151 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %152 = load %struct.sd*, %struct.sd** %3, align 8
  %153 = getelementptr inbounds %struct.sd, %struct.sd* %152, i32 0, i32 7
  %154 = load i64, i64* %153, align 8
  %155 = call i32 @v4l2_ctrl_g_ctrl(i64 %154)
  %156 = call i32 @set_gain(%struct.gspca_dev* %151, i32 %155)
  br label %157

157:                                              ; preds = %150, %73
  %158 = load %struct.sd*, %struct.sd** %3, align 8
  %159 = getelementptr inbounds %struct.sd, %struct.sd* %158, i32 0, i32 6
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  %163 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %164 = load %struct.sd*, %struct.sd** %3, align 8
  %165 = getelementptr inbounds %struct.sd, %struct.sd* %164, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @v4l2_ctrl_g_ctrl(i64 %166)
  %168 = call i32 @set_exposure(%struct.gspca_dev* %163, i32 %167)
  br label %169

169:                                              ; preds = %162, %157
  %170 = load %struct.sd*, %struct.sd** %3, align 8
  %171 = getelementptr inbounds %struct.sd, %struct.sd* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %169
  %175 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %176 = load %struct.sd*, %struct.sd** %3, align 8
  %177 = getelementptr inbounds %struct.sd, %struct.sd* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @v4l2_ctrl_g_ctrl(i64 %178)
  %180 = load %struct.sd*, %struct.sd** %3, align 8
  %181 = getelementptr inbounds %struct.sd, %struct.sd* %180, i32 0, i32 4
  %182 = load i64, i64* %181, align 8
  %183 = call i32 @v4l2_ctrl_g_ctrl(i64 %182)
  %184 = call i32 @set_hvflip(%struct.gspca_dev* %175, i32 %179, i32 %183)
  br label %185

185:                                              ; preds = %174, %169
  %186 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %187 = call i32 @reg_w1(%struct.gspca_dev* %186, i32 4103, i32 32)
  %188 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %189 = call i32 @reg_w1(%struct.gspca_dev* %188, i32 4193, i32 3)
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* @MODE_JPEG, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %185
  %195 = load %struct.sd*, %struct.sd** %3, align 8
  %196 = getelementptr inbounds %struct.sd, %struct.sd* %195, i32 0, i32 2
  store i64 0, i64* %196, align 8
  %197 = load %struct.sd*, %struct.sd** %3, align 8
  %198 = getelementptr inbounds %struct.sd, %struct.sd* %197, i32 0, i32 3
  store i64 0, i64* %198, align 8
  %199 = load %struct.sd*, %struct.sd** %3, align 8
  %200 = getelementptr inbounds %struct.sd, %struct.sd* %199, i32 0, i32 1
  store i64 0, i64* %200, align 8
  br label %201

201:                                              ; preds = %194, %185
  %202 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %203 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  ret i32 %204
}

declare dso_local i32 @jpeg_define(i32*, i32, i32, i32) #1

declare dso_local i32 @jpeg_set_qual(i32*, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i64) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @configure_sensor_output(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

declare dso_local i32* @CLR_WIN(i32, i32) #1

declare dso_local i32* @HW_WIN(i32, i32, i32) #1

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @set_cmatrix(%struct.gspca_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @set_gamma(%struct.gspca_dev*, i32) #1

declare dso_local i32 @set_redblue(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @set_gain(%struct.gspca_dev*, i32) #1

declare dso_local i32 @set_exposure(%struct.gspca_dev*, i32) #1

declare dso_local i32 @set_hvflip(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
