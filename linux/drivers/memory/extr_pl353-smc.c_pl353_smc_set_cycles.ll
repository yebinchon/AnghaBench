; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_pl353-smc.c_pl353_smc_set_cycles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_pl353-smc.c_pl353_smc_set_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PL353_SMC_SET_CYCLES_T0_MASK = common dso_local global i32 0, align 4
@PL353_SMC_SET_CYCLES_T1_MASK = common dso_local global i32 0, align 4
@PL353_SMC_SET_CYCLES_T1_SHIFT = common dso_local global i32 0, align 4
@PL353_SMC_SET_CYCLES_T2_MASK = common dso_local global i32 0, align 4
@PL353_SMC_SET_CYCLES_T2_SHIFT = common dso_local global i32 0, align 4
@PL353_SMC_SET_CYCLES_T3_MASK = common dso_local global i32 0, align 4
@PL353_SMC_SET_CYCLES_T3_SHIFT = common dso_local global i32 0, align 4
@PL353_SMC_SET_CYCLES_T4_MASK = common dso_local global i32 0, align 4
@PL353_SMC_SET_CYCLES_T4_SHIFT = common dso_local global i32 0, align 4
@PL353_SMC_SET_CYCLES_T5_MASK = common dso_local global i32 0, align 4
@PL353_SMC_SET_CYCLES_T5_SHIFT = common dso_local global i32 0, align 4
@PL353_SMC_SET_CYCLES_T6_MASK = common dso_local global i32 0, align 4
@PL353_SMC_SET_CYCLES_T6_SHIFT = common dso_local global i32 0, align 4
@pl353_smc_base = common dso_local global i64 0, align 8
@PL353_SMC_SET_CYCLES_OFFS = common dso_local global i64 0, align 8
@PL353_SMC_DC_UPT_NAND_REGS = common dso_local global i32 0, align 4
@PL353_SMC_DIRECT_CMD_OFFS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pl353_smc_set_cycles(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32, i32* @PL353_SMC_SET_CYCLES_T0_MASK, align 4
  %4 = load i32*, i32** %2, align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, %3
  store i32 %7, i32* %5, align 4
  %8 = load i32*, i32** %2, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PL353_SMC_SET_CYCLES_T1_MASK, align 4
  %12 = and i32 %10, %11
  %13 = load i32, i32* @PL353_SMC_SET_CYCLES_T1_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = load i32*, i32** %2, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 %14, i32* %16, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @PL353_SMC_SET_CYCLES_T2_MASK, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @PL353_SMC_SET_CYCLES_T2_SHIFT, align 4
  %23 = shl i32 %21, %22
  %24 = load i32*, i32** %2, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 %23, i32* %25, align 4
  %26 = load i32*, i32** %2, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PL353_SMC_SET_CYCLES_T3_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @PL353_SMC_SET_CYCLES_T3_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32*, i32** %2, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %2, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @PL353_SMC_SET_CYCLES_T4_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @PL353_SMC_SET_CYCLES_T4_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32*, i32** %2, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %2, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PL353_SMC_SET_CYCLES_T5_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @PL353_SMC_SET_CYCLES_T5_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = load i32*, i32** %2, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 5
  store i32 %50, i32* %52, align 4
  %53 = load i32*, i32** %2, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 6
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @PL353_SMC_SET_CYCLES_T6_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @PL353_SMC_SET_CYCLES_T6_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32*, i32** %2, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 6
  store i32 %59, i32* %61, align 4
  %62 = load i32*, i32** %2, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %2, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %64, %67
  %69 = load i32*, i32** %2, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %68, %71
  %73 = load i32*, i32** %2, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %72, %75
  %77 = load i32*, i32** %2, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %76, %79
  %81 = load i32*, i32** %2, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 6
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %80, %83
  %85 = load i32*, i32** %2, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load i32*, i32** %2, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* @pl353_smc_base, align 8
  %93 = load i64, i64* @PL353_SMC_SET_CYCLES_OFFS, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %91, i64 %94)
  %96 = load i32, i32* @PL353_SMC_DC_UPT_NAND_REGS, align 4
  %97 = load i64, i64* @pl353_smc_base, align 8
  %98 = load i64, i64* @PL353_SMC_DIRECT_CMD_OFFS, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @writel(i32 %96, i64 %99)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
