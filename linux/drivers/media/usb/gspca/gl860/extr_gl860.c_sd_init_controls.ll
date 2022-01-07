; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860.c_sd_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860.c_sd_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.TYPE_4__, %struct.v4l2_ctrl_handler }
%struct.TYPE_4__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@sd_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_GAMMA = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_CID_WHITE_BALANCE_TEMPERATURE = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@V4L2_CID_BACKLIGHT_COMPENSATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init_controls(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %9, %struct.v4l2_ctrl_handler** %5, align 8
  %10 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %10, %struct.v4l2_ctrl_handler** %13, align 8
  %14 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %14, i32 11)
  %16 = load %struct.sd*, %struct.sd** %4, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 10
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %23 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %24 = load %struct.sd*, %struct.sd** %4, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 10
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.sd*, %struct.sd** %4, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %22, i32* @sd_ctrl_ops, i32 %23, i32 0, i64 %27, i32 1, i32 %31)
  br label %33

33:                                               ; preds = %21, %1
  %34 = load %struct.sd*, %struct.sd** %4, align 8
  %35 = getelementptr inbounds %struct.sd, %struct.sd* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 9
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %41 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %42 = load %struct.sd*, %struct.sd** %4, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.sd*, %struct.sd** %4, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %40, i32* @sd_ctrl_ops, i32 %41, i32 0, i64 %45, i32 1, i32 %49)
  br label %51

51:                                               ; preds = %39, %33
  %52 = load %struct.sd*, %struct.sd** %4, align 8
  %53 = getelementptr inbounds %struct.sd, %struct.sd* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %59 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %60 = load %struct.sd*, %struct.sd** %4, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.sd*, %struct.sd** %4, align 8
  %65 = getelementptr inbounds %struct.sd, %struct.sd* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %58, i32* @sd_ctrl_ops, i32 %59, i32 0, i64 %63, i32 1, i32 %67)
  br label %69

69:                                               ; preds = %57, %51
  %70 = load %struct.sd*, %struct.sd** %4, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 7
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %69
  %76 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %77 = load i32, i32* @V4L2_CID_HUE, align 4
  %78 = load %struct.sd*, %struct.sd** %4, align 8
  %79 = getelementptr inbounds %struct.sd, %struct.sd* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.sd*, %struct.sd** %4, align 8
  %83 = getelementptr inbounds %struct.sd, %struct.sd* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %76, i32* @sd_ctrl_ops, i32 %77, i32 0, i64 %81, i32 1, i32 %85)
  br label %87

87:                                               ; preds = %75, %69
  %88 = load %struct.sd*, %struct.sd** %4, align 8
  %89 = getelementptr inbounds %struct.sd, %struct.sd* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %87
  %94 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %95 = load i32, i32* @V4L2_CID_GAMMA, align 4
  %96 = load %struct.sd*, %struct.sd** %4, align 8
  %97 = getelementptr inbounds %struct.sd, %struct.sd* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.sd*, %struct.sd** %4, align 8
  %101 = getelementptr inbounds %struct.sd, %struct.sd* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %94, i32* @sd_ctrl_ops, i32 %95, i32 0, i64 %99, i32 1, i32 %103)
  br label %105

105:                                              ; preds = %93, %87
  %106 = load %struct.sd*, %struct.sd** %4, align 8
  %107 = getelementptr inbounds %struct.sd, %struct.sd* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %105
  %112 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %113 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %114 = load %struct.sd*, %struct.sd** %4, align 8
  %115 = getelementptr inbounds %struct.sd, %struct.sd* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.sd*, %struct.sd** %4, align 8
  %119 = getelementptr inbounds %struct.sd, %struct.sd* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %112, i32* @sd_ctrl_ops, i32 %113, i32 0, i64 %117, i32 1, i32 %121)
  br label %123

123:                                              ; preds = %111, %105
  %124 = load %struct.sd*, %struct.sd** %4, align 8
  %125 = getelementptr inbounds %struct.sd, %struct.sd* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %123
  %130 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %131 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %132 = load %struct.sd*, %struct.sd** %4, align 8
  %133 = getelementptr inbounds %struct.sd, %struct.sd* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.sd*, %struct.sd** %4, align 8
  %137 = getelementptr inbounds %struct.sd, %struct.sd* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %130, i32* @sd_ctrl_ops, i32 %131, i32 0, i64 %135, i32 1, i32 %139)
  br label %141

141:                                              ; preds = %129, %123
  %142 = load %struct.sd*, %struct.sd** %4, align 8
  %143 = getelementptr inbounds %struct.sd, %struct.sd* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %141
  %148 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %149 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY, align 4
  %150 = load %struct.sd*, %struct.sd** %4, align 8
  %151 = getelementptr inbounds %struct.sd, %struct.sd* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.sd*, %struct.sd** %4, align 8
  %155 = getelementptr inbounds %struct.sd, %struct.sd* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %148, i32* @sd_ctrl_ops, i32 %149, i64 %153, i32 0, i32 %157)
  br label %159

159:                                              ; preds = %147, %141
  %160 = load %struct.sd*, %struct.sd** %4, align 8
  %161 = getelementptr inbounds %struct.sd, %struct.sd* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %177

165:                                              ; preds = %159
  %166 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %167 = load i32, i32* @V4L2_CID_WHITE_BALANCE_TEMPERATURE, align 4
  %168 = load %struct.sd*, %struct.sd** %4, align 8
  %169 = getelementptr inbounds %struct.sd, %struct.sd* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.sd*, %struct.sd** %4, align 8
  %173 = getelementptr inbounds %struct.sd, %struct.sd* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %166, i32* @sd_ctrl_ops, i32 %167, i32 0, i64 %171, i32 1, i32 %175)
  br label %177

177:                                              ; preds = %165, %159
  %178 = load %struct.sd*, %struct.sd** %4, align 8
  %179 = getelementptr inbounds %struct.sd, %struct.sd* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %177
  %184 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %185 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %186 = load %struct.sd*, %struct.sd** %4, align 8
  %187 = getelementptr inbounds %struct.sd, %struct.sd* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.sd*, %struct.sd** %4, align 8
  %191 = getelementptr inbounds %struct.sd, %struct.sd* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %184, i32* @sd_ctrl_ops, i32 %185, i32 0, i64 %189, i32 1, i32 %193)
  br label %195

195:                                              ; preds = %183, %177
  %196 = load %struct.sd*, %struct.sd** %4, align 8
  %197 = getelementptr inbounds %struct.sd, %struct.sd* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %213

201:                                              ; preds = %195
  %202 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %203 = load i32, i32* @V4L2_CID_BACKLIGHT_COMPENSATION, align 4
  %204 = load %struct.sd*, %struct.sd** %4, align 8
  %205 = getelementptr inbounds %struct.sd, %struct.sd* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.sd*, %struct.sd** %4, align 8
  %209 = getelementptr inbounds %struct.sd, %struct.sd* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %202, i32* @sd_ctrl_ops, i32 %203, i32 0, i64 %207, i32 1, i32 %211)
  br label %213

213:                                              ; preds = %201, %195
  %214 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %215 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %220 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %221 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %2, align 4
  br label %224

223:                                              ; preds = %213
  store i32 0, i32* %2, align 4
  br label %224

224:                                              ; preds = %223, %218
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i64, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
