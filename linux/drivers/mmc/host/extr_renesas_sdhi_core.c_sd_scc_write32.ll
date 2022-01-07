; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_sd_scc_write32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_sd_scc_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32 }
%struct.renesas_sdhi = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, %struct.renesas_sdhi*, i32, i32)* @sd_scc_write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sd_scc_write32(%struct.tmio_mmc_host* %0, %struct.renesas_sdhi* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tmio_mmc_host*, align 8
  %6 = alloca %struct.renesas_sdhi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %5, align 8
  store %struct.renesas_sdhi* %1, %struct.renesas_sdhi** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %6, align 8
  %11 = getelementptr inbounds %struct.renesas_sdhi, %struct.renesas_sdhi* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %5, align 8
  %15 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %13, %16
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %12, %18
  %20 = call i32 @writel(i32 %9, i64 %19)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
