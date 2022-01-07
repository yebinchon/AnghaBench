; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/lmc/extr_lmc_main.c_lmc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/lmc/extr_lmc_main.c_lmc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__*, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*)* }

@.str = private unnamed_addr constant [13 x i8] c"lmc_reset in\00", align 1
@LMC_MII16_FIFO_RESET = common dso_local global i32 0, align 4
@LMC_GEP_RESET = common dso_local global i32 0, align 4
@csr_gp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"lmc_reset out\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @lmc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lmc_reset(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %3 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @lmc_trace(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @LMC_MII16_FIFO_RESET, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @lmc_mii_writereg(%struct.TYPE_12__* %12, i32 0, i32 16, i32 %15)
  %17 = load i32, i32* @LMC_MII16_FIFO_RESET, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @lmc_mii_writereg(%struct.TYPE_12__* %23, i32 0, i32 16, i32 %26)
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %29 = load i32, i32* @LMC_GEP_RESET, align 4
  %30 = call i32 @lmc_gpio_mkoutput(%struct.TYPE_12__* %28, i32 %29)
  %31 = load i32, i32* @LMC_GEP_RESET, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %38 = load i32, i32* @csr_gp, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @LMC_CSR_WRITE(%struct.TYPE_12__* %37, i32 %38, i32 %41)
  %43 = call i32 @udelay(i32 50)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %45 = load i32, i32* @LMC_GEP_RESET, align 4
  %46 = call i32 @lmc_gpio_mkinput(%struct.TYPE_12__* %44, i32 %45)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i32 (%struct.TYPE_12__*)*, i32 (%struct.TYPE_12__*)** %50, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %53 = call i32 %51(%struct.TYPE_12__* %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @lmc_trace(i32 %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @lmc_trace(i32, i8*) #1

declare dso_local i32 @lmc_mii_writereg(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @lmc_gpio_mkoutput(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @LMC_CSR_WRITE(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @lmc_gpio_mkinput(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
