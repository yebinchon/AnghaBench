; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz4740_mmc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { i32 }
%struct.jz4740_mmc_host = type { i32, i32, i32, %struct.mmc_request* }

@JZ_MMC_IRQ_END_CMD_RES = common dso_local global i32 0, align 4
@JZ4740_MMC_STATE_READ_RESPONSE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @jz4740_mmc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jz4740_mmc_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.jz4740_mmc_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.jz4740_mmc_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.jz4740_mmc_host* %7, %struct.jz4740_mmc_host** %5, align 8
  %8 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %9 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %10 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %9, i32 0, i32 3
  store %struct.mmc_request* %8, %struct.mmc_request** %10, align 8
  %11 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %12 = call i32 @jz4740_mmc_write_irq_reg(%struct.jz4740_mmc_host* %11, i32 -1)
  %13 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %14 = load i32, i32* @JZ_MMC_IRQ_END_CMD_RES, align 4
  %15 = call i32 @jz4740_mmc_set_irq_enabled(%struct.jz4740_mmc_host* %13, i32 %14, i32 1)
  %16 = load i32, i32* @JZ4740_MMC_STATE_READ_RESPONSE, align 4
  %17 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %18 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %20 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %19, i32 0, i32 1
  %21 = call i32 @set_bit(i32 0, i32* %20)
  %22 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %23 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %22, i32 0, i32 0
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i32, i32* @HZ, align 4
  %26 = mul nsw i32 5, %25
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = call i32 @mod_timer(i32* %23, i64 %28)
  %30 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %31 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %32 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @jz4740_mmc_send_command(%struct.jz4740_mmc_host* %30, i32 %33)
  ret void
}

declare dso_local %struct.jz4740_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @jz4740_mmc_write_irq_reg(%struct.jz4740_mmc_host*, i32) #1

declare dso_local i32 @jz4740_mmc_set_irq_enabled(%struct.jz4740_mmc_host*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @jz4740_mmc_send_command(%struct.jz4740_mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
