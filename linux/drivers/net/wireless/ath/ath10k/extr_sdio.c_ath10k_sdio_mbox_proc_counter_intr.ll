; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_proc_counter_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_mbox_proc_counter_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { %struct.ath10k_sdio_irq_data }
%struct.ath10k_sdio_irq_data = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ATH10K_SDIO_TARGET_DEBUG_INTR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_sdio_mbox_proc_counter_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_mbox_proc_counter_intr(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.ath10k_sdio*, align 8
  %4 = alloca %struct.ath10k_sdio_irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %7 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %8 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %7)
  store %struct.ath10k_sdio* %8, %struct.ath10k_sdio** %3, align 8
  %9 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %10 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %9, i32 0, i32 0
  store %struct.ath10k_sdio_irq_data* %10, %struct.ath10k_sdio_irq_data** %4, align 8
  %11 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %4, align 8
  %12 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %4, align 8
  %15 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %4, align 8
  %20 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %18, %23
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @ATH10K_SDIO_TARGET_DEBUG_INTR_MASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %31 = call i32 @ath10k_sdio_mbox_proc_dbg_intr(%struct.ath10k* %30)
  store i32 %31, i32* %6, align 4
  br label %33

32:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %29
  %34 = load %struct.ath10k_sdio_irq_data*, %struct.ath10k_sdio_irq_data** %4, align 8
  %35 = getelementptr inbounds %struct.ath10k_sdio_irq_data, %struct.ath10k_sdio_irq_data* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load i32, i32* %6, align 4
  ret i32 %37
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ath10k_sdio_mbox_proc_dbg_intr(%struct.ath10k*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
