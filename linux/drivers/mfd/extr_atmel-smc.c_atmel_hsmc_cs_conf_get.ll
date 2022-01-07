; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_atmel-smc.c_atmel_hsmc_cs_conf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_atmel-smc.c_atmel_hsmc_cs_conf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.atmel_hsmc_reg_layout = type { i32 }
%struct.atmel_smc_cs_conf = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atmel_hsmc_cs_conf_get(%struct.regmap* %0, %struct.atmel_hsmc_reg_layout* %1, i32 %2, %struct.atmel_smc_cs_conf* %3) #0 {
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.atmel_hsmc_reg_layout*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.atmel_smc_cs_conf*, align 8
  store %struct.regmap* %0, %struct.regmap** %5, align 8
  store %struct.atmel_hsmc_reg_layout* %1, %struct.atmel_hsmc_reg_layout** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.atmel_smc_cs_conf* %3, %struct.atmel_smc_cs_conf** %8, align 8
  %9 = load %struct.regmap*, %struct.regmap** %5, align 8
  %10 = load %struct.atmel_hsmc_reg_layout*, %struct.atmel_hsmc_reg_layout** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @ATMEL_HSMC_SETUP(%struct.atmel_hsmc_reg_layout* %10, i32 %11)
  %13 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %14 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %13, i32 0, i32 4
  %15 = call i32 @regmap_read(%struct.regmap* %9, i32 %12, i32* %14)
  %16 = load %struct.regmap*, %struct.regmap** %5, align 8
  %17 = load %struct.atmel_hsmc_reg_layout*, %struct.atmel_hsmc_reg_layout** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ATMEL_HSMC_PULSE(%struct.atmel_hsmc_reg_layout* %17, i32 %18)
  %20 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %21 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %20, i32 0, i32 3
  %22 = call i32 @regmap_read(%struct.regmap* %16, i32 %19, i32* %21)
  %23 = load %struct.regmap*, %struct.regmap** %5, align 8
  %24 = load %struct.atmel_hsmc_reg_layout*, %struct.atmel_hsmc_reg_layout** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @ATMEL_HSMC_CYCLE(%struct.atmel_hsmc_reg_layout* %24, i32 %25)
  %27 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %28 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %27, i32 0, i32 2
  %29 = call i32 @regmap_read(%struct.regmap* %23, i32 %26, i32* %28)
  %30 = load %struct.regmap*, %struct.regmap** %5, align 8
  %31 = load %struct.atmel_hsmc_reg_layout*, %struct.atmel_hsmc_reg_layout** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ATMEL_HSMC_TIMINGS(%struct.atmel_hsmc_reg_layout* %31, i32 %32)
  %34 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %35 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %34, i32 0, i32 1
  %36 = call i32 @regmap_read(%struct.regmap* %30, i32 %33, i32* %35)
  %37 = load %struct.regmap*, %struct.regmap** %5, align 8
  %38 = load %struct.atmel_hsmc_reg_layout*, %struct.atmel_hsmc_reg_layout** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @ATMEL_HSMC_MODE(%struct.atmel_hsmc_reg_layout* %38, i32 %39)
  %41 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %8, align 8
  %42 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %41, i32 0, i32 0
  %43 = call i32 @regmap_read(%struct.regmap* %37, i32 %40, i32* %42)
  ret void
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @ATMEL_HSMC_SETUP(%struct.atmel_hsmc_reg_layout*, i32) #1

declare dso_local i32 @ATMEL_HSMC_PULSE(%struct.atmel_hsmc_reg_layout*, i32) #1

declare dso_local i32 @ATMEL_HSMC_CYCLE(%struct.atmel_hsmc_reg_layout*, i32) #1

declare dso_local i32 @ATMEL_HSMC_TIMINGS(%struct.atmel_hsmc_reg_layout*, i32) #1

declare dso_local i32 @ATMEL_HSMC_MODE(%struct.atmel_hsmc_reg_layout*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
