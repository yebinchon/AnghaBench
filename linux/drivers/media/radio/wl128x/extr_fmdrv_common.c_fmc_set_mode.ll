; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fmc_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fmc_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i32 }

@FM_MODE_ENTRY_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid FM mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Already fm is in mode(%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to set OFF mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to load firmware\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Loading default rx configuration..\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to load default values\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fmc_set_mode(%struct.fmdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @FM_MODE_ENTRY_MAX, align 4
  %9 = icmp sge i32 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = call i32 @fmerr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %79

14:                                               ; preds = %2
  %15 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %16 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i8*, ...) @fmdbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %79

24:                                               ; preds = %14
  %25 = load i32, i32* %5, align 4
  switch i32 %25, label %60 [
    i32 130, label %26
    i32 128, label %35
    i32 129, label %35
  ]

26:                                               ; preds = %24
  %27 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %28 = call i32 @fm_power_down(%struct.fmdev* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = call i32 @fmerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %79

34:                                               ; preds = %26
  br label %60

35:                                               ; preds = %24, %24
  %36 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %37 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 130
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %42 = call i32 @fm_power_down(%struct.fmdev* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = call i32 @fmerr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %79

48:                                               ; preds = %40
  %49 = call i32 @msleep(i32 30)
  br label %50

50:                                               ; preds = %48, %35
  %51 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @fm_power_up(%struct.fmdev* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = call i32 @fmerr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %79

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %24, %34
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %63 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %65 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 129
  br i1 %67, label %68, label %77

68:                                               ; preds = %60
  %69 = call i32 (i8*, ...) @fmdbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %70 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %71 = call i32 @load_default_rx_configuration(%struct.fmdev* %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = call i32 @fmerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %68
  br label %77

77:                                               ; preds = %76, %60
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %77, %56, %45, %31, %20, %10
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @fmerr(i8*) #1

declare dso_local i32 @fmdbg(i8*, ...) #1

declare dso_local i32 @fm_power_down(%struct.fmdev*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @fm_power_up(%struct.fmdev*, i32) #1

declare dso_local i32 @load_default_rx_configuration(%struct.fmdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
