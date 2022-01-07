; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_pio_irq_workaround.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_pio_irq_workaround.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32* }

@B43legacy_PIO_RXCTL = common dso_local global i32 0, align 4
@B43legacy_PIO_RXCTL_DATAAVAILABLE = common dso_local global i32 0, align 4
@B43legacy_DMAIRQ_RX_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*, i32, i32)* @pio_irq_workaround to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pio_irq_workaround(%struct.b43legacy_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43legacy_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @B43legacy_PIO_RXCTL, align 4
  %11 = add nsw i32 %9, %10
  %12 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %8, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @B43legacy_PIO_RXCTL_DATAAVAILABLE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load i32, i32* @B43legacy_DMAIRQ_RX_DONE, align 4
  %19 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %20 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %18
  store i32 %26, i32* %24, align 4
  br label %38

27:                                               ; preds = %3
  %28 = load i32, i32* @B43legacy_DMAIRQ_RX_DONE, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %31 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %29
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %27, %17
  ret void
}

declare dso_local i32 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
