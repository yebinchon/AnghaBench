; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_ov7660.c_ov7660_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_ov7660.c_ov7660_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.sd = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64**, i32 }

@force_sensor = common dso_local global i64 0, align 8
@OV7660_SENSOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Forcing an %s sensor\0A\00", align 1
@ov7660 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@preinit_ov7660 = common dso_local global i64** null, align 8
@BRIDGE = common dso_local global i64 0, align 8
@OV7660_PID = common dso_local global i32 0, align 4
@OV7660_VER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Sensor reported 0x%x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Detected a ov7660 sensor\0A\00", align 1
@ov7660_modes = common dso_local global i64** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ov7660_probe(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2 x i32], align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %9 = load i64, i64* @force_sensor, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i64, i64* @force_sensor, align 8
  %13 = load i64, i64* @OV7660_SENSOR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ov7660, i32 0, i32 0), align 4
  %17 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %119

18:                                               ; preds = %11
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %131

21:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %81, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i64**, i64*** @preinit_ov7660, align 8
  %25 = call i32 @ARRAY_SIZE(i64** %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i1 [ false, %22 ], [ %30, %27 ]
  br i1 %32, label %33, label %84

33:                                               ; preds = %31
  %34 = load i64**, i64*** @preinit_ov7660, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64*, i64** %34, i64 %36
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @BRIDGE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %33
  %44 = load %struct.sd*, %struct.sd** %3, align 8
  %45 = load i64**, i64*** @preinit_ov7660, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i64*, i64** %45, i64 %47
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64**, i64*** @preinit_ov7660, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64*, i64** %52, i64 %54
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 2
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @m5602_write_bridge(%struct.sd* %44, i64 %51, i64 %58)
  store i32 %59, i32* %4, align 4
  br label %80

60:                                               ; preds = %33
  %61 = load i64**, i64*** @preinit_ov7660, align 8
  %62 = load i32, i32* %5, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64*, i64** %61, i64 %63
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %68, i32* %69, align 4
  %70 = load %struct.sd*, %struct.sd** %3, align 8
  %71 = load i64**, i64*** @preinit_ov7660, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64*, i64** %71, i64 %73
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 1
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %79 = call i32 @m5602_write_sensor(%struct.sd* %70, i64 %77, i32* %78, i32 1)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %60, %43
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %5, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %5, align 4
  br label %22

84:                                               ; preds = %31
  %85 = load i32, i32* %4, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84
  %88 = load i32, i32* %4, align 4
  store i32 %88, i32* %2, align 4
  br label %131

89:                                               ; preds = %84
  %90 = load %struct.sd*, %struct.sd** %3, align 8
  %91 = load i32, i32* @OV7660_PID, align 4
  %92 = call i64 @m5602_read_sensor(%struct.sd* %90, i32 %91, i32* %6, i32 1)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load i32, i32* @ENODEV, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %131

97:                                               ; preds = %89
  %98 = load %struct.sd*, %struct.sd** %3, align 8
  %99 = load i32, i32* @OV7660_VER, align 4
  %100 = call i64 @m5602_read_sensor(%struct.sd* %98, i32 %99, i32* %7, i32 1)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @ENODEV, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %131

105:                                              ; preds = %97
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 118
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  %112 = load i32, i32* %7, align 4
  %113 = icmp eq i32 %112, 96
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %119

116:                                              ; preds = %111, %105
  %117 = load i32, i32* @ENODEV, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %131

119:                                              ; preds = %114, %15
  %120 = load i64**, i64*** @ov7660_modes, align 8
  %121 = load %struct.sd*, %struct.sd** %3, align 8
  %122 = getelementptr inbounds %struct.sd, %struct.sd* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i64** %120, i64*** %124, align 8
  %125 = load i64**, i64*** @ov7660_modes, align 8
  %126 = call i32 @ARRAY_SIZE(i64** %125)
  %127 = load %struct.sd*, %struct.sd** %3, align 8
  %128 = getelementptr inbounds %struct.sd, %struct.sd* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  store i32 %126, i32* %130, align 8
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %119, %116, %102, %94, %87, %18
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i64, i64) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i64, i32*, i32) #1

declare dso_local i64 @m5602_read_sensor(%struct.sd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
