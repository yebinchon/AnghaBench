; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_hif_disable_intrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_hif_disable_intrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { %struct.ath10k_sdio_irq_data }
%struct.ath10k_sdio_irq_data = type { i32, %struct.ath10k_sdio_irq_enable_regs* }
%struct.ath10k_sdio_irq_enable_regs = type { i32 }

@MBOX_INT_STATUS_ENABLE_ADDRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unable to disable sdio interrupts: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_sdio_hif_disable_intrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_hif_disable_intrs(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.ath10k_sdio*, align 8
  %4 = alloca %struct.ath10k_sdio_irq_data*, align 8
  %5 = alloca %struct.ath10k_sdio_irq_enable_regs*, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %8 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %7)
  store %struct.ath10k_sdio* %8, %struct.ath10k_sdio** %3, align 8
  %9 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %10 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %9, i32 0, i32 0
  store %struct.ath10k_sdio_irq_data* %10, %struct.ath10k_sdio_irq_data** %4, align 8
  %11 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %4, align 8
  %12 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %11, i32 0, i32 1
  %13 = load %struct.ath10k_sdio_irq_enable_regs*, %struct.ath10k_sdio_irq_enable_regs** %12, align 8
  store %struct.ath10k_sdio_irq_enable_regs* %13, %struct.ath10k_sdio_irq_enable_regs** %5, align 8
  %14 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %4, align 8
  %15 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ath10k_sdio_irq_enable_regs*, %struct.ath10k_sdio_irq_enable_regs** %5, align 8
  %18 = call i32 @memset(%struct.ath10k_sdio_irq_enable_regs* %17, i32 0, i32 4)
  %19 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %20 = load i32, i32* @MBOX_INT_STATUS_ENABLE_ADDRESS, align 4
  %21 = load %struct.ath10k_sdio_irq_enable_regs*, %struct.ath10k_sdio_irq_enable_regs** %5, align 8
  %22 = getelementptr inbounds %struct.ath10k_sdio_irq_enable_regs, %struct.ath10k_sdio_irq_enable_regs* %21, i32 0, i32 0
  %23 = call i32 @ath10k_sdio_write(%struct.ath10k* %19, i32 %20, i32* %22, i32 4)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @ath10k_warn(%struct.ath10k* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %1
  %31 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %4, align 8
  %32 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.ath10k_sdio_irq_enable_regs*, i32, i32) #1

declare dso_local i32 @ath10k_sdio_write(%struct.ath10k*, i32, i32*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
