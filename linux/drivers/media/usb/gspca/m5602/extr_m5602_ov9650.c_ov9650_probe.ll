; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_ov9650.c_ov9650_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_ov9650.c_ov9650_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64**, i64 }
%struct.gspca_dev = type { i32 }

@force_sensor = common dso_local global i64 0, align 8
@OV9650_SENSOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Forcing an %s sensor\0A\00", align 1
@ov9650 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Probing for an ov9650 sensor\0A\00", align 1
@preinit_ov9650 = common dso_local global i64** null, align 8
@SENSOR = common dso_local global i64 0, align 8
@OV9650_PID = common dso_local global i32 0, align 4
@OV9650_VER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Detected an ov9650 sensor\0A\00", align 1
@ov9650_modes = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ov9650_probe(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca i64, align 8
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = bitcast %struct.sd* %10 to %struct.gspca_dev*
  store %struct.gspca_dev* %11, %struct.gspca_dev** %8, align 8
  %12 = load i64, i64* @force_sensor, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load i64, i64* @force_sensor, align 8
  %16 = load i64, i64* @OV9650_SENSOR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ov9650, i32 0, i32 0), align 4
  %20 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %109

21:                                               ; preds = %14
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %121

24:                                               ; preds = %1
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %26 = load i32, i32* @D_PROBE, align 4
  %27 = call i32 @gspca_dbg(%struct.gspca_dev* %25, i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %7, align 8
  br label %28

28:                                               ; preds = %74, %24
  %29 = load i64, i64* %7, align 8
  %30 = load i64**, i64*** @preinit_ov9650, align 8
  %31 = call i64 @ARRAY_SIZE(i64** %30)
  %32 = icmp ult i64 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i1 [ false, %28 ], [ %36, %33 ]
  br i1 %38, label %39, label %77

39:                                               ; preds = %37
  %40 = load i64**, i64*** @preinit_ov9650, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i64*, i64** %40, i64 %41
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 2
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %9, align 8
  %46 = load i64**, i64*** @preinit_ov9650, align 8
  %47 = load i64, i64* %7, align 8
  %48 = getelementptr inbounds i64*, i64** %46, i64 %47
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SENSOR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %39
  %55 = load %struct.sd*, %struct.sd** %3, align 8
  %56 = load i64**, i64*** @preinit_ov9650, align 8
  %57 = load i64, i64* %7, align 8
  %58 = getelementptr inbounds i64*, i64** %56, i64 %57
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @m5602_write_sensor(%struct.sd* %55, i64 %61, i64* %9, i32 1)
  store i32 %62, i32* %4, align 4
  br label %73

63:                                               ; preds = %39
  %64 = load %struct.sd*, %struct.sd** %3, align 8
  %65 = load i64**, i64*** @preinit_ov9650, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds i64*, i64** %65, i64 %66
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @m5602_write_bridge(%struct.sd* %64, i64 %70, i64 %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %63, %54
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %7, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %7, align 8
  br label %28

77:                                               ; preds = %37
  %78 = load i32, i32* %4, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %121

82:                                               ; preds = %77
  %83 = load %struct.sd*, %struct.sd** %3, align 8
  %84 = load i32, i32* @OV9650_PID, align 4
  %85 = call i64 @m5602_read_sensor(%struct.sd* %83, i32 %84, i64* %5, i32 1)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @ENODEV, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %2, align 4
  br label %121

90:                                               ; preds = %82
  %91 = load %struct.sd*, %struct.sd** %3, align 8
  %92 = load i32, i32* @OV9650_VER, align 4
  %93 = call i64 @m5602_read_sensor(%struct.sd* %91, i32 %92, i64* %6, i32 1)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %121

98:                                               ; preds = %90
  %99 = load i64, i64* %5, align 8
  %100 = icmp eq i64 %99, 150
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i64, i64* %6, align 8
  %103 = icmp eq i64 %102, 82
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %109

106:                                              ; preds = %101, %98
  %107 = load i32, i32* @ENODEV, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %2, align 4
  br label %121

109:                                              ; preds = %104, %18
  %110 = load i64**, i64*** @ov9650_modes, align 8
  %111 = load %struct.sd*, %struct.sd** %3, align 8
  %112 = getelementptr inbounds %struct.sd, %struct.sd* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  store i64** %110, i64*** %114, align 8
  %115 = load i64**, i64*** @ov9650_modes, align 8
  %116 = call i64 @ARRAY_SIZE(i64** %115)
  %117 = load %struct.sd*, %struct.sd** %3, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  store i64 %116, i64* %120, align 8
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %109, %106, %95, %87, %80, %21
  %122 = load i32, i32* %2, align 4
  ret i32 %122
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
