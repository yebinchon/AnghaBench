; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860-mi1320.c_mi1320_sensor_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860-mi1320.c_mi1320_sensor_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@tbl_sensor_settings_common = common dso_local global i32 0, align 4
@tbl_sensor_settings_1280 = common dso_local global i32 0, align 4
@tbl_1280 = common dso_local global i32** null, align 8
@tbl_sensor_settings_800 = common dso_local global i32 0, align 4
@tbl_800 = common dso_local global i32** null, align 8
@tbl_sensor_settings_640 = common dso_local global i32 0, align 4
@tbl_640 = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @mi1320_sensor_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mi1320_sensor_settings(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = call i32 @ctrl_out(%struct.gspca_dev* %14, i32 64, i32 5, i32 1, i32 0, i32 0, i32* null)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %17 = load i32, i32* @tbl_sensor_settings_common, align 4
  %18 = load i32, i32* @tbl_sensor_settings_common, align 4
  %19 = call i32 @ARRAY_SIZE(i32 %18)
  %20 = call i32 @fetch_validx(%struct.gspca_dev* %16, i32 %17, i32 %19)
  %21 = load i64, i64* %3, align 8
  switch i64 %21, label %64 [
    i64 129, label %22
    i64 128, label %43
  ]

22:                                               ; preds = %1
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = load i32, i32* @tbl_sensor_settings_1280, align 4
  %25 = load i32, i32* @tbl_sensor_settings_1280, align 4
  %26 = call i32 @ARRAY_SIZE(i32 %25)
  %27 = call i32 @fetch_validx(%struct.gspca_dev* %23, i32 %24, i32 %26)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = load i32**, i32*** @tbl_1280, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @ctrl_out(%struct.gspca_dev* %28, i32 64, i32 3, i32 47616, i32 512, i32 64, i32* %31)
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = load i32**, i32*** @tbl_1280, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @ctrl_out(%struct.gspca_dev* %33, i32 64, i32 3, i32 47616, i32 512, i32 40, i32* %36)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = load i32**, i32*** @tbl_1280, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @ctrl_out(%struct.gspca_dev* %38, i32 64, i32 3, i32 0, i32 512, i32 12, i32* %41)
  br label %85

43:                                               ; preds = %1
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = load i32, i32* @tbl_sensor_settings_800, align 4
  %46 = load i32, i32* @tbl_sensor_settings_800, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = call i32 @fetch_validx(%struct.gspca_dev* %44, i32 %45, i32 %47)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = load i32**, i32*** @tbl_800, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 0
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @ctrl_out(%struct.gspca_dev* %49, i32 64, i32 3, i32 47616, i32 512, i32 64, i32* %52)
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = load i32**, i32*** @tbl_800, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @ctrl_out(%struct.gspca_dev* %54, i32 64, i32 3, i32 47616, i32 512, i32 40, i32* %57)
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %60 = load i32**, i32*** @tbl_800, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @ctrl_out(%struct.gspca_dev* %59, i32 64, i32 3, i32 0, i32 512, i32 12, i32* %62)
  br label %85

64:                                               ; preds = %1
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %66 = load i32, i32* @tbl_sensor_settings_640, align 4
  %67 = load i32, i32* @tbl_sensor_settings_640, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = call i32 @fetch_validx(%struct.gspca_dev* %65, i32 %66, i32 %68)
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = load i32**, i32*** @tbl_640, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @ctrl_out(%struct.gspca_dev* %70, i32 64, i32 3, i32 47616, i32 512, i32 60, i32* %73)
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %76 = load i32**, i32*** @tbl_640, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @ctrl_out(%struct.gspca_dev* %75, i32 64, i32 3, i32 47616, i32 512, i32 40, i32* %78)
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %81 = load i32**, i32*** @tbl_640, align 8
  %82 = getelementptr inbounds i32*, i32** %81, i64 2
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @ctrl_out(%struct.gspca_dev* %80, i32 64, i32 3, i32 0, i32 512, i32 12, i32* %83)
  br label %85

85:                                               ; preds = %64, %43, %22
  ret i32 0
}

declare dso_local i32 @ctrl_out(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @fetch_validx(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
