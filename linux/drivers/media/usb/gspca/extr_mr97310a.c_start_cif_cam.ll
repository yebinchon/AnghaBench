; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mr97310a.c_start_cif_cam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_mr97310a.c_start_cif_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sensor_w_data = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gspca_dev = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sd = type { i32 }

@start_cif_cam.startup_string = internal constant [11 x i32] [i32 0, i32 13, i32 1, i32 0, i32 0, i32 19, i32 0, i32 0, i32 0, i32 80, i32 192], align 16
@start_cif_cam.cif_sensor0_init_data = internal constant [14 x %struct.sensor_w_data] [%struct.sensor_w_data { i32 2, i32 0, i32 3, %struct.TYPE_4__ { i32 8, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 12, i32 0, i32 4, %struct.TYPE_4__ { i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 18, i32 0, i32 7, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 31, i32 0, i32 6, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 39, i32 0, i32 4, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 41, i32 0, i32 12, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 64, i32 0, i32 64, %struct.TYPE_4__ { i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 80, i32 0, i32 96, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 96, i32 0, i32 6, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 107, i32 0, i32 133, %struct.TYPE_4__ { i32 6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 114, i32 0, i32 30, %struct.TYPE_4__ { i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 117, i32 0, i32 88, %struct.TYPE_4__ { i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 17, i32 0, i32 1, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data zeroinitializer], align 16
@start_cif_cam.cif_sensor1_init_data = internal constant [15 x %struct.sensor_w_data] [%struct.sensor_w_data { i32 2, i32 0, i32 16, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 5, i32 1, i32 34, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 6, i32 1, i32 0, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 9, i32 2, i32 14, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 10, i32 2, i32 5, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 11, i32 2, i32 5, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 12, i32 2, i32 15, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 13, i32 2, i32 7, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 14, i32 2, i32 12, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 15, i32 0, i32 0, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 16, i32 0, i32 6, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 17, i32 0, i32 7, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 18, i32 0, i32 0, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data { i32 19, i32 0, i32 1, %struct.TYPE_4__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 } }, %struct.sensor_w_data zeroinitializer], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @start_cif_cam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_cif_cam(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %4, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @memcpy(i32* %12, i32* getelementptr inbounds ([11 x i32], [11 x i32]* @start_cif_cam.startup_string, i64 0, i64 0), i32 11)
  %14 = load %struct.sd*, %struct.sd** %4, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 5
  store i32 187, i32* %20, align 4
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %32 [
    i32 160, label %26
    i32 320, label %31
    i32 176, label %45
    i32 352, label %50
  ]

26:                                               ; preds = %21
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 9
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, 4
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %21, %26
  br label %32

32:                                               ; preds = %21, %31
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 40, i32* %34, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  store i32 60, i32* %36, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 6
  store i32 20, i32* %38, align 4
  %39 = load %struct.sd*, %struct.sd** %4, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 26, %41
  %43 = load i32*, i32** %5, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  store i32 %42, i32* %44, align 4
  br label %63

45:                                               ; preds = %21
  %46 = load i32*, i32** %5, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 9
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, 4
  store i32 %49, i32* %47, align 4
  br label %50

50:                                               ; preds = %21, %45
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 3
  store i32 44, i32* %52, align 4
  %53 = load i32*, i32** %5, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 4
  store i32 72, i32* %54, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 6
  store i32 6, i32* %56, align 4
  %57 = load %struct.sd*, %struct.sd** %4, align 8
  %58 = getelementptr inbounds %struct.sd, %struct.sd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 6, %59
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 8
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %50, %32
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %65 = call i32 @mr_write(%struct.gspca_dev* %64, i32 11)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %100

70:                                               ; preds = %63
  %71 = load %struct.sd*, %struct.sd** %4, align 8
  %72 = getelementptr inbounds %struct.sd, %struct.sd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %70
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %77 = call i32 @ARRAY_SIZE(%struct.sensor_w_data* getelementptr inbounds ([14 x %struct.sensor_w_data], [14 x %struct.sensor_w_data]* @start_cif_cam.cif_sensor0_init_data, i64 0, i64 0))
  %78 = call i32 @sensor_write_regs(%struct.gspca_dev* %76, %struct.sensor_w_data* getelementptr inbounds ([14 x %struct.sensor_w_data], [14 x %struct.sensor_w_data]* @start_cif_cam.cif_sensor0_init_data, i64 0, i64 0), i32 %77)
  store i32 %78, i32* %6, align 4
  br label %98

79:                                               ; preds = %70
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %81 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 10, i32* %83, align 4
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %85 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 0, i32* %87, align 4
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %89 = call i32 @mr_write(%struct.gspca_dev* %88, i32 2)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %79
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %100

94:                                               ; preds = %79
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %96 = call i32 @ARRAY_SIZE(%struct.sensor_w_data* getelementptr inbounds ([15 x %struct.sensor_w_data], [15 x %struct.sensor_w_data]* @start_cif_cam.cif_sensor1_init_data, i64 0, i64 0))
  %97 = call i32 @sensor_write_regs(%struct.gspca_dev* %95, %struct.sensor_w_data* getelementptr inbounds ([15 x %struct.sensor_w_data], [15 x %struct.sensor_w_data]* @start_cif_cam.cif_sensor1_init_data, i64 0, i64 0), i32 %96)
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %94, %75
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %92, %68
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @mr_write(%struct.gspca_dev*, i32) #1

declare dso_local i32 @sensor_write_regs(%struct.gspca_dev*, %struct.sensor_w_data*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sensor_w_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
