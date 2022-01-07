; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_mc.c_tegra_mc_setup_latency_allowance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_mc.c_tegra_mc_setup_latency_allowance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_mc = type { %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.tegra_mc_la }
%struct.tegra_mc_la = type { i32, i32, i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@MC_EMEM_ARB_CFG = common dso_local global i32 0, align 4
@MC_EMEM_ARB_CFG_CYCLES_PER_UPDATE_MASK = common dso_local global i32 0, align 4
@MC_TIMING_UPDATE = common dso_local global i32 0, align 4
@MC_TIMING_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_mc*)* @tegra_mc_setup_latency_allowance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_mc_setup_latency_allowance(%struct.tegra_mc* %0) #0 {
  %2 = alloca %struct.tegra_mc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_mc_la*, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_mc* %0, %struct.tegra_mc** %2, align 8
  %8 = load %struct.tegra_mc*, %struct.tegra_mc** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.tegra_mc*, %struct.tegra_mc** %2, align 8
  %12 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @clk_get_rate(i32 %13)
  %15 = mul i64 %10, %14
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = load i32, i32* @NSEC_PER_SEC, align 4
  %18 = call i32 @do_div(i64 %16, i32 %17)
  %19 = load %struct.tegra_mc*, %struct.tegra_mc** %2, align 8
  %20 = load i32, i32* @MC_EMEM_ARB_CFG, align 4
  %21 = call i32 @mc_readl(%struct.tegra_mc* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @MC_EMEM_ARB_CFG_CYCLES_PER_UPDATE_MASK, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i64, i64* %3, align 8
  %27 = call i32 @MC_EMEM_ARB_CFG_CYCLES_PER_UPDATE(i64 %26)
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.tegra_mc*, %struct.tegra_mc** %2, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @MC_EMEM_ARB_CFG, align 4
  %33 = call i32 @mc_writel(%struct.tegra_mc* %30, i32 %31, i32 %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %86, %1
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.tegra_mc*, %struct.tegra_mc** %2, align 8
  %37 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp ult i32 %35, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %34
  %43 = load %struct.tegra_mc*, %struct.tegra_mc** %2, align 8
  %44 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store %struct.tegra_mc_la* %51, %struct.tegra_mc_la** %6, align 8
  %52 = load %struct.tegra_mc*, %struct.tegra_mc** %2, align 8
  %53 = load %struct.tegra_mc_la*, %struct.tegra_mc_la** %6, align 8
  %54 = getelementptr inbounds %struct.tegra_mc_la, %struct.tegra_mc_la* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @mc_readl(%struct.tegra_mc* %52, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.tegra_mc_la*, %struct.tegra_mc_la** %6, align 8
  %58 = getelementptr inbounds %struct.tegra_mc_la, %struct.tegra_mc_la* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tegra_mc_la*, %struct.tegra_mc_la** %6, align 8
  %61 = getelementptr inbounds %struct.tegra_mc_la, %struct.tegra_mc_la* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %59, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load %struct.tegra_mc_la*, %struct.tegra_mc_la** %6, align 8
  %68 = getelementptr inbounds %struct.tegra_mc_la, %struct.tegra_mc_la* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.tegra_mc_la*, %struct.tegra_mc_la** %6, align 8
  %71 = getelementptr inbounds %struct.tegra_mc_la, %struct.tegra_mc_la* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %69, %72
  %74 = load %struct.tegra_mc_la*, %struct.tegra_mc_la** %6, align 8
  %75 = getelementptr inbounds %struct.tegra_mc_la, %struct.tegra_mc_la* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %73, %76
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load %struct.tegra_mc*, %struct.tegra_mc** %2, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.tegra_mc_la*, %struct.tegra_mc_la** %6, align 8
  %83 = getelementptr inbounds %struct.tegra_mc_la, %struct.tegra_mc_la* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @mc_writel(%struct.tegra_mc* %80, i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %42
  %87 = load i32, i32* %4, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %34

89:                                               ; preds = %34
  %90 = load %struct.tegra_mc*, %struct.tegra_mc** %2, align 8
  %91 = load i32, i32* @MC_TIMING_UPDATE, align 4
  %92 = load i32, i32* @MC_TIMING_CONTROL, align 4
  %93 = call i32 @mc_writel(%struct.tegra_mc* %90, i32 %91, i32 %92)
  ret i32 0
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @mc_readl(%struct.tegra_mc*, i32) #1

declare dso_local i32 @MC_EMEM_ARB_CFG_CYCLES_PER_UPDATE(i64) #1

declare dso_local i32 @mc_writel(%struct.tegra_mc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
