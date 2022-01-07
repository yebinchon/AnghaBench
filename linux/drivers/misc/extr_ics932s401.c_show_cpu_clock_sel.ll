; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ics932s401.c_show_cpu_clock_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ics932s401.c_show_cpu_clock_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ics932s401_data = type { i32* }

@ICS932S401_REG_CTRL = common dso_local global i64 0, align 8
@ICS932S401_MN_ENABLED = common dso_local global i32 0, align 4
@ICS932S401_REG_CFG7 = common dso_local global i64 0, align 8
@ICS932S401_FS_MASK = common dso_local global i32 0, align 4
@fs_speeds = common dso_local global i32* null, align 8
@ICS932S401_CPU_ALT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @show_cpu_clock_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_cpu_clock_sel(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ics932s401_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.ics932s401_data* @ics932s401_update_device(%struct.device* %10)
  store %struct.ics932s401_data* %11, %struct.ics932s401_data** %7, align 8
  %12 = load %struct.ics932s401_data*, %struct.ics932s401_data** %7, align 8
  %13 = getelementptr inbounds %struct.ics932s401_data, %struct.ics932s401_data* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @ICS932S401_REG_CTRL, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ICS932S401_MN_ENABLED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.ics932s401_data*, %struct.ics932s401_data** %7, align 8
  %23 = call i32 @calculate_cpu_freq(%struct.ics932s401_data* %22)
  store i32 %23, i32* %8, align 4
  br label %53

24:                                               ; preds = %3
  %25 = load %struct.ics932s401_data*, %struct.ics932s401_data** %7, align 8
  %26 = getelementptr inbounds %struct.ics932s401_data, %struct.ics932s401_data* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @ICS932S401_REG_CFG7, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ICS932S401_FS_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32*, i32** @fs_speeds, align 8
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load %struct.ics932s401_data*, %struct.ics932s401_data** %7, align 8
  %39 = getelementptr inbounds %struct.ics932s401_data, %struct.ics932s401_data* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* @ICS932S401_REG_CTRL, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @ICS932S401_CPU_ALT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %24
  %48 = load i32, i32* %8, align 4
  switch i32 %48, label %51 [
    i32 166666, label %49
    i32 333333, label %50
  ]

49:                                               ; preds = %47
  store i32 160000, i32* %8, align 4
  br label %51

50:                                               ; preds = %47
  store i32 320000, i32* %8, align 4
  br label %51

51:                                               ; preds = %47, %50, %49
  br label %52

52:                                               ; preds = %51, %24
  br label %53

53:                                               ; preds = %52, %21
  %54 = load i8*, i8** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %55)
  ret i32 %56
}

declare dso_local %struct.ics932s401_data* @ics932s401_update_device(%struct.device*) #1

declare dso_local i32 @calculate_cpu_freq(%struct.ics932s401_data*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
