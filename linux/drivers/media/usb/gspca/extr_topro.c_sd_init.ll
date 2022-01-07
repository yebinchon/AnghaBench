; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_sd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_sd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32, i32 }
%struct.gspca_dev = type { i32* }
%struct.sd = type { i64, i32 }

@sd_init.tp6800_preinit = internal constant [6 x %struct.cmd] [%struct.cmd { i32 134, i32 1 }, %struct.cmd { i32 133, i32 1 }, %struct.cmd { i32 132, i32 159 }, %struct.cmd { i32 131, i32 159 }, %struct.cmd { i32 130, i32 128 }, %struct.cmd { i32 129, i32 64 }], align 16
@sd_init.tp6810_preinit = internal constant [5 x %struct.cmd] [%struct.cmd { i32 128, i32 47 }, %struct.cmd { i32 132, i32 111 }, %struct.cmd { i32 131, i32 64 }, %struct.cmd { i32 130, i32 159 }, %struct.cmd { i32 129, i32 193 }], align 16
@BRIDGE_TP6800 = common dso_local global i64 0, align 8
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"gpio: %02x\0A\00", align 1
@force_sensor = common dso_local global i64 0, align 8
@SENSOR_SOI763A = common dso_local global i8* null, align 8
@SENSOR_CX0342 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unknown sensor %d - forced to soi763a\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Sensor soi763a\0A\00", align 1
@BRIDGE_TP6810 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Sensor cx0342\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.sd*, %struct.sd** %3, align 8
  %8 = getelementptr inbounds %struct.sd, %struct.sd* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BRIDGE_TP6800, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([6 x %struct.cmd], [6 x %struct.cmd]* @sd_init.tp6800_preinit, i64 0, i64 0))
  %15 = call i32 @reg_w_buf(%struct.gspca_dev* %13, %struct.cmd* getelementptr inbounds ([6 x %struct.cmd], [6 x %struct.cmd]* @sd_init.tp6800_preinit, i64 0, i64 0), i32 %14)
  br label %20

16:                                               ; preds = %1
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([5 x %struct.cmd], [5 x %struct.cmd]* @sd_init.tp6810_preinit, i64 0, i64 0))
  %19 = call i32 @reg_w_buf(%struct.gspca_dev* %17, %struct.cmd* getelementptr inbounds ([5 x %struct.cmd], [5 x %struct.cmd]* @sd_init.tp6810_preinit, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %12
  %21 = call i32 @msleep(i32 15)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = call i32 @reg_r(%struct.gspca_dev* %22, i32 129)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = load i32, i32* @D_PROBE, align 4
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @gspca_dbg(%struct.gspca_dev* %24, i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* @force_sensor, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %20
  %35 = load i64, i64* @force_sensor, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.sd*, %struct.sd** %3, align 8
  %38 = getelementptr inbounds %struct.sd, %struct.sd* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %78

39:                                               ; preds = %20
  %40 = load %struct.sd*, %struct.sd** %3, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BRIDGE_TP6800, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %39
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 7
  switch i32 %51, label %61 [
    i32 0, label %52
    i32 1, label %57
  ]

52:                                               ; preds = %45
  %53 = load i8*, i8** @SENSOR_SOI763A, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = load %struct.sd*, %struct.sd** %3, align 8
  %56 = getelementptr inbounds %struct.sd, %struct.sd* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  br label %61

57:                                               ; preds = %45
  %58 = load i32, i32* @SENSOR_CX0342, align 4
  %59 = load %struct.sd*, %struct.sd** %3, align 8
  %60 = getelementptr inbounds %struct.sd, %struct.sd* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %45, %57, %52
  br label %77

62:                                               ; preds = %39
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %64 = call i32 @probe_6810(%struct.gspca_dev* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 0, %68
  %70 = call i32 @pr_warn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i8*, i8** @SENSOR_SOI763A, align 8
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.sd*, %struct.sd** %3, align 8
  %76 = getelementptr inbounds %struct.sd, %struct.sd* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %61
  br label %78

78:                                               ; preds = %77, %34
  %79 = load %struct.sd*, %struct.sd** %3, align 8
  %80 = getelementptr inbounds %struct.sd, %struct.sd* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = load i8*, i8** @SENSOR_SOI763A, align 8
  %85 = icmp eq i8* %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %78
  %87 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.sd*, %struct.sd** %3, align 8
  %89 = getelementptr inbounds %struct.sd, %struct.sd* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @BRIDGE_TP6810, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %95 = call i32 @soi763a_6810_init(%struct.gspca_dev* %94)
  br label %96

96:                                               ; preds = %93, %86
  br label %108

97:                                               ; preds = %78
  %98 = call i32 @pr_info(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %99 = load %struct.sd*, %struct.sd** %3, align 8
  %100 = getelementptr inbounds %struct.sd, %struct.sd* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @BRIDGE_TP6810, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %97
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %106 = call i32 @cx0342_6810_init(%struct.gspca_dev* %105)
  br label %107

107:                                              ; preds = %104, %97
  br label %108

108:                                              ; preds = %107, %96
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %110 = call i32 @set_dqt(%struct.gspca_dev* %109, i32 0)
  ret i32 0
}

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, %struct.cmd*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.cmd*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

declare dso_local i32 @probe_6810(%struct.gspca_dev*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @soi763a_6810_init(%struct.gspca_dev*) #1

declare dso_local i32 @cx0342_6810_init(%struct.gspca_dev*) #1

declare dso_local i32 @set_dqt(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
