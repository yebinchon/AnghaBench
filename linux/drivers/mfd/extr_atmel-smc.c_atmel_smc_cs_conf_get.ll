; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_atmel-smc.c_atmel_smc_cs_conf_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_atmel-smc.c_atmel_smc_cs_conf_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.atmel_smc_cs_conf = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atmel_smc_cs_conf_get(%struct.regmap* %0, i32 %1, %struct.atmel_smc_cs_conf* %2) #0 {
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.atmel_smc_cs_conf*, align 8
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.atmel_smc_cs_conf* %2, %struct.atmel_smc_cs_conf** %6, align 8
  %7 = load %struct.regmap*, %struct.regmap** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @ATMEL_SMC_SETUP(i32 %8)
  %10 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %6, align 8
  %11 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %10, i32 0, i32 3
  %12 = call i32 @regmap_read(%struct.regmap* %7, i32 %9, i32* %11)
  %13 = load %struct.regmap*, %struct.regmap** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @ATMEL_SMC_PULSE(i32 %14)
  %16 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %6, align 8
  %17 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %16, i32 0, i32 2
  %18 = call i32 @regmap_read(%struct.regmap* %13, i32 %15, i32* %17)
  %19 = load %struct.regmap*, %struct.regmap** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @ATMEL_SMC_CYCLE(i32 %20)
  %22 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %6, align 8
  %23 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %22, i32 0, i32 1
  %24 = call i32 @regmap_read(%struct.regmap* %19, i32 %21, i32* %23)
  %25 = load %struct.regmap*, %struct.regmap** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @ATMEL_SMC_MODE(i32 %26)
  %28 = load %struct.atmel_smc_cs_conf*, %struct.atmel_smc_cs_conf** %6, align 8
  %29 = getelementptr inbounds %struct.atmel_smc_cs_conf, %struct.atmel_smc_cs_conf* %28, i32 0, i32 0
  %30 = call i32 @regmap_read(%struct.regmap* %25, i32 %27, i32* %29)
  ret void
}

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #1

declare dso_local i32 @ATMEL_SMC_SETUP(i32) #1

declare dso_local i32 @ATMEL_SMC_PULSE(i32) #1

declare dso_local i32 @ATMEL_SMC_CYCLE(i32) #1

declare dso_local i32 @ATMEL_SMC_MODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
