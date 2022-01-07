; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dvb.c_mantis_frontend_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/mantis/extr_mantis_dvb.c_mantis_frontend_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mantis_pci = type { %struct.mantis_hwconfig* }
%struct.mantis_hwconfig = type { i32 }

@MANTIS_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Frontend RESET\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mantis_frontend_soft_reset(%struct.mantis_pci* %0) #0 {
  %2 = alloca %struct.mantis_pci*, align 8
  %3 = alloca %struct.mantis_hwconfig*, align 8
  store %struct.mantis_pci* %0, %struct.mantis_pci** %2, align 8
  %4 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %5 = getelementptr inbounds %struct.mantis_pci, %struct.mantis_pci* %4, i32 0, i32 0
  %6 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %5, align 8
  store %struct.mantis_hwconfig* %6, %struct.mantis_hwconfig** %3, align 8
  %7 = load i32, i32* @MANTIS_DEBUG, align 4
  %8 = call i32 @dprintk(i32 %7, i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %10 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %3, align 8
  %11 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mantis_gpio_set_bits(%struct.mantis_pci* %9, i32 %12, i32 0)
  %14 = call i32 @msleep(i32 100)
  %15 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %16 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %3, align 8
  %17 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mantis_gpio_set_bits(%struct.mantis_pci* %15, i32 %18, i32 0)
  %20 = call i32 @msleep(i32 100)
  %21 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %22 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %3, align 8
  %23 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mantis_gpio_set_bits(%struct.mantis_pci* %21, i32 %24, i32 1)
  %26 = call i32 @msleep(i32 100)
  %27 = load %struct.mantis_pci*, %struct.mantis_pci** %2, align 8
  %28 = load %struct.mantis_hwconfig*, %struct.mantis_hwconfig** %3, align 8
  %29 = getelementptr inbounds %struct.mantis_hwconfig, %struct.mantis_hwconfig* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mantis_gpio_set_bits(%struct.mantis_pci* %27, i32 %30, i32 1)
  %32 = call i32 @msleep(i32 100)
  ret void
}

declare dso_local i32 @dprintk(i32, i32, i8*) #1

declare dso_local i32 @mantis_gpio_set_bits(%struct.mantis_pci*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
