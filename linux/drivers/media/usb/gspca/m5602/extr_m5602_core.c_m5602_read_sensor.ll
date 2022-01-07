; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_core.c_m5602_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_core.c_m5602_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.gspca_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@M5602_XB_I2C_DEV_ADDR = common dso_local global i32 0, align 4
@M5602_XB_I2C_REG_ADDR = common dso_local global i32 0, align 4
@M5602_XB_I2C_CTRL = common dso_local global i32 0, align 4
@M5602_XB_I2C_DATA = common dso_local global i32 0, align 4
@D_CONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Reading sensor register 0x%x containing 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @m5602_read_sensor(%struct.sd* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.gspca_dev*, align 8
  store %struct.sd* %0, %struct.sd** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.sd*, %struct.sd** %6, align 8
  %14 = bitcast %struct.sd* %13 to %struct.gspca_dev*
  store %struct.gspca_dev* %14, %struct.gspca_dev** %12, align 8
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.sd*, %struct.sd** %6, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %18, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %17, %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %119

28:                                               ; preds = %17
  %29 = load %struct.sd*, %struct.sd** %6, align 8
  %30 = call i32 @m5602_wait_for_i2c(%struct.sd* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %119

35:                                               ; preds = %28
  %36 = load %struct.sd*, %struct.sd** %6, align 8
  %37 = load i32, i32* @M5602_XB_I2C_DEV_ADDR, align 4
  %38 = load %struct.sd*, %struct.sd** %6, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @m5602_write_bridge(%struct.sd* %36, i32 %37, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %5, align 4
  br label %119

48:                                               ; preds = %35
  %49 = load %struct.sd*, %struct.sd** %6, align 8
  %50 = load i32, i32* @M5602_XB_I2C_REG_ADDR, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @m5602_write_bridge(%struct.sd* %49, i32 %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %119

57:                                               ; preds = %48
  %58 = load %struct.sd*, %struct.sd** %6, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %76

64:                                               ; preds = %57
  %65 = load %struct.sd*, %struct.sd** %6, align 8
  %66 = load i32, i32* @M5602_XB_I2C_CTRL, align 4
  %67 = call i32 @m5602_write_bridge(%struct.sd* %65, i32 %66, i32 1)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %5, align 4
  br label %119

72:                                               ; preds = %64
  %73 = load %struct.sd*, %struct.sd** %6, align 8
  %74 = load i32, i32* @M5602_XB_I2C_CTRL, align 4
  %75 = call i32 @m5602_write_bridge(%struct.sd* %73, i32 %74, i32 8)
  store i32 %75, i32* %10, align 4
  br label %82

76:                                               ; preds = %57
  %77 = load %struct.sd*, %struct.sd** %6, align 8
  %78 = load i32, i32* @M5602_XB_I2C_CTRL, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 24, %79
  %81 = call i32 @m5602_write_bridge(%struct.sd* %77, i32 %78, i32 %80)
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %76, %72
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %114, %82
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  br label %91

91:                                               ; preds = %87, %83
  %92 = phi i1 [ false, %83 ], [ %90, %87 ]
  br i1 %92, label %93, label %117

93:                                               ; preds = %91
  %94 = load %struct.sd*, %struct.sd** %6, align 8
  %95 = call i32 @m5602_wait_for_i2c(%struct.sd* %94)
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %93
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %5, align 4
  br label %119

100:                                              ; preds = %93
  %101 = load %struct.sd*, %struct.sd** %6, align 8
  %102 = load i32, i32* @M5602_XB_I2C_DATA, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = call i32 @m5602_read_bridge(%struct.sd* %101, i32 %102, i32* %106)
  store i32 %107, i32* %10, align 4
  %108 = load %struct.gspca_dev*, %struct.gspca_dev** %12, align 8
  %109 = load i32, i32* @D_CONF, align 4
  %110 = load i32, i32* %7, align 4
  %111 = load i32*, i32** %8, align 8
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @gspca_dbg(%struct.gspca_dev* %108, i32 %109, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %112)
  br label %114

114:                                              ; preds = %100
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  br label %83

117:                                              ; preds = %91
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %5, align 4
  br label %119

119:                                              ; preds = %117, %98, %70, %55, %46, %33, %25
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @m5602_wait_for_i2c(%struct.sd*) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i32, i32) #1

declare dso_local i32 @m5602_read_bridge(%struct.sd*, i32, i32*) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
