; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dvb.c_mantis_frontend_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dvb.c_mantis_frontend_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { %struct.mantis_hwconfig* }
%struct.mantis_hwconfig = type { i32 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Power ON\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Power OFF\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Unknown state <%02x>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mantis_frontend_power(%struct.mantis_pci* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mantis_pci*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mantis_hwconfig*, align 8
  store %struct.mantis_pci* %0, %struct.mantis_pci** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %8 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %7, i32 0, i32 0
  %9 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %8, align 8
  store %struct.mantis_hwconfig* %9, %struct.mantis_hwconfig** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %35 [
    i32 128, label %11
    i32 129, label %26
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @MANTIS_DEBUG, align 4
  %13 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %12, i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %15 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %6, align 8
  %16 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mantis_gpio_set_bits(%struct.mantis_pci* %14, i32 %17, i32 128)
  %19 = call i32 @msleep(i32 100)
  %20 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %21 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %6, align 8
  %22 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mantis_gpio_set_bits(%struct.mantis_pci* %20, i32 %23, i32 128)
  %25 = call i32 @msleep(i32 100)
  br label %39

26:                                               ; preds = %2
  %27 = load i32, i32* @MANTIS_DEBUG, align 4
  %28 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %27, i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.mantis_pci*, %struct.mantis_pci** %4, align 8
  %30 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %6, align 8
  %31 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mantis_gpio_set_bits(%struct.mantis_pci* %29, i32 %32, i32 129)
  %34 = call i32 @msleep(i32 100)
  br label %39

35:                                               ; preds = %2
  %36 = load i32, i32* @MANTIS_DEBUG, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 (i32, i32, i8*, ...) @dprintk(i32 %36, i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %37)
  store i32 -1, i32* %3, align 4
  br label %40

39:                                               ; preds = %26, %11
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @dprintk(i32, i32, i8*, ...) #1

declare dso_local i32 @mantis_gpio_set_bits(%struct.mantis_pci*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
