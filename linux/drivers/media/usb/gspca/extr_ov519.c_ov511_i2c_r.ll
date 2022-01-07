; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov511_i2c_r.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_ov511_i2c_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }
%struct.gspca_dev = type { i32 }

@R51x_I2C_SADDR_2 = common dso_local global i32 0, align 4
@R511_I2C_CTL = common dso_local global i32 0, align 4
@D_USBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"i2c write retries exhausted\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"i2c read retries exhausted\0A\00", align 1
@R51x_I2C_DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"ov511_i2c_r %02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i32)* @ov511_i2c_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov511_i2c_r(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gspca_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.sd*, %struct.sd** %4, align 8
  %11 = bitcast %struct.sd* %10 to %struct.gspca_dev*
  store %struct.gspca_dev* %11, %struct.gspca_dev** %6, align 8
  store i32 6, i32* %9, align 4
  br label %12

12:                                               ; preds = %54, %2
  %13 = load %struct.sd*, %struct.sd** %4, align 8
  %14 = load i32, i32* @R51x_I2C_SADDR_2, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @reg_w(%struct.sd* %13, i32 %14, i32 %15)
  %17 = load %struct.sd*, %struct.sd** %4, align 8
  %18 = load i32, i32* @R511_I2C_CTL, align 4
  %19 = call i32 @reg_w(%struct.sd* %17, i32 %18, i32 3)
  br label %20

20:                                               ; preds = %31, %12
  %21 = load %struct.sd*, %struct.sd** %4, align 8
  %22 = load i32, i32* @R511_I2C_CTL, align 4
  %23 = call i32 @reg_r(%struct.sd* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i1 [ false, %24 ], [ %30, %27 ]
  br i1 %32, label %20, label %33

33:                                               ; preds = %31
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %108

38:                                               ; preds = %33
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %55

43:                                               ; preds = %38
  %44 = load %struct.sd*, %struct.sd** %4, align 8
  %45 = load i32, i32* @R511_I2C_CTL, align 4
  %46 = call i32 @reg_w(%struct.sd* %44, i32 %45, i32 16)
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %52 = load i32, i32* @D_USBI, align 4
  %53 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %51, i32 %52, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %108

54:                                               ; preds = %43
  br label %12

55:                                               ; preds = %42
  store i32 6, i32* %9, align 4
  br label %56

56:                                               ; preds = %94, %55
  %57 = load %struct.sd*, %struct.sd** %4, align 8
  %58 = load i32, i32* @R511_I2C_CTL, align 4
  %59 = call i32 @reg_w(%struct.sd* %57, i32 %58, i32 5)
  br label %60

60:                                               ; preds = %71, %56
  %61 = load %struct.sd*, %struct.sd** %4, align 8
  %62 = load i32, i32* @R511_I2C_CTL, align 4
  %63 = call i32 @reg_r(%struct.sd* %61, i32 %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br label %71

71:                                               ; preds = %67, %64
  %72 = phi i1 [ false, %64 ], [ %70, %67 ]
  br i1 %72, label %60, label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %7, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = load i32, i32* %7, align 4
  store i32 %77, i32* %3, align 4
  br label %108

78:                                               ; preds = %73
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %95

83:                                               ; preds = %78
  %84 = load %struct.sd*, %struct.sd** %4, align 8
  %85 = load i32, i32* @R511_I2C_CTL, align 4
  %86 = call i32 @reg_w(%struct.sd* %84, i32 %85, i32 16)
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %9, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %83
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %92 = load i32, i32* @D_USBI, align 4
  %93 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %91, i32 %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %108

94:                                               ; preds = %83
  br label %56

95:                                               ; preds = %82
  %96 = load %struct.sd*, %struct.sd** %4, align 8
  %97 = load i32, i32* @R51x_I2C_DATA, align 4
  %98 = call i32 @reg_r(%struct.sd* %96, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %100 = load i32, i32* @D_USBI, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 (%struct.gspca_dev*, i32, i8*, ...) @gspca_dbg(%struct.gspca_dev* %99, i32 %100, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load %struct.sd*, %struct.sd** %4, align 8
  %105 = load i32, i32* @R511_I2C_CTL, align 4
  %106 = call i32 @reg_w(%struct.sd* %104, i32 %105, i32 5)
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %95, %90, %76, %50, %36
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @reg_w(%struct.sd*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.sd*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
