; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_write_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_write_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_mmc_host = type { i64, i64 }

@JZ_MMC_JZ4725B = common dso_local global i64 0, align 8
@JZ_REG_MMC_IMASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jz4740_mmc_host*, i32)* @jz4740_mmc_write_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4740_mmc_write_irq_mask(%struct.jz4740_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.jz4740_mmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.jz4740_mmc_host* %0, %struct.jz4740_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %6 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @JZ_MMC_JZ4725B, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %13 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @JZ_REG_MMC_IMASK, align 8
  %16 = add nsw i64 %14, %15
  call void @writel(i32 %11, i64 %16)
  br label %24

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %3, align 8
  %20 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @JZ_REG_MMC_IMASK, align 8
  %23 = add nsw i64 %21, %22
  call void @writew(i32 %18, i64 %23)
  br label %24

24:                                               ; preds = %17, %10
  ret void
}

declare dso_local void @writel(i32, i64) #1

declare dso_local void @writew(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
