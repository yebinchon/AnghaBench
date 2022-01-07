; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vc032x.c_read_sensor_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_vc032x.c_read_sensor_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"I2c Bus Busy Wait %02x\0A\00", align 1
@D_PROBE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Read Sensor %02x%02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @read_sensor_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_sensor_register(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 50, i32* %9, align 4
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %11 = call i32 @reg_r(%struct.gspca_dev* %10, i32 161, i32 45887, i32 1)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 2
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %21 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 0, i32* %3, align 4
  br label %101

26:                                               ; preds = %2
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @reg_w(%struct.gspca_dev* %27, i32 160, i32 %28, i32 45882)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %31 = call i32 @reg_w(%struct.gspca_dev* %30, i32 160, i32 2, i32 45881)
  br label %32

32:                                               ; preds = %44, %26
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %34 = call i32 @reg_r(%struct.gspca_dev* %33, i32 161, i32 45883, i32 1)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %36 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %48

42:                                               ; preds = %32
  %43 = call i32 @msleep(i32 40)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %9, align 4
  %47 = icmp sge i32 %46, 0
  br i1 %47, label %32, label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %50 = call i32 @reg_r(%struct.gspca_dev* %49, i32 161, i32 45886, i32 1)
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %52 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %57 = call i32 @reg_r(%struct.gspca_dev* %56, i32 161, i32 45885, i32 1)
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %59 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %7, align 4
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %64 = call i32 @reg_r(%struct.gspca_dev* %63, i32 161, i32 45884, i32 1)
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %66 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %48
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %80 = load i32, i32* @D_PROBE, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @gspca_dbg(%struct.gspca_dev* %79, i32 %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %78, %75, %72, %48
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %87 = call i32 @reg_r(%struct.gspca_dev* %86, i32 161, i32 45876, i32 1)
  %88 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %89 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 2
  br i1 %93, label %94, label %99

94:                                               ; preds = %85
  %95 = load i32, i32* %8, align 4
  %96 = shl i32 %95, 8
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %3, align 4
  br label %101

99:                                               ; preds = %85
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %94, %19
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
