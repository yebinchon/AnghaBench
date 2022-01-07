; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64**, i32 }
%struct.gspca_dev = type { i32 }

@force_sensor = common dso_local global i64 0, align 8
@MT9M111_SENSOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"Forcing a %s sensor\0A\00", align 1
@mt9m111 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Probing for a mt9m111 sensor\0A\00", align 1
@preinit_mt9m111 = common dso_local global i64** null, align 8
@BRIDGE = common dso_local global i64 0, align 8
@MT9M111_SC_CHIPVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Detected a mt9m111 sensor\0A\00", align 1
@mt9m111_modes = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt9m111_probe(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca [2 x i32], align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gspca_dev*, align 8
  store %struct.sd* %0, %struct.sd** %3, align 8
  %8 = bitcast [2 x i32]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  store i32 0, i32* %6, align 4
  %9 = load %struct.sd*, %struct.sd** %3, align 8
  %10 = bitcast %struct.sd* %9 to %struct.gspca_dev*
  store %struct.gspca_dev* %10, %struct.gspca_dev** %7, align 8
  %11 = load i64, i64* @force_sensor, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i64, i64* @force_sensor, align 8
  %15 = load i64, i64* @MT9M111_SENSOR, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @mt9m111, i32 0, i32 0), align 4
  %19 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %123

20:                                               ; preds = %13
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %135

23:                                               ; preds = %1
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %25 = load i32, i32* @D_PROBE, align 4
  %26 = call i32 @gspca_dbg(%struct.gspca_dev* %24, i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %93, %23
  %28 = load i32, i32* %5, align 4
  %29 = load i64**, i64*** @preinit_mt9m111, align 8
  %30 = call i32 @ARRAY_SIZE(i64** %29)
  %31 = icmp slt i32 %28, %30
  br i1 %31, label %32, label %96

32:                                               ; preds = %27
  %33 = load i64**, i64*** @preinit_mt9m111, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64*, i64** %33, i64 %35
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BRIDGE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %61

42:                                               ; preds = %32
  %43 = load %struct.sd*, %struct.sd** %3, align 8
  %44 = load i64**, i64*** @preinit_mt9m111, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64*, i64** %44, i64 %46
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64**, i64*** @preinit_mt9m111, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64*, i64** %51, i64 %53
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds i64, i64* %55, i64 2
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @m5602_write_bridge(%struct.sd* %43, i64 %50, i64 %57)
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %92

61:                                               ; preds = %32
  %62 = load i64**, i64*** @preinit_mt9m111, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64*, i64** %62, i64 %64
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 2
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  store i32 %69, i32* %70, align 4
  %71 = load i64**, i64*** @preinit_mt9m111, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64*, i64** %71, i64 %73
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 3
  %77 = load i64, i64* %76, align 8
  %78 = trunc i64 %77 to i32
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  store i32 %78, i32* %79, align 4
  %80 = load %struct.sd*, %struct.sd** %3, align 8
  %81 = load i64**, i64*** @preinit_mt9m111, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64*, i64** %81, i64 %83
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 1
  %87 = load i64, i64* %86, align 8
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %89 = call i32 @m5602_write_sensor(%struct.sd* %80, i64 %87, i32* %88, i32 2)
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %61, %42
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %27

96:                                               ; preds = %27
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %2, align 4
  br label %135

101:                                              ; preds = %96
  %102 = load %struct.sd*, %struct.sd** %3, align 8
  %103 = load i32, i32* @MT9M111_SC_CHIPVER, align 4
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %105 = call i64 @m5602_read_sensor(%struct.sd* %102, i32 %103, i32* %104, i32 2)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i32, i32* @ENODEV, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %135

110:                                              ; preds = %101
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 20
  br i1 %113, label %114, label %120

114:                                              ; preds = %110
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 58
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %123

120:                                              ; preds = %114, %110
  %121 = load i32, i32* @ENODEV, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %2, align 4
  br label %135

123:                                              ; preds = %118, %17
  %124 = load i64**, i64*** @mt9m111_modes, align 8
  %125 = load %struct.sd*, %struct.sd** %3, align 8
  %126 = getelementptr inbounds %struct.sd, %struct.sd* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i64** %124, i64*** %128, align 8
  %129 = load i64**, i64*** @mt9m111_modes, align 8
  %130 = call i32 @ARRAY_SIZE(i64** %129)
  %131 = load %struct.sd*, %struct.sd** %3, align 8
  %132 = getelementptr inbounds %struct.sd, %struct.sd* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  store i32 %130, i32* %134, align 8
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %123, %120, %107, %99, %20
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pr_info(i8*, ...) #2

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #2

declare dso_local i32 @ARRAY_SIZE(i64**) #2

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i64, i64) #2

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i64, i32*, i32) #2

declare dso_local i64 @m5602_read_sensor(%struct.sd*, i32, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
