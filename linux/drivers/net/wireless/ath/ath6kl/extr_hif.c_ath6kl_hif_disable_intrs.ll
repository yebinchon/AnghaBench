; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_disable_intrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_hif.c_ath6kl_hif_disable_intrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_device = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.ath6kl_irq_enable_reg = type { i32 }

@INT_STATUS_ENABLE_ADDRESS = common dso_local global i32 0, align 4
@HIF_WR_SYNC_BYTE_INC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_hif_disable_intrs(%struct.ath6kl_device* %0) #0 {
  %2 = alloca %struct.ath6kl_device*, align 8
  %3 = alloca %struct.ath6kl_irq_enable_reg, align 4
  store %struct.ath6kl_device* %0, %struct.ath6kl_device** %2, align 8
  %4 = load %struct.ath6kl_device*, %struct.ath6kl_device** %2, align 8
  %5 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %4, i32 0, i32 1
  %6 = call i32 @spin_lock_bh(i32* %5)
  %7 = load %struct.ath6kl_device*, %struct.ath6kl_device** %2, align 8
  %8 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.ath6kl_device*, %struct.ath6kl_device** %2, align 8
  %11 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = load %struct.ath6kl_device*, %struct.ath6kl_device** %2, align 8
  %14 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.ath6kl_device*, %struct.ath6kl_device** %2, align 8
  %17 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 0, i64* %18, align 8
  %19 = load %struct.ath6kl_device*, %struct.ath6kl_device** %2, align 8
  %20 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %19, i32 0, i32 2
  %21 = call i32 @memcpy(%struct.ath6kl_irq_enable_reg* %3, %struct.TYPE_2__* %20, i32 4)
  %22 = load %struct.ath6kl_device*, %struct.ath6kl_device** %2, align 8
  %23 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %22, i32 0, i32 1
  %24 = call i32 @spin_unlock_bh(i32* %23)
  %25 = load %struct.ath6kl_device*, %struct.ath6kl_device** %2, align 8
  %26 = getelementptr inbounds %struct.ath6kl_device, %struct.ath6kl_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @INT_STATUS_ENABLE_ADDRESS, align 4
  %29 = getelementptr inbounds %struct.ath6kl_irq_enable_reg, %struct.ath6kl_irq_enable_reg* %3, i32 0, i32 0
  %30 = load i32, i32* @HIF_WR_SYNC_BYTE_INC, align 4
  %31 = call i32 @hif_read_write_sync(i32 %27, i32 %28, i32* %29, i32 4, i32 %30)
  ret i32 %31
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @memcpy(%struct.ath6kl_irq_enable_reg*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @hif_read_write_sync(i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
