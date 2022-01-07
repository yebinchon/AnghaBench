; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sd = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64**, i32 }
%struct.gspca_dev = type { i32 }

@force_sensor = common dso_local global i64 0, align 8
@S5K83A_SENSOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Forcing a %s sensor\0A\00", align 1
@s5k83a = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Probing for a s5k83a sensor\0A\00", align 1
@preinit_s5k83a = common dso_local global i64** null, align 8
@SENSOR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Detected a s5k83a sensor\0A\00", align 1
@s5k83a_modes = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5k83a_probe(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca [2 x i64], align 16
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = bitcast %struct.sd* %10 to %struct.gspca_dev*
  store %struct.gspca_dev* %11, %struct.gspca_dev** %8, align 8
  %12 = load i64, i64* @force_sensor, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load i64, i64* @force_sensor, align 8
  %16 = load i64, i64* @S5K83A_SENSOR, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @s5k83a, i32 0, i32 0), align 4
  %20 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %118

21:                                               ; preds = %14
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %132

24:                                               ; preds = %1
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %26 = load i32, i32* @D_PROBE, align 4
  %27 = call i32 @gspca_dbg(%struct.gspca_dev* %25, i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %89, %24
  %29 = load i32, i32* %6, align 4
  %30 = load i64**, i64*** @preinit_s5k83a, align 8
  %31 = call i32 @ARRAY_SIZE(i64** %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i1 [ false, %28 ], [ %36, %33 ]
  br i1 %38, label %39, label %92

39:                                               ; preds = %37
  %40 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %41 = load i64**, i64*** @preinit_s5k83a, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64*, i64** %41, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %40, align 8
  %48 = getelementptr inbounds i64, i64* %40, i64 1
  %49 = load i64**, i64*** @preinit_s5k83a, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64*, i64** %49, i64 %51
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 3
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %48, align 8
  %56 = load i64**, i64*** @preinit_s5k83a, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64*, i64** %56, i64 %58
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SENSOR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %39
  %66 = load %struct.sd*, %struct.sd** %3, align 8
  %67 = load i64**, i64*** @preinit_s5k83a, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64*, i64** %67, i64 %69
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %75 = call i32 @m5602_write_sensor(%struct.sd* %66, i64 %73, i64* %74, i32 2)
  store i32 %75, i32* %7, align 4
  br label %88

76:                                               ; preds = %39
  %77 = load %struct.sd*, %struct.sd** %3, align 8
  %78 = load i64**, i64*** @preinit_s5k83a, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64*, i64** %78, i64 %80
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  %86 = load i64, i64* %85, align 16
  %87 = call i32 @m5602_write_bridge(%struct.sd* %77, i64 %84, i64 %86)
  store i32 %87, i32* %7, align 4
  br label %88

88:                                               ; preds = %76, %65
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %28

92:                                               ; preds = %37
  %93 = load %struct.sd*, %struct.sd** %3, align 8
  %94 = call i64 @m5602_read_sensor(%struct.sd* %93, i32 0, i64* %4, i32 1)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load i32, i32* @ENODEV, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %132

99:                                               ; preds = %92
  %100 = load %struct.sd*, %struct.sd** %3, align 8
  %101 = call i64 @m5602_read_sensor(%struct.sd* %100, i32 1, i64* %5, i32 1)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @ENODEV, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %2, align 4
  br label %132

106:                                              ; preds = %99
  %107 = load i64, i64* %4, align 8
  %108 = icmp eq i64 %107, 255
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i64, i64* %5, align 8
  %111 = icmp eq i64 %110, 255
  br i1 %111, label %112, label %115

112:                                              ; preds = %109, %106
  %113 = load i32, i32* @ENODEV, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %132

115:                                              ; preds = %109
  %116 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115
  br label %118

118:                                              ; preds = %117, %18
  %119 = load i64**, i64*** @s5k83a_modes, align 8
  %120 = load %struct.sd*, %struct.sd** %3, align 8
  %121 = getelementptr inbounds %struct.sd, %struct.sd* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i64** %119, i64*** %123, align 8
  %124 = load i64**, i64*** @s5k83a_modes, align 8
  %125 = call i32 @ARRAY_SIZE(i64** %124)
  %126 = load %struct.sd*, %struct.sd** %3, align 8
  %127 = getelementptr inbounds %struct.sd, %struct.sd* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  store i32 %125, i32* %129, align 8
  %130 = load %struct.sd*, %struct.sd** %3, align 8
  %131 = getelementptr inbounds %struct.sd, %struct.sd* %130, i32 0, i32 0
  store i32* null, i32** %131, align 8
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %118, %112, %103, %96, %21
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i64, i64*, i32) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i64, i64) #1

declare dso_local i64 @m5602_read_sensor(%struct.sd*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
