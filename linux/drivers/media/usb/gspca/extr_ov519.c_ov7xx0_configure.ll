; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov7xx0_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov7xx0_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i8* }
%struct.gspca_dev = type { i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"starting OV7xx0 configuration\0A\00", align 1
@OV7610_REG_COM_I = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Error detecting sensor type\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Sensor is an OV76%02x\0A\00", align 1
@SEN_OV7670 = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"Sensor is an OV7610\0A\00", align 1
@SEN_OV7610 = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"Sensor is an OV7620AE\0A\00", align 1
@SEN_OV7620AE = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"Sensor is an OV76BE\0A\00", align 1
@SEN_OV76BE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"Error detecting camera chip PID\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Error detecting camera chip VER\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Sensor is an OV7630/OV7635\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"7630 is not supported by this driver\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Sensor is an OV7645\0A\00", align 1
@SEN_OV7640 = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"Sensor is an OV7645B\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Sensor is an OV7648\0A\00", align 1
@SEN_OV7648 = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [20 x i8] c"Sensor is a OV7660\0A\00", align 1
@SEN_OV7660 = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [26 x i8] c"Unknown sensor: 0x76%02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"Sensor is an OV7620\0A\00", align 1
@SEN_OV7620 = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [34 x i8] c"Unknown image sensor version: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @ov7xx0_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ov7xx0_configure(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %7 = load %struct.sd*, %struct.sd** %2, align 8
  %8 = bitcast %struct.sd* %7 to %struct.gspca_dev*
  store %struct.gspca_dev* %8, %struct.gspca_dev** %3, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %10 = load i32, i32* @D_PROBE, align 4
  %11 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %9, i32 %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.sd*, %struct.sd** %2, align 8
  %13 = load i32, i32* @OV7610_REG_COM_I, align 4
  %14 = call i32 @i2c_r(%struct.sd* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = call i32 (%struct.gspca_dev*, i8*, ...) @gspca_err(%struct.gspca_dev* %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %153

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 3
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = load %struct.sd*, %struct.sd** %2, align 8
  %26 = call i32 @i2c_r(%struct.sd* %25, i32 10)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.sd*, %struct.sd** %2, align 8
  %28 = call i32 @i2c_r(%struct.sd* %27, i32 11)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp eq i32 %29, 118
  br i1 %30, label %31, label %43

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 240
  %34 = icmp eq i32 %33, 112
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %37 = load i32, i32* @D_PROBE, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %36, i32 %37, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %38)
  %40 = load i8*, i8** @SEN_OV7670, align 8
  %41 = load %struct.sd*, %struct.sd** %2, align 8
  %42 = getelementptr inbounds %struct.sd, %struct.sd* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  br label %50

43:                                               ; preds = %31, %24
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %45 = load i32, i32* @D_PROBE, align 4
  %46 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %44, i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %47 = load i8*, i8** @SEN_OV7610, align 8
  %48 = load %struct.sd*, %struct.sd** %2, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  br label %50

50:                                               ; preds = %43, %35
  br label %153

51:                                               ; preds = %20
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, 3
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %75

55:                                               ; preds = %51
  %56 = load %struct.sd*, %struct.sd** %2, align 8
  %57 = call i32 @i2c_r(%struct.sd* %56, i32 21)
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %55
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %62 = load i32, i32* @D_PROBE, align 4
  %63 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %61, i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i8*, i8** @SEN_OV7620AE, align 8
  %65 = load %struct.sd*, %struct.sd** %2, align 8
  %66 = getelementptr inbounds %struct.sd, %struct.sd* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  br label %74

67:                                               ; preds = %55
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %69 = load i32, i32* @D_PROBE, align 4
  %70 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %68, i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %71 = load i8*, i8** @SEN_OV76BE, align 8
  %72 = load %struct.sd*, %struct.sd** %2, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %67, %60
  br label %152

75:                                               ; preds = %51
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, 3
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %146

79:                                               ; preds = %75
  %80 = load %struct.sd*, %struct.sd** %2, align 8
  %81 = call i32 @i2c_r(%struct.sd* %80, i32 10)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %86 = call i32 (%struct.gspca_dev*, i8*, ...) @gspca_err(%struct.gspca_dev* %85, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  br label %153

87:                                               ; preds = %79
  %88 = load %struct.sd*, %struct.sd** %2, align 8
  %89 = call i32 @i2c_r(%struct.sd* %88, i32 11)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %94 = call i32 (%struct.gspca_dev*, i8*, ...) @gspca_err(%struct.gspca_dev* %93, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  br label %153

95:                                               ; preds = %87
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %96, 118
  br i1 %97, label %98, label %138

98:                                               ; preds = %95
  %99 = load i32, i32* %6, align 4
  switch i32 %99, label %133 [
    i32 48, label %100
    i32 64, label %105
    i32 69, label %112
    i32 72, label %119
    i32 96, label %126
  ]

100:                                              ; preds = %98
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %102 = call i32 (%struct.gspca_dev*, i8*, ...) @gspca_err(%struct.gspca_dev* %101, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %104 = call i32 (%struct.gspca_dev*, i8*, ...) @gspca_err(%struct.gspca_dev* %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %153

105:                                              ; preds = %98
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %107 = load i32, i32* @D_PROBE, align 4
  %108 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %106, i32 %107, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %109 = load i8*, i8** @SEN_OV7640, align 8
  %110 = load %struct.sd*, %struct.sd** %2, align 8
  %111 = getelementptr inbounds %struct.sd, %struct.sd* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  br label %137

112:                                              ; preds = %98
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %114 = load i32, i32* @D_PROBE, align 4
  %115 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %113, i32 %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %116 = load i8*, i8** @SEN_OV7640, align 8
  %117 = load %struct.sd*, %struct.sd** %2, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  br label %137

119:                                              ; preds = %98
  %120 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %121 = load i32, i32* @D_PROBE, align 4
  %122 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %120, i32 %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %123 = load i8*, i8** @SEN_OV7648, align 8
  %124 = load %struct.sd*, %struct.sd** %2, align 8
  %125 = getelementptr inbounds %struct.sd, %struct.sd* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  br label %137

126:                                              ; preds = %98
  %127 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %128 = load i32, i32* @D_PROBE, align 4
  %129 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %127, i32 %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0))
  %130 = load i8*, i8** @SEN_OV7660, align 8
  %131 = load %struct.sd*, %struct.sd** %2, align 8
  %132 = getelementptr inbounds %struct.sd, %struct.sd* %131, i32 0, i32 0
  store i8* %130, i8** %132, align 8
  br label %137

133:                                              ; preds = %98
  %134 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %135 = load i32, i32* %6, align 4
  %136 = call i32 (%struct.gspca_dev*, i8*, ...) @gspca_err(%struct.gspca_dev* %134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %135)
  br label %153

137:                                              ; preds = %126, %119, %112, %105
  br label %145

138:                                              ; preds = %95
  %139 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %140 = load i32, i32* @D_PROBE, align 4
  %141 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %139, i32 %140, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  %142 = load i8*, i8** @SEN_OV7620, align 8
  %143 = load %struct.sd*, %struct.sd** %2, align 8
  %144 = getelementptr inbounds %struct.sd, %struct.sd* %143, i32 0, i32 0
  store i8* %142, i8** %144, align 8
  br label %145

145:                                              ; preds = %138, %137
  br label %151

146:                                              ; preds = %75
  %147 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %148 = load i32, i32* %4, align 4
  %149 = and i32 %148, 3
  %150 = call i32 (%struct.gspca_dev*, i8*, ...) @gspca_err(%struct.gspca_dev* %147, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %146, %145
  br label %152

152:                                              ; preds = %151, %74
  br label %153

153:                                              ; preds = %17, %84, %92, %100, %133, %152, %50
  ret void
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, ...) #1

declare dso_local i32 @i2c_r(%struct.sd*, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
