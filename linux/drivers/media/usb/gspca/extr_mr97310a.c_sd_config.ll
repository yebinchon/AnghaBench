; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mr97310a.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mr97310a.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32*, %struct.cam }
%struct.cam = type { i32, i32 }
%struct.usb_device_id = type { i32 }
%struct.sd = type { i32, i32, i32, i32 }

@vga_mode = common dso_local global i32 0, align 4
@CAM_TYPE_CIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown CIF Sensor id : %02x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"MR97310A CIF camera detected, sensor: %d\0A\00", align 1
@CAM_TYPE_VGA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Unknown VGA Sensor id Byte 0: %02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Defaults assumed, may not work\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Please report this\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"sensor_type corrected to 0\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Unknown VGA Sensor id Byte 1: %02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"MR97310A VGA camera detected, sensor: %d\0A\00", align 1
@force_sensor_type = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Forcing sensor type to: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.sd*, align 8
  %7 = alloca %struct.cam*, align 8
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %6, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 1
  store %struct.cam* %12, %struct.cam** %7, align 8
  %13 = load i32, i32* @vga_mode, align 4
  %14 = load %struct.cam*, %struct.cam** %7, align 8
  %15 = getelementptr inbounds %struct.cam, %struct.cam* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @vga_mode, align 4
  %17 = call i32 @ARRAY_SIZE(i32 %16)
  %18 = load %struct.cam*, %struct.cam** %7, align 8
  %19 = getelementptr inbounds %struct.cam, %struct.cam* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sd*, %struct.sd** %6, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %23 = call i32 @zero_the_pointer(%struct.gspca_dev* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %206

28:                                               ; preds = %2
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %30 = call i32 @stream_start(%struct.gspca_dev* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %206

35:                                               ; preds = %28
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %37 = call i32 @cam_get_response16(%struct.gspca_dev* %36, i32 7, i32 1)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %206

42:                                               ; preds = %35
  %43 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %44 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 272
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %49 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 270
  br i1 %51, label %52, label %87

52:                                               ; preds = %47, %42
  %53 = load i32, i32* @CAM_TYPE_CIF, align 4
  %54 = load %struct.sd*, %struct.sd** %6, align 8
  %55 = getelementptr inbounds %struct.sd, %struct.sd* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.cam*, %struct.cam** %7, align 8
  %57 = getelementptr inbounds %struct.cam, %struct.cam* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %57, align 4
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %61 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %71 [
    i32 2, label %65
    i32 3, label %68
  ]

65:                                               ; preds = %52
  %66 = load %struct.sd*, %struct.sd** %6, align 8
  %67 = getelementptr inbounds %struct.sd, %struct.sd* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  br label %80

68:                                               ; preds = %52
  %69 = load %struct.sd*, %struct.sd** %6, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  br label %80

71:                                               ; preds = %52
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %73 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ENODEV, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %206

80:                                               ; preds = %68, %65
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %82 = load i32, i32* @D_PROBE, align 4
  %83 = load %struct.sd*, %struct.sd** %6, align 8
  %84 = getelementptr inbounds %struct.sd, %struct.sd* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %81, i32 %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %85)
  br label %186

87:                                               ; preds = %47
  %88 = load i32, i32* @CAM_TYPE_VGA, align 4
  %89 = load %struct.sd*, %struct.sd** %6, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 3
  store i32 %88, i32* %90, align 4
  %91 = load %struct.sd*, %struct.sd** %6, align 8
  %92 = getelementptr inbounds %struct.sd, %struct.sd* %91, i32 0, i32 1
  store i32 1, i32* %92, align 4
  %93 = load %struct.sd*, %struct.sd** %6, align 8
  %94 = getelementptr inbounds %struct.sd, %struct.sd* %93, i32 0, i32 0
  store i32 0, i32* %94, align 4
  %95 = load %struct.sd*, %struct.sd** %6, align 8
  %96 = getelementptr inbounds %struct.sd, %struct.sd* %95, i32 0, i32 2
  store i32 0, i32* %96, align 4
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %98 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = icmp eq i32 %101, 1
  br i1 %102, label %103, label %106

103:                                              ; preds = %87
  %104 = load %struct.sd*, %struct.sd** %6, align 8
  %105 = getelementptr inbounds %struct.sd, %struct.sd* %104, i32 0, i32 1
  store i32 2, i32* %105, align 4
  br label %130

106:                                              ; preds = %87
  %107 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %108 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 3
  br i1 %112, label %113, label %129

113:                                              ; preds = %106
  %114 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %115 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 4
  br i1 %119, label %120, label %129

120:                                              ; preds = %113
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %122 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %128 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %129

129:                                              ; preds = %120, %113, %106
  br label %130

130:                                              ; preds = %129, %103
  %131 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %132 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 3
  br i1 %136, label %137, label %147

137:                                              ; preds = %130
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %139 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 80
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load %struct.sd*, %struct.sd** %6, align 8
  %146 = getelementptr inbounds %struct.sd, %struct.sd* %145, i32 0, i32 2
  store i32 1, i32* %146, align 4
  br label %147

147:                                              ; preds = %144, %137, %130
  %148 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %149 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %152, 4
  br i1 %153, label %154, label %179

154:                                              ; preds = %147
  %155 = load %struct.sd*, %struct.sd** %6, align 8
  %156 = getelementptr inbounds %struct.sd, %struct.sd* %155, i32 0, i32 0
  store i32 1, i32* %156, align 4
  %157 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %158 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  switch i32 %161, label %169 [
    i32 80, label %162
    i32 32, label %168
  ]

162:                                              ; preds = %154
  %163 = load %struct.sd*, %struct.sd** %6, align 8
  %164 = getelementptr inbounds %struct.sd, %struct.sd* %163, i32 0, i32 1
  store i32 0, i32* %164, align 4
  %165 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %166 = load i32, i32* @D_PROBE, align 4
  %167 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %165, i32 %166, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %178

168:                                              ; preds = %154
  br label %178

169:                                              ; preds = %154
  %170 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %171 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %174)
  %176 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %177 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %178

178:                                              ; preds = %169, %168, %162
  br label %179

179:                                              ; preds = %178, %147
  %180 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %181 = load i32, i32* @D_PROBE, align 4
  %182 = load %struct.sd*, %struct.sd** %6, align 8
  %183 = getelementptr inbounds %struct.sd, %struct.sd* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %180, i32 %181, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %179, %80
  %187 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %188 = call i32 @sd_stopN(%struct.gspca_dev* %187)
  %189 = load i32, i32* @force_sensor_type, align 4
  %190 = icmp ne i32 %189, -1
  br i1 %190, label %191, label %205

191:                                              ; preds = %186
  %192 = load i32, i32* @force_sensor_type, align 4
  %193 = icmp ne i32 %192, 0
  %194 = xor i1 %193, true
  %195 = xor i1 %194, true
  %196 = zext i1 %195 to i32
  %197 = load %struct.sd*, %struct.sd** %6, align 8
  %198 = getelementptr inbounds %struct.sd, %struct.sd* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %200 = load i32, i32* @D_PROBE, align 4
  %201 = load %struct.sd*, %struct.sd** %6, align 8
  %202 = getelementptr inbounds %struct.sd, %struct.sd* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %199, i32 %200, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %191, %186
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %205, %71, %40, %33, %26
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @zero_the_pointer(%struct.gspca_dev*) #1

declare dso_local i32 @stream_start(%struct.gspca_dev*) #1

declare dso_local i32 @cam_get_response16(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, ...) #1

declare dso_local i32 @sd_stopN(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
