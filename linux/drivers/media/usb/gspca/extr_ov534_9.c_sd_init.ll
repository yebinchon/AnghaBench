; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534_9.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov534_9.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i8*, i8* }
%struct.sd = type { i32 }

@OV534_REG_ADDRESS = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Sensor ID: %04x\0A\00", align 1
@SENSOR_OV965x = common dso_local global i32 0, align 4
@ov965x_mode = common dso_local global i8* null, align 8
@bridge_init = common dso_local global i8* null, align 8
@ov965x_init = common dso_local global i8* null, align 8
@bridge_init_2 = common dso_local global i8* null, align 8
@ov965x_init_2 = common dso_local global i8* null, align 8
@SENSOR_OV971x = common dso_local global i32 0, align 4
@ov971x_mode = common dso_local global i8* null, align 8
@ov971x_init = common dso_local global i8* null, align 8
@SENSOR_OV562x = common dso_local global i32 0, align 4
@ov562x_mode = common dso_local global i8* null, align 8
@ov562x_init = common dso_local global i8* null, align 8
@ov562x_init_2 = common dso_local global i8* null, align 8
@SENSOR_OV361x = common dso_local global i32 0, align 4
@ov361x_mode = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Unknown sensor %04x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %4, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = call i32 @reg_w(%struct.gspca_dev* %10, i32 231, i32 58)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = call i32 @reg_w(%struct.gspca_dev* %12, i32 224, i32 8)
  %14 = call i32 @msleep(i32 100)
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = load i32, i32* @OV534_REG_ADDRESS, align 4
  %17 = call i32 @reg_w(%struct.gspca_dev* %15, i32 %16, i32 96)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = call i32 @sccb_write(%struct.gspca_dev* %18, i32 18, i32 128)
  %20 = call i32 @msleep(i32 10)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %22 = call i32 @sccb_read(%struct.gspca_dev* %21, i32 10)
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = call i32 @sccb_read(%struct.gspca_dev* %23, i32 10)
  %25 = shl i32 %24, 8
  store i32 %25, i32* %5, align 4
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = call i32 @sccb_read(%struct.gspca_dev* %26, i32 11)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = call i32 @sccb_read(%struct.gspca_dev* %28, i32 11)
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %33 = load i32, i32* @D_PROBE, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @gspca_dbg(%struct.gspca_dev* %32, i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 65520
  %38 = icmp eq i32 %37, 38480
  br i1 %38, label %39, label %80

39:                                               ; preds = %1
  %40 = load i32, i32* @SENSOR_OV965x, align 4
  %41 = load %struct.sd*, %struct.sd** %4, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i8*, i8** @ov965x_mode, align 8
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 4
  store i8* %43, i8** %46, align 8
  %47 = load i8*, i8** @ov965x_mode, align 8
  %48 = call i8* @ARRAY_SIZE(i8* %47)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %50 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store i8* %48, i8** %51, align 8
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %53 = load i8*, i8** @bridge_init, align 8
  %54 = load i8*, i8** @bridge_init, align 8
  %55 = call i8* @ARRAY_SIZE(i8* %54)
  %56 = call i32 @reg_w_array(%struct.gspca_dev* %52, i8* %53, i8* %55)
  %57 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %58 = load i8*, i8** @ov965x_init, align 8
  %59 = load i8*, i8** @ov965x_init, align 8
  %60 = call i8* @ARRAY_SIZE(i8* %59)
  %61 = call i32 @sccb_w_array(%struct.gspca_dev* %57, i8* %58, i8* %60)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %63 = load i8*, i8** @bridge_init_2, align 8
  %64 = load i8*, i8** @bridge_init_2, align 8
  %65 = call i8* @ARRAY_SIZE(i8* %64)
  %66 = call i32 @reg_w_array(%struct.gspca_dev* %62, i8* %63, i8* %65)
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %68 = load i8*, i8** @ov965x_init_2, align 8
  %69 = load i8*, i8** @ov965x_init_2, align 8
  %70 = call i8* @ARRAY_SIZE(i8* %69)
  %71 = call i32 @sccb_w_array(%struct.gspca_dev* %67, i8* %68, i8* %70)
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %73 = call i32 @reg_w(%struct.gspca_dev* %72, i32 224, i32 0)
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %75 = call i32 @reg_w(%struct.gspca_dev* %74, i32 224, i32 1)
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %77 = call i32 @set_led(%struct.gspca_dev* %76, i32 0)
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %79 = call i32 @reg_w(%struct.gspca_dev* %78, i32 224, i32 0)
  br label %195

80:                                               ; preds = %1
  %81 = load i32, i32* %5, align 4
  %82 = and i32 %81, 65520
  %83 = icmp eq i32 %82, 38672
  br i1 %83, label %84, label %135

84:                                               ; preds = %80
  %85 = load i32, i32* @SENSOR_OV971x, align 4
  %86 = load %struct.sd*, %struct.sd** %4, align 8
  %87 = getelementptr inbounds %struct.sd, %struct.sd* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load i8*, i8** @ov971x_mode, align 8
  %89 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %90 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  store i8* %88, i8** %91, align 8
  %92 = load i8*, i8** @ov971x_mode, align 8
  %93 = call i8* @ARRAY_SIZE(i8* %92)
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %95 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  store i8* %93, i8** %96, align 8
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %98 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %101 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 16384, i32* %102, align 4
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %104 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  store i32 2, i32* %105, align 8
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %107 = load i8*, i8** @ov971x_init, align 8
  %108 = load i8*, i8** @ov971x_init, align 8
  %109 = call i8* @ARRAY_SIZE(i8* %108)
  %110 = call i32 @sccb_w_array(%struct.gspca_dev* %106, i8* %107, i8* %109)
  %111 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %112 = call i32 @reg_w(%struct.gspca_dev* %111, i32 28, i32 0)
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %114 = call i32 @reg_w(%struct.gspca_dev* %113, i32 29, i32 0)
  %115 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %116 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %115, i32 0, i32 2
  %117 = call i8* @video_device_node_name(i32* %116)
  store i8* %117, i8** %6, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = sub nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 48
  br i1 %127, label %128, label %131

128:                                              ; preds = %84
  %129 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %130 = call i32 @reg_w(%struct.gspca_dev* %129, i32 86, i32 31)
  br label %134

131:                                              ; preds = %84
  %132 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %133 = call i32 @reg_w(%struct.gspca_dev* %132, i32 86, i32 23)
  br label %134

134:                                              ; preds = %131, %128
  br label %194

135:                                              ; preds = %80
  %136 = load i32, i32* %5, align 4
  %137 = and i32 %136, 65520
  %138 = icmp eq i32 %137, 22048
  br i1 %138, label %139, label %164

139:                                              ; preds = %135
  %140 = load i32, i32* @SENSOR_OV562x, align 4
  %141 = load %struct.sd*, %struct.sd** %4, align 8
  %142 = getelementptr inbounds %struct.sd, %struct.sd* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load i8*, i8** @ov562x_mode, align 8
  %144 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %145 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 4
  store i8* %143, i8** %146, align 8
  %147 = load i8*, i8** @ov562x_mode, align 8
  %148 = call i8* @ARRAY_SIZE(i8* %147)
  %149 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %150 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 3
  store i8* %148, i8** %151, align 8
  %152 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %153 = load i8*, i8** @ov562x_init, align 8
  %154 = load i8*, i8** @ov562x_init, align 8
  %155 = call i8* @ARRAY_SIZE(i8* %154)
  %156 = call i32 @reg_w_array(%struct.gspca_dev* %152, i8* %153, i8* %155)
  %157 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %158 = load i8*, i8** @ov562x_init_2, align 8
  %159 = load i8*, i8** @ov562x_init_2, align 8
  %160 = call i8* @ARRAY_SIZE(i8* %159)
  %161 = call i32 @sccb_w_array(%struct.gspca_dev* %157, i8* %158, i8* %160)
  %162 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %163 = call i32 @reg_w(%struct.gspca_dev* %162, i32 224, i32 0)
  br label %193

164:                                              ; preds = %135
  %165 = load i32, i32* %5, align 4
  %166 = and i32 %165, 65520
  %167 = icmp eq i32 %166, 13840
  br i1 %167, label %168, label %187

168:                                              ; preds = %164
  %169 = load i32, i32* @SENSOR_OV361x, align 4
  %170 = load %struct.sd*, %struct.sd** %4, align 8
  %171 = getelementptr inbounds %struct.sd, %struct.sd* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = load i8*, i8** @ov361x_mode, align 8
  %173 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %174 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 4
  store i8* %172, i8** %175, align 8
  %176 = load i8*, i8** @ov361x_mode, align 8
  %177 = call i8* @ARRAY_SIZE(i8* %176)
  %178 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %179 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 3
  store i8* %177, i8** %180, align 8
  %181 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %182 = call i32 @reg_w(%struct.gspca_dev* %181, i32 231, i32 58)
  %183 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %184 = call i32 @reg_w(%struct.gspca_dev* %183, i32 241, i32 96)
  %185 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %186 = call i32 @sccb_write(%struct.gspca_dev* %185, i32 18, i32 128)
  br label %192

187:                                              ; preds = %164
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %188)
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %2, align 4
  br label %199

192:                                              ; preds = %168
  br label %193

193:                                              ; preds = %192, %139
  br label %194

194:                                              ; preds = %193, %134
  br label %195

195:                                              ; preds = %194, %39
  %196 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %197 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %195, %187
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @sccb_write(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @sccb_read(%struct.gspca_dev*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @reg_w_array(%struct.gspca_dev*, i8*, i8*) #1

declare dso_local i32 @sccb_w_array(%struct.gspca_dev*, i8*, i8*) #1

declare dso_local i32 @set_led(%struct.gspca_dev*, i32) #1

declare dso_local i8* @video_device_node_name(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
