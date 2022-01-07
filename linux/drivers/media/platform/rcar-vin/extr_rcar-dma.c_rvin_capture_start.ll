; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_capture_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_capture_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { i32 }

@HW_BUFFER_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Starting to capture\0A\00", align 1
@VNFC_C_FRAME = common dso_local global i32 0, align 4
@VNFC_REG = common dso_local global i32 0, align 4
@STARTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvin_dev*)* @rvin_capture_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvin_capture_start(%struct.rvin_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rvin_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %14, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @HW_BUFFER_NUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %6
  %11 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @rvin_fill_hw_slot(%struct.rvin_dev* %11, i32 %12)
  br label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %4, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %4, align 4
  br label %6

17:                                               ; preds = %6
  %18 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %19 = call i32 @rvin_crop_scale_comp(%struct.rvin_dev* %18)
  %20 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %21 = call i32 @rvin_setup(%struct.rvin_dev* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %36

26:                                               ; preds = %17
  %27 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %28 = call i32 @vin_dbg(%struct.rvin_dev* %27, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %30 = load i32, i32* @VNFC_C_FRAME, align 4
  %31 = load i32, i32* @VNFC_REG, align 4
  %32 = call i32 @rvin_write(%struct.rvin_dev* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @STARTING, align 4
  %34 = load %struct.rvin_dev*, %struct.rvin_dev** %3, align 8
  %35 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %26, %24
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @rvin_fill_hw_slot(%struct.rvin_dev*, i32) #1

declare dso_local i32 @rvin_crop_scale_comp(%struct.rvin_dev*) #1

declare dso_local i32 @rvin_setup(%struct.rvin_dev*) #1

declare dso_local i32 @vin_dbg(%struct.rvin_dev*, i8*) #1

declare dso_local i32 @rvin_write(%struct.rvin_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
