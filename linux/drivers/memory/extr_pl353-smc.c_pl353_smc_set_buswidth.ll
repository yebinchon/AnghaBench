; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_pl353-smc.c_pl353_smc_set_buswidth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_pl353-smc.c_pl353_smc_set_buswidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PL353_SMC_MEM_WIDTH_8 = common dso_local global i32 0, align 4
@PL353_SMC_MEM_WIDTH_16 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pl353_smc_base = common dso_local global i64 0, align 8
@PL353_SMC_SET_OPMODE_OFFS = common dso_local global i64 0, align 8
@PL353_SMC_DC_UPT_NAND_REGS = common dso_local global i32 0, align 4
@PL353_SMC_DIRECT_CMD_OFFS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pl353_smc_set_buswidth(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @PL353_SMC_MEM_WIDTH_8, align 4
  %6 = icmp ne i32 %4, %5
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @PL353_SMC_MEM_WIDTH_16, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %25

14:                                               ; preds = %7, %1
  %15 = load i32, i32* %3, align 4
  %16 = load i64, i64* @pl353_smc_base, align 8
  %17 = load i64, i64* @PL353_SMC_SET_OPMODE_OFFS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %15, i64 %18)
  %20 = load i32, i32* @PL353_SMC_DC_UPT_NAND_REGS, align 4
  %21 = load i64, i64* @pl353_smc_base, align 8
  %22 = load i64, i64* @PL353_SMC_DIRECT_CMD_OFFS, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %20, i64 %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %14, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
