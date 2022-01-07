; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_po1030.c_po1030_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_po1030.c_po1030_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64**, i64 }
%struct.gspca_dev = type { i32 }

@force_sensor = common dso_local global i64 0, align 8
@PO1030_SENSOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Forcing a %s sensor\0A\00", align 1
@po1030 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Probing for a po1030 sensor\0A\00", align 1
@preinit_po1030 = common dso_local global i64** null, align 8
@SENSOR = common dso_local global i64 0, align 8
@PO1030_DEVID_H = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Detected a po1030 sensor\0A\00", align 1
@po1030_modes = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @po1030_probe(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gspca_dev*, align 8
  %8 = alloca i64, align 8
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %9 = load %struct.sd*, %struct.sd** %3, align 8
  %10 = bitcast %struct.sd* %9 to %struct.gspca_dev*
  store %struct.gspca_dev* %10, %struct.gspca_dev** %7, align 8
  %11 = load i64, i64* @force_sensor, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i64, i64* @force_sensor, align 8
  %15 = load i64, i64* @PO1030_SENSOR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @po1030, i32 0, i32 0), align 4
  %19 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %95

20:                                               ; preds = %13
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %107

23:                                               ; preds = %1
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %25 = load i32, i32* @D_PROBE, align 4
  %26 = call i32 @gspca_dbg(%struct.gspca_dev* %24, i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %27

27:                                               ; preds = %71, %23
  %28 = load i64, i64* %6, align 8
  %29 = load i64**, i64*** @preinit_po1030, align 8
  %30 = call i64 @ARRAY_SIZE(i64** %29)
  %31 = icmp ult i64 %28, %30
  br i1 %31, label %32, label %74

32:                                               ; preds = %27
  %33 = load i64**, i64*** @preinit_po1030, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i64*, i64** %33, i64 %34
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %8, align 8
  %39 = load i64**, i64*** @preinit_po1030, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i64*, i64** %39, i64 %40
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SENSOR, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %32
  %48 = load %struct.sd*, %struct.sd** %3, align 8
  %49 = load i64**, i64*** @preinit_po1030, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i64*, i64** %49, i64 %50
  %52 = load i64*, i64** %51, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @m5602_write_sensor(%struct.sd* %48, i64 %54, i64* %8, i32 1)
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %4, align 4
  br label %70

58:                                               ; preds = %32
  %59 = load %struct.sd*, %struct.sd** %3, align 8
  %60 = load i64**, i64*** @preinit_po1030, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds i64*, i64** %60, i64 %61
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @m5602_write_bridge(%struct.sd* %59, i64 %65, i64 %66)
  %68 = load i32, i32* %4, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %58, %47
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %6, align 8
  br label %27

74:                                               ; preds = %27
  %75 = load i32, i32* %4, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %107

79:                                               ; preds = %74
  %80 = load %struct.sd*, %struct.sd** %3, align 8
  %81 = load i32, i32* @PO1030_DEVID_H, align 4
  %82 = call i64 @m5602_read_sensor(%struct.sd* %80, i32 %81, i64* %5, i32 1)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @ENODEV, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %107

87:                                               ; preds = %79
  %88 = load i64, i64* %5, align 8
  %89 = icmp eq i64 %88, 48
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %95

92:                                               ; preds = %87
  %93 = load i32, i32* @ENODEV, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %107

95:                                               ; preds = %90, %17
  %96 = load i64**, i64*** @po1030_modes, align 8
  %97 = load %struct.sd*, %struct.sd** %3, align 8
  %98 = getelementptr inbounds %struct.sd, %struct.sd* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  store i64** %96, i64*** %100, align 8
  %101 = load i64**, i64*** @po1030_modes, align 8
  %102 = call i64 @ARRAY_SIZE(i64** %101)
  %103 = load %struct.sd*, %struct.sd** %3, align 8
  %104 = getelementptr inbounds %struct.sd, %struct.sd* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  store i64 %102, i64* %106, align 8
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %95, %92, %84, %77, %20
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i64 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i64, i64*, i32) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i64, i64) #1

declare dso_local i64 @m5602_read_sensor(%struct.sd*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
