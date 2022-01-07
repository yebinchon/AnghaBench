; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860-ov2640.c_ov2640_init_post_alt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/gl860/extr_gl860-ov2640.c_ov2640_init_post_alt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@tbl_sensor_settings_common1 = common dso_local global i32 0, align 4
@dat_post = common dso_local global i32* null, align 8
@tbl_640 = common dso_local global i32 0, align 4
@dat_640 = common dso_local global i32* null, align 8
@tbl_800 = common dso_local global i32 0, align 4
@dat_800 = common dso_local global i32* null, align 8
@tbl_big1 = common dso_local global i32 0, align 4
@tbl_big2 = common dso_local global i32 0, align 4
@tbl_big3 = common dso_local global i32 0, align 4
@dat_1280 = common dso_local global i32* null, align 8
@dat_1600 = common dso_local global i32* null, align 8
@tbl_sensor_settings_common2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @ov2640_init_post_alt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2640_init_post_alt(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %3, align 8
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %16 = call i32 @ctrl_out(%struct.gspca_dev* %15, i32 64, i32 5, i32 1, i32 0, i32 0, i32* null)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = load i32, i32* @tbl_sensor_settings_common1, align 4
  %19 = load i32, i32* @tbl_sensor_settings_common1, align 4
  %20 = call i32 @ARRAY_SIZE(i32 %19)
  %21 = call i64 @fetch_validx(%struct.gspca_dev* %17, i32 %18, i32 %20)
  store i64 %21, i64* %4, align 8
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = load i32*, i32** @dat_post, align 8
  %24 = call i32 @ctrl_out(%struct.gspca_dev* %22, i32 64, i32 3, i32 0, i32 512, i32 12, i32* %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = call i32 @common(%struct.gspca_dev* %25)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = load i32, i32* @tbl_sensor_settings_common1, align 4
  %29 = load i32, i32* @tbl_sensor_settings_common1, align 4
  %30 = call i32 @ARRAY_SIZE(i32 %29)
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @keep_on_fetching_validx(%struct.gspca_dev* %27, i32 %28, i32 %30, i64 %31)
  %33 = load i64, i64* %3, align 8
  switch i64 %33, label %98 [
    i64 129, label %34
    i64 128, label %43
    i64 130, label %52
    i64 131, label %52
  ]

34:                                               ; preds = %1
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = load i32, i32* @tbl_640, align 4
  %37 = load i32, i32* @tbl_640, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = call i64 @fetch_validx(%struct.gspca_dev* %35, i32 %36, i32 %38)
  store i64 %39, i64* %4, align 8
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = load i32*, i32** @dat_640, align 8
  %42 = call i32 @ctrl_out(%struct.gspca_dev* %40, i32 64, i32 3, i32 0, i32 512, i32 12, i32* %41)
  br label %98

43:                                               ; preds = %1
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %45 = load i32, i32* @tbl_800, align 4
  %46 = load i32, i32* @tbl_800, align 4
  %47 = call i32 @ARRAY_SIZE(i32 %46)
  %48 = call i64 @fetch_validx(%struct.gspca_dev* %44, i32 %45, i32 %47)
  store i64 %48, i64* %4, align 8
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = load i32*, i32** @dat_800, align 8
  %51 = call i32 @ctrl_out(%struct.gspca_dev* %49, i32 64, i32 3, i32 0, i32 512, i32 12, i32* %50)
  br label %98

52:                                               ; preds = %1, %1
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %54 = load i32, i32* @tbl_big1, align 4
  %55 = load i32, i32* @tbl_big1, align 4
  %56 = call i32 @ARRAY_SIZE(i32 %55)
  %57 = call i64 @fetch_validx(%struct.gspca_dev* %53, i32 %54, i32 %56)
  store i64 %57, i64* %4, align 8
  %58 = load i64, i64* %3, align 8
  %59 = icmp eq i64 %58, 131
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = load i32, i32* @tbl_big2, align 4
  %63 = load i32, i32* @tbl_big2, align 4
  %64 = call i32 @ARRAY_SIZE(i32 %63)
  %65 = call i64 @fetch_validx(%struct.gspca_dev* %61, i32 %62, i32 %64)
  store i64 %65, i64* %4, align 8
  br label %73

66:                                               ; preds = %52
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %68 = call i32 @ctrl_out(%struct.gspca_dev* %67, i32 64, i32 1, i32 24605, i32 134, i32 0, i32* null)
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %70 = call i32 @ctrl_out(%struct.gspca_dev* %69, i32 64, i32 1, i32 24577, i32 215, i32 0, i32* null)
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %72 = call i32 @ctrl_out(%struct.gspca_dev* %71, i32 64, i32 1, i32 24706, i32 211, i32 0, i32* null)
  br label %73

73:                                               ; preds = %66, %60
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %75 = load i32, i32* @tbl_big3, align 4
  %76 = load i32, i32* @tbl_big3, align 4
  %77 = call i32 @ARRAY_SIZE(i32 %76)
  %78 = call i64 @fetch_validx(%struct.gspca_dev* %74, i32 %75, i32 %77)
  store i64 %78, i64* %4, align 8
  %79 = load i64, i64* %3, align 8
  %80 = icmp eq i64 %79, 131
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %83 = call i32 @ctrl_out(%struct.gspca_dev* %82, i32 64, i32 1, i32 24577, i32 255, i32 0, i32* null)
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %85 = load i32*, i32** @dat_1280, align 8
  %86 = call i32 @ctrl_out(%struct.gspca_dev* %84, i32 64, i32 3, i32 0, i32 512, i32 12, i32* %85)
  br label %97

87:                                               ; preds = %73
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %89 = call i32 @ctrl_out(%struct.gspca_dev* %88, i32 64, i32 1, i32 24608, i32 140, i32 0, i32* null)
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %91 = call i32 @ctrl_out(%struct.gspca_dev* %90, i32 64, i32 1, i32 24577, i32 255, i32 0, i32* null)
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %93 = call i32 @ctrl_out(%struct.gspca_dev* %92, i32 64, i32 1, i32 24694, i32 24, i32 0, i32* null)
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %95 = load i32*, i32** @dat_1600, align 8
  %96 = call i32 @ctrl_out(%struct.gspca_dev* %94, i32 64, i32 3, i32 0, i32 512, i32 12, i32* %95)
  br label %97

97:                                               ; preds = %87, %81
  br label %98

98:                                               ; preds = %1, %97, %43, %34
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %100 = load i32, i32* @tbl_sensor_settings_common2, align 4
  %101 = load i32, i32* @tbl_sensor_settings_common2, align 4
  %102 = call i32 @ARRAY_SIZE(i32 %101)
  %103 = call i64 @fetch_validx(%struct.gspca_dev* %99, i32 %100, i32 %102)
  store i64 %103, i64* %4, align 8
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %105 = call i32 @ov2640_camera_settings(%struct.gspca_dev* %104)
  ret i32 0
}

declare dso_local i32 @ctrl_out(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @fetch_validx(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @common(%struct.gspca_dev*) #1

declare dso_local i32 @keep_on_fetching_validx(%struct.gspca_dev*, i32, i32, i64) #1

declare dso_local i32 @ov2640_camera_settings(%struct.gspca_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
