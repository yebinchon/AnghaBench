; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_spear_smi.c_spear_smi_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_spear_smi.c_spear_smi_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear_smi = type { i32, i64, i32, i32 }

@HOLD1 = common dso_local global i32 0, align 4
@BANK_EN = common dso_local global i32 0, align 4
@DSEL_TIME = common dso_local global i32 0, align 4
@SMI_SR = common dso_local global i64 0, align 8
@SMI_CR1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spear_smi*)* @spear_smi_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spear_smi_hw_init(%struct.spear_smi* %0) #0 {
  %2 = alloca %struct.spear_smi*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.spear_smi* %0, %struct.spear_smi** %2, align 8
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.spear_smi*, %struct.spear_smi** %2, align 8
  %7 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @clk_get_rate(i32 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %3, align 8
  %11 = load %struct.spear_smi*, %struct.spear_smi** %2, align 8
  %12 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @DIV_ROUND_UP(i64 %10, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @HOLD1, align 4
  %16 = load i32, i32* @BANK_EN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @DSEL_TIME, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = shl i32 %20, 8
  %22 = or i32 %19, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.spear_smi*, %struct.spear_smi** %2, align 8
  %24 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.spear_smi*, %struct.spear_smi** %2, align 8
  %27 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SMI_SR, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 0, i64 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.spear_smi*, %struct.spear_smi** %2, align 8
  %34 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SMI_CR1, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  %39 = load %struct.spear_smi*, %struct.spear_smi** %2, align 8
  %40 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  ret void
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
