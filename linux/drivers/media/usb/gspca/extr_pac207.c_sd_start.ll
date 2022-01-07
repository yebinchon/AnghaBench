; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac207.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac207.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sd = type { i32, i64, i64, i32 }

@pac207_sensor_init = common dso_local global i32* null, align 8
@led_invert = common dso_local global i64 0, align 8
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"pac207_start mode 176x144\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"pac207_start mode 352x288\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = bitcast %struct.gspca_dev* %5 to %struct.sd*
  store %struct.sd* %6, %struct.sd** %3, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = call i32 @pac207_write_reg(%struct.gspca_dev* %7, i32 15, i32 16)
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = load i32*, i32** @pac207_sensor_init, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pac207_write_regs(%struct.gspca_dev* %9, i32 2, i32 %12, i32 8)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = load i32*, i32** @pac207_sensor_init, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @pac207_write_regs(%struct.gspca_dev* %14, i32 10, i32 %17, i32 8)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = load i32*, i32** @pac207_sensor_init, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pac207_write_regs(%struct.gspca_dev* %19, i32 18, i32 %22, i32 8)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = load i32*, i32** @pac207_sensor_init, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @pac207_write_regs(%struct.gspca_dev* %24, i32 66, i32 %27, i32 8)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 176
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = call i32 @pac207_write_reg(%struct.gspca_dev* %35, i32 74, i32 255)
  br label %40

37:                                               ; preds = %1
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = call i32 @pac207_write_reg(%struct.gspca_dev* %38, i32 74, i32 48)
  br label %40

40:                                               ; preds = %37, %34
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = call i32 @pac207_write_reg(%struct.gspca_dev* %41, i32 75, i32 0)
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = load %struct.sd*, %struct.sd** %3, align 8
  %45 = getelementptr inbounds %struct.sd, %struct.sd* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @v4l2_ctrl_g_ctrl(i32 %46)
  %48 = call i32 @pac207_write_reg(%struct.gspca_dev* %43, i32 8, i32 %47)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %51 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @v4l2_ctrl_g_ctrl(i32 %52)
  %54 = call i32 @pac207_write_reg(%struct.gspca_dev* %49, i32 14, i32 %53)
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %57 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @v4l2_ctrl_g_ctrl(i32 %58)
  %60 = call i32 @pac207_write_reg(%struct.gspca_dev* %55, i32 2, i32 %59)
  %61 = load i64, i64* @led_invert, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %65

64:                                               ; preds = %40
  store i32 2, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %63
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %67 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 176
  br i1 %70, label %71, label %77

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, 1
  store i32 %73, i32* %4, align 4
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %75 = load i32, i32* @D_STREAM, align 4
  %76 = call i32 @gspca_dbg(%struct.gspca_dev* %74, i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %81

77:                                               ; preds = %65
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = load i32, i32* @D_STREAM, align 4
  %80 = call i32 @gspca_dbg(%struct.gspca_dev* %78, i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %81

81:                                               ; preds = %77, %71
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @pac207_write_reg(%struct.gspca_dev* %82, i32 65, i32 %83)
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %86 = call i32 @pac207_write_reg(%struct.gspca_dev* %85, i32 19, i32 1)
  %87 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %88 = call i32 @pac207_write_reg(%struct.gspca_dev* %87, i32 28, i32 1)
  %89 = call i32 @msleep(i32 10)
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %91 = call i32 @pac207_write_reg(%struct.gspca_dev* %90, i32 64, i32 1)
  %92 = load %struct.sd*, %struct.sd** %3, align 8
  %93 = getelementptr inbounds %struct.sd, %struct.sd* %92, i32 0, i32 2
  store i64 0, i64* %93, align 8
  %94 = load %struct.sd*, %struct.sd** %3, align 8
  %95 = getelementptr inbounds %struct.sd, %struct.sd* %94, i32 0, i32 1
  store i64 0, i64* %95, align 8
  %96 = load %struct.sd*, %struct.sd** %3, align 8
  %97 = getelementptr inbounds %struct.sd, %struct.sd* %96, i32 0, i32 0
  %98 = call i32 @atomic_set(i32* %97, i32 -1)
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %100 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  ret i32 %101
}

declare dso_local i32 @pac207_write_reg(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @pac207_write_regs(%struct.gspca_dev*, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
