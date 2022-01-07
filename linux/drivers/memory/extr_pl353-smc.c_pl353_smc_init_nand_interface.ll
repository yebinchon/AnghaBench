; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_pl353-smc.c_pl353_smc_init_nand_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_pl353-smc.c_pl353_smc_init_nand_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amba_device = type { i32 }
%struct.device_node = type { i32 }

@PL353_SMC_MEM_WIDTH_8 = common dso_local global i32 0, align 4
@PL353_SMC_CFG_CLR_INT_CLR_1 = common dso_local global i32 0, align 4
@pl353_smc_base = common dso_local global i64 0, align 8
@PL353_SMC_CFG_CLR_OFFS = common dso_local global i64 0, align 8
@PL353_SMC_DC_UPT_NAND_REGS = common dso_local global i32 0, align 4
@PL353_SMC_DIRECT_CMD_OFFS = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@PL353_NAND_ECC_BUSY_TIMEOUT = common dso_local global i64 0, align 8
@PL353_NAND_ECC_CMD1 = common dso_local global i32 0, align 4
@PL353_SMC_ECC_MEMCMD1_OFFS = common dso_local global i64 0, align 8
@PL353_NAND_ECC_CMD2 = common dso_local global i32 0, align 4
@PL353_SMC_ECC_MEMCMD2_OFFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amba_device*, %struct.device_node*)* @pl353_smc_init_nand_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl353_smc_init_nand_interface(%struct.amba_device* %0, %struct.device_node* %1) #0 {
  %3 = alloca %struct.amba_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i64, align 8
  store %struct.amba_device* %0, %struct.amba_device** %3, align 8
  store %struct.device_node* %1, %struct.device_node** %4, align 8
  %6 = load i32, i32* @PL353_SMC_MEM_WIDTH_8, align 4
  %7 = call i32 @pl353_smc_set_buswidth(i32 %6)
  %8 = load i32, i32* @PL353_SMC_CFG_CLR_INT_CLR_1, align 4
  %9 = load i64, i64* @pl353_smc_base, align 8
  %10 = load i64, i64* @PL353_SMC_CFG_CLR_OFFS, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %8, i64 %11)
  %13 = load i32, i32* @PL353_SMC_DC_UPT_NAND_REGS, align 4
  %14 = load i64, i64* @pl353_smc_base, align 8
  %15 = load i64, i64* @PL353_SMC_DIRECT_CMD_OFFS, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %13, i64 %16)
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* @PL353_NAND_ECC_BUSY_TIMEOUT, align 8
  %20 = add i64 %18, %19
  store i64 %20, i64* %5, align 8
  br label %21

21:                                               ; preds = %28, %2
  %22 = call i64 (...) @pl353_smc_ecc_is_busy()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (...) @cpu_relax()
  br label %27

26:                                               ; preds = %21
  br label %34

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %27
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i64 @time_after_eq(i64 %29, i64 %30)
  %32 = icmp ne i64 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %21, label %34

34:                                               ; preds = %28, %26
  %35 = load i64, i64* @jiffies, align 8
  %36 = load i64, i64* %5, align 8
  %37 = call i64 @time_after_eq(i64 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %51

40:                                               ; preds = %34
  %41 = load i32, i32* @PL353_NAND_ECC_CMD1, align 4
  %42 = load i64, i64* @pl353_smc_base, align 8
  %43 = load i64, i64* @PL353_SMC_ECC_MEMCMD1_OFFS, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %41, i64 %44)
  %46 = load i32, i32* @PL353_NAND_ECC_CMD2, align 4
  %47 = load i64, i64* @pl353_smc_base, align 8
  %48 = load i64, i64* @PL353_SMC_ECC_MEMCMD2_OFFS, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %46, i64 %49)
  br label %51

51:                                               ; preds = %40, %39
  ret void
}

declare dso_local i32 @pl353_smc_set_buswidth(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @pl353_smc_ecc_is_busy(...) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @time_after_eq(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
