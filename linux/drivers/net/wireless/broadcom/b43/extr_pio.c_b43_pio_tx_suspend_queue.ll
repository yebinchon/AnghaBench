; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_pio.c_b43_pio_tx_suspend_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_pio.c_b43_pio_tx_suspend_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_pio_txqueue = type { i32 }

@B43_PIO8_TXCTL = common dso_local global i32 0, align 4
@B43_PIO8_TXCTL_SUSPREQ = common dso_local global i32 0, align 4
@B43_PIO_TXCTL = common dso_local global i32 0, align 4
@B43_PIO_TXCTL_SUSPREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_pio_txqueue*)* @b43_pio_tx_suspend_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_pio_tx_suspend_queue(%struct.b43_pio_txqueue* %0) #0 {
  %2 = alloca %struct.b43_pio_txqueue*, align 8
  store %struct.b43_pio_txqueue* %0, %struct.b43_pio_txqueue** %2, align 8
  %3 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %2, align 8
  %4 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp sge i32 %5, 8
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %2, align 8
  %9 = load i32, i32* @B43_PIO8_TXCTL, align 4
  %10 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %2, align 8
  %11 = load i32, i32* @B43_PIO8_TXCTL, align 4
  %12 = call i32 @b43_piotx_read32(%struct.b43_pio_txqueue* %10, i32 %11)
  %13 = load i32, i32* @B43_PIO8_TXCTL_SUSPREQ, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @b43_piotx_write32(%struct.b43_pio_txqueue* %8, i32 %9, i32 %14)
  br label %25

16:                                               ; preds = %1
  %17 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %2, align 8
  %18 = load i32, i32* @B43_PIO_TXCTL, align 4
  %19 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %2, align 8
  %20 = load i32, i32* @B43_PIO_TXCTL, align 4
  %21 = call i32 @b43_piotx_read16(%struct.b43_pio_txqueue* %19, i32 %20)
  %22 = load i32, i32* @B43_PIO_TXCTL_SUSPREQ, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @b43_piotx_write16(%struct.b43_pio_txqueue* %17, i32 %18, i32 %23)
  br label %25

25:                                               ; preds = %16, %7
  ret void
}

declare dso_local i32 @b43_piotx_write32(%struct.b43_pio_txqueue*, i32, i32) #1

declare dso_local i32 @b43_piotx_read32(%struct.b43_pio_txqueue*, i32) #1

declare dso_local i32 @b43_piotx_write16(%struct.b43_pio_txqueue*, i32, i32) #1

declare dso_local i32 @b43_piotx_read16(%struct.b43_pio_txqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
