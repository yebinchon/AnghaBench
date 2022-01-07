; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_cs_bool_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_cs_bool_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmc_bool_timings = type { i32, i32, i32, i32, i32, i32, i32 }

@GPMC_CS_CONFIG1 = common dso_local global i32 0, align 4
@GPMC_CONFIG1_TIME_PARA_GRAN = common dso_local global i32 0, align 4
@GPMC_CS_CONFIG2 = common dso_local global i32 0, align 4
@GPMC_CONFIG2_CSEXTRADELAY = common dso_local global i32 0, align 4
@GPMC_CS_CONFIG3 = common dso_local global i32 0, align 4
@GPMC_CONFIG3_ADVEXTRADELAY = common dso_local global i32 0, align 4
@GPMC_CS_CONFIG4 = common dso_local global i32 0, align 4
@GPMC_CONFIG4_OEEXTRADELAY = common dso_local global i32 0, align 4
@GPMC_CONFIG4_WEEXTRADELAY = common dso_local global i32 0, align 4
@GPMC_CS_CONFIG6 = common dso_local global i32 0, align 4
@GPMC_CONFIG6_CYCLE2CYCLESAMECSEN = common dso_local global i32 0, align 4
@GPMC_CONFIG6_CYCLE2CYCLEDIFFCSEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.gpmc_bool_timings*)* @gpmc_cs_bool_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpmc_cs_bool_timings(i32 %0, %struct.gpmc_bool_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gpmc_bool_timings*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.gpmc_bool_timings* %1, %struct.gpmc_bool_timings** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @GPMC_CS_CONFIG1, align 4
  %7 = load i32, i32* @GPMC_CONFIG1_TIME_PARA_GRAN, align 4
  %8 = load %struct.gpmc_bool_timings*, %struct.gpmc_bool_timings** %4, align 8
  %9 = getelementptr inbounds %struct.gpmc_bool_timings, %struct.gpmc_bool_timings* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @gpmc_cs_modify_reg(i32 %5, i32 %6, i32 %7, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @GPMC_CS_CONFIG2, align 4
  %14 = load i32, i32* @GPMC_CONFIG2_CSEXTRADELAY, align 4
  %15 = load %struct.gpmc_bool_timings*, %struct.gpmc_bool_timings** %4, align 8
  %16 = getelementptr inbounds %struct.gpmc_bool_timings, %struct.gpmc_bool_timings* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gpmc_cs_modify_reg(i32 %12, i32 %13, i32 %14, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @GPMC_CS_CONFIG3, align 4
  %21 = load i32, i32* @GPMC_CONFIG3_ADVEXTRADELAY, align 4
  %22 = load %struct.gpmc_bool_timings*, %struct.gpmc_bool_timings** %4, align 8
  %23 = getelementptr inbounds %struct.gpmc_bool_timings, %struct.gpmc_bool_timings* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @gpmc_cs_modify_reg(i32 %19, i32 %20, i32 %21, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @GPMC_CS_CONFIG4, align 4
  %28 = load i32, i32* @GPMC_CONFIG4_OEEXTRADELAY, align 4
  %29 = load %struct.gpmc_bool_timings*, %struct.gpmc_bool_timings** %4, align 8
  %30 = getelementptr inbounds %struct.gpmc_bool_timings, %struct.gpmc_bool_timings* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @gpmc_cs_modify_reg(i32 %26, i32 %27, i32 %28, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @GPMC_CS_CONFIG4, align 4
  %35 = load i32, i32* @GPMC_CONFIG4_WEEXTRADELAY, align 4
  %36 = load %struct.gpmc_bool_timings*, %struct.gpmc_bool_timings** %4, align 8
  %37 = getelementptr inbounds %struct.gpmc_bool_timings, %struct.gpmc_bool_timings* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @gpmc_cs_modify_reg(i32 %33, i32 %34, i32 %35, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @GPMC_CS_CONFIG6, align 4
  %42 = load i32, i32* @GPMC_CONFIG6_CYCLE2CYCLESAMECSEN, align 4
  %43 = load %struct.gpmc_bool_timings*, %struct.gpmc_bool_timings** %4, align 8
  %44 = getelementptr inbounds %struct.gpmc_bool_timings, %struct.gpmc_bool_timings* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gpmc_cs_modify_reg(i32 %40, i32 %41, i32 %42, i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @GPMC_CS_CONFIG6, align 4
  %49 = load i32, i32* @GPMC_CONFIG6_CYCLE2CYCLEDIFFCSEN, align 4
  %50 = load %struct.gpmc_bool_timings*, %struct.gpmc_bool_timings** %4, align 8
  %51 = getelementptr inbounds %struct.gpmc_bool_timings, %struct.gpmc_bool_timings* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @gpmc_cs_modify_reg(i32 %47, i32 %48, i32 %49, i32 %52)
  ret void
}

declare dso_local i32 @gpmc_cs_modify_reg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
