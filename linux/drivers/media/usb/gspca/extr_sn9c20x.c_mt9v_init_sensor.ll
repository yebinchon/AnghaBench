; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_mt9v_init_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_mt9v_init_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32, i32 }

@mt9v011_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"MT9V011 sensor initialization failed\0A\00", align 1
@SENSOR_MT9V011 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"MT9V011 sensor detected\0A\00", align 1
@mt9v111_init = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"MT9V111 sensor initialization failed\0A\00", align 1
@SENSOR_MT9V111 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"MT9V111 sensor detected\0A\00", align 1
@mt9v112_init = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"MT9V112 sensor initialization failed\0A\00", align 1
@SENSOR_MT9V112 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"MT9V112 sensor detected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @mt9v_init_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt9v_init_sensor(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  store i32 93, i32* %8, align 4
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = call i32 @i2c_r2(%struct.gspca_dev* %9, i32 255, i32* %4)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 33347
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = load i32, i32* @mt9v011_init, align 4
  %21 = load i32, i32* @mt9v011_init, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = call i32 @i2c_w2_buf(%struct.gspca_dev* %19, i32 %20, i32 %22)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %130

30:                                               ; preds = %18
  %31 = load %struct.sd*, %struct.sd** %3, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 1
  store i32 2, i32* %32, align 4
  %33 = load %struct.sd*, %struct.sd** %3, align 8
  %34 = getelementptr inbounds %struct.sd, %struct.sd* %33, i32 0, i32 2
  store i32 2, i32* %34, align 4
  %35 = load i32, i32* @SENSOR_MT9V011, align 4
  %36 = load %struct.sd*, %struct.sd** %3, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %130

39:                                               ; preds = %15, %1
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load %struct.sd*, %struct.sd** %3, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 0
  store i32 92, i32* %43, align 4
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = call i32 @i2c_w2(%struct.gspca_dev* %44, i32 1, i32 4)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = call i32 @i2c_r2(%struct.gspca_dev* %46, i32 255, i32* %4)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %39
  %53 = load i32, i32* %4, align 4
  %54 = icmp eq i32 %53, 33338
  br i1 %54, label %55, label %76

55:                                               ; preds = %52
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = load i32, i32* @mt9v111_init, align 4
  %58 = load i32, i32* @mt9v111_init, align 4
  %59 = call i32 @ARRAY_SIZE(i32 %58)
  %60 = call i32 @i2c_w2_buf(%struct.gspca_dev* %56, i32 %57, i32 %59)
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %130

67:                                               ; preds = %55
  %68 = load %struct.sd*, %struct.sd** %3, align 8
  %69 = getelementptr inbounds %struct.sd, %struct.sd* %68, i32 0, i32 1
  store i32 2, i32* %69, align 4
  %70 = load %struct.sd*, %struct.sd** %3, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 2
  store i32 2, i32* %71, align 4
  %72 = load i32, i32* @SENSOR_MT9V111, align 4
  %73 = load %struct.sd*, %struct.sd** %3, align 8
  %74 = getelementptr inbounds %struct.sd, %struct.sd* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %130

76:                                               ; preds = %52, %39
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %78 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %77, i32 0, i32 0
  store i32 0, i32* %78, align 4
  %79 = load %struct.sd*, %struct.sd** %3, align 8
  %80 = getelementptr inbounds %struct.sd, %struct.sd* %79, i32 0, i32 0
  store i32 93, i32* %80, align 4
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %82 = call i32 @i2c_w2(%struct.gspca_dev* %81, i32 240, i32 0)
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %84 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %76
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %89 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %88, i32 0, i32 0
  store i32 0, i32* %89, align 4
  %90 = load %struct.sd*, %struct.sd** %3, align 8
  %91 = getelementptr inbounds %struct.sd, %struct.sd* %90, i32 0, i32 0
  store i32 72, i32* %91, align 4
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %93 = call i32 @i2c_w2(%struct.gspca_dev* %92, i32 240, i32 0)
  br label %94

94:                                               ; preds = %87, %76
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %96 = call i32 @i2c_r2(%struct.gspca_dev* %95, i32 0, i32* %4)
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %98 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %125

101:                                              ; preds = %94
  %102 = load i32, i32* %4, align 4
  %103 = icmp eq i32 %102, 4649
  br i1 %103, label %104, label %125

104:                                              ; preds = %101
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %106 = load i32, i32* @mt9v112_init, align 4
  %107 = load i32, i32* @mt9v112_init, align 4
  %108 = call i32 @ARRAY_SIZE(i32 %107)
  %109 = call i32 @i2c_w2_buf(%struct.gspca_dev* %105, i32 %106, i32 %108)
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %111 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %104
  %115 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %130

116:                                              ; preds = %104
  %117 = load %struct.sd*, %struct.sd** %3, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 1
  store i32 6, i32* %118, align 4
  %119 = load %struct.sd*, %struct.sd** %3, align 8
  %120 = getelementptr inbounds %struct.sd, %struct.sd* %119, i32 0, i32 2
  store i32 2, i32* %120, align 4
  %121 = load i32, i32* @SENSOR_MT9V112, align 4
  %122 = load %struct.sd*, %struct.sd** %3, align 8
  %123 = getelementptr inbounds %struct.sd, %struct.sd* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  br label %130

125:                                              ; preds = %101, %94
  %126 = load i32, i32* @ENODEV, align 4
  %127 = sub nsw i32 0, %126
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %129 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %125, %116, %114, %67, %65, %30, %28
  ret void
}

declare dso_local i32 @i2c_r2(%struct.gspca_dev*, i32, i32*) #1

declare dso_local i32 @i2c_w2_buf(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @i2c_w2(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
