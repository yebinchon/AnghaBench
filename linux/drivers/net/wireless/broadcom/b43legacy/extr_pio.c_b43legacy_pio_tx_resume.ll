; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_b43legacy_pio_tx_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_pio.c_b43legacy_pio_tx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_pioqueue = type { i32, i32 }

@B43legacy_PIO_TXCTL = common dso_local global i32 0, align 4
@B43legacy_PIO_TXCTL_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43legacy_pio_tx_resume(%struct.b43legacy_pioqueue* %0) #0 {
  %2 = alloca %struct.b43legacy_pioqueue*, align 8
  store %struct.b43legacy_pioqueue* %0, %struct.b43legacy_pioqueue** %2, align 8
  %3 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %4 = load i32, i32* @B43legacy_PIO_TXCTL, align 4
  %5 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %6 = load i32, i32* @B43legacy_PIO_TXCTL, align 4
  %7 = call i32 @b43legacy_pio_read(%struct.b43legacy_pioqueue* %5, i32 %6)
  %8 = load i32, i32* @B43legacy_PIO_TXCTL_SUSPEND, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  %11 = call i32 @b43legacy_pio_write(%struct.b43legacy_pioqueue* %3, i32 %4, i32 %10)
  %12 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %13 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @b43legacy_power_saving_ctl_bits(i32 %14, i32 -1, i32 -1)
  %16 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %2, align 8
  %17 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %16, i32 0, i32 0
  %18 = call i32 @tasklet_schedule(i32* %17)
  ret void
}

declare dso_local i32 @b43legacy_pio_write(%struct.b43legacy_pioqueue*, i32, i32) #1

declare dso_local i32 @b43legacy_pio_read(%struct.b43legacy_pioqueue*, i32) #1

declare dso_local i32 @b43legacy_power_saving_ctl_bits(i32, i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
