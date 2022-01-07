; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vc032x.c_vc032x_probe_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vc032x.c_vc032x_probe_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sensor_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.gspca_dev = type { i32* }
%struct.sd = type { i32, i64 }

@FL_SAMSUNG = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"vc032%d check sensor header %02x\0A\00", align 1
@BRIDGE_VC0321 = common dso_local global i64 0, align 8
@vc0321_probe_data = common dso_local global %struct.sensor_info* null, align 8
@vc0323_probe_data = common dso_local global %struct.sensor_info* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Sensor ID %04x (%d)\0A\00", align 1
@SENSOR_PO3130NC = common dso_local global i32 0, align 4
@SENSOR_OV7670 = common dso_local global i32 0, align 4
@SENSOR_MI0360 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @vc032x_probe_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc032x_probe_sensor(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sensor_info*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %4, align 8
  %11 = load %struct.sd*, %struct.sd** %4, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @FL_SAMSUNG, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = call i32 @reg_w(%struct.gspca_dev* %18, i32 160, i32 1, i32 45825)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = call i32 @reg_w(%struct.gspca_dev* %20, i32 137, i32 61695, i32 65535)
  br label %22

22:                                               ; preds = %17, %1
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = call i32 @reg_r(%struct.gspca_dev* %23, i32 161, i32 49103, i32 1)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = load i32, i32* @D_PROBE, align 4
  %27 = load %struct.sd*, %struct.sd** %4, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BRIDGE_VC0321, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 3
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gspca_dbg(%struct.gspca_dev* %25, i32 %26, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %38)
  %40 = load %struct.sd*, %struct.sd** %4, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BRIDGE_VC0321, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %22
  %46 = load %struct.sensor_info*, %struct.sensor_info** @vc0321_probe_data, align 8
  store %struct.sensor_info* %46, %struct.sensor_info** %8, align 8
  %47 = load %struct.sensor_info*, %struct.sensor_info** @vc0321_probe_data, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.sensor_info* %47)
  store i32 %48, i32* %6, align 4
  br label %53

49:                                               ; preds = %22
  %50 = load %struct.sensor_info*, %struct.sensor_info** @vc0323_probe_data, align 8
  store %struct.sensor_info* %50, %struct.sensor_info** %8, align 8
  %51 = load %struct.sensor_info*, %struct.sensor_info** @vc0323_probe_data, align 8
  %52 = call i32 @ARRAY_SIZE(%struct.sensor_info* %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %45
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %130, %53
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %133

58:                                               ; preds = %54
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %60 = call i32 @reg_w(%struct.gspca_dev* %59, i32 160, i32 2, i32 45876)
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %62 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %63 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @reg_w(%struct.gspca_dev* %61, i32 160, i32 %64, i32 45824)
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %67 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %68 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @reg_w(%struct.gspca_dev* %66, i32 160, i32 %69, i32 45824)
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %72 = call i32 @reg_w(%struct.gspca_dev* %71, i32 160, i32 1, i32 45832)
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %74 = call i32 @reg_w(%struct.gspca_dev* %73, i32 160, i32 12, i32 45833)
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %76 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %77 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @reg_w(%struct.gspca_dev* %75, i32 160, i32 %78, i32 45877)
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %81 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %82 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @reg_w(%struct.gspca_dev* %80, i32 160, i32 %83, i32 45825)
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %86 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %87 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @read_sensor_register(%struct.gspca_dev* %85, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %58
  %93 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %94 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 130
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %99 = call i32 @read_sensor_register(%struct.gspca_dev* %98, i32 131)
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %97, %92, %58
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %100
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %105 = load i32, i32* @D_PROBE, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %5, align 4
  %108 = call i32 @gspca_dbg(%struct.gspca_dev* %104, i32 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %111 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %109, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %103
  %115 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %116 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %2, align 4
  br label %134

118:                                              ; preds = %103
  %119 = load i32, i32* %7, align 4
  switch i32 %119, label %126 [
    i32 12592, label %120
    i32 30323, label %122
    i32 33347, label %124
  ]

120:                                              ; preds = %118
  %121 = load i32, i32* @SENSOR_PO3130NC, align 4
  store i32 %121, i32* %2, align 4
  br label %134

122:                                              ; preds = %118
  %123 = load i32, i32* @SENSOR_OV7670, align 4
  store i32 %123, i32* %2, align 4
  br label %134

124:                                              ; preds = %118
  %125 = load i32, i32* @SENSOR_MI0360, align 4
  store i32 %125, i32* %2, align 4
  br label %134

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126, %100
  %128 = load %struct.sensor_info*, %struct.sensor_info** %8, align 8
  %129 = getelementptr inbounds %struct.sensor_info, %struct.sensor_info* %128, i32 1
  store %struct.sensor_info* %129, %struct.sensor_info** %8, align 8
  br label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %54

133:                                              ; preds = %54
  store i32 -1, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %124, %122, %120, %114
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sensor_info*) #1

declare dso_local i32 @read_sensor_register(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
