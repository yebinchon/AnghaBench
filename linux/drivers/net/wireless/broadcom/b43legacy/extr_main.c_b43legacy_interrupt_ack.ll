; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_interrupt_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_interrupt_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@B43legacy_IRQ_PIO_WORKAROUND = common dso_local global i32 0, align 4
@B43legacy_MMIO_PIO1_BASE = common dso_local global i32 0, align 4
@B43legacy_MMIO_PIO2_BASE = common dso_local global i32 0, align 4
@B43legacy_MMIO_PIO3_BASE = common dso_local global i32 0, align 4
@B43legacy_MMIO_PIO4_BASE = common dso_local global i32 0, align 4
@B43legacy_MMIO_GEN_IRQ_REASON = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA0_REASON = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA1_REASON = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA2_REASON = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA3_REASON = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA4_REASON = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA5_REASON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*, i32)* @b43legacy_interrupt_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_interrupt_ack(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %6 = call i64 @b43legacy_using_pio(%struct.b43legacy_wldev* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %2
  %9 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %10 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %34

16:                                               ; preds = %8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @B43legacy_IRQ_PIO_WORKAROUND, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %34, label %21

21:                                               ; preds = %16
  %22 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %23 = load i32, i32* @B43legacy_MMIO_PIO1_BASE, align 4
  %24 = call i32 @pio_irq_workaround(%struct.b43legacy_wldev* %22, i32 %23, i32 0)
  %25 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %26 = load i32, i32* @B43legacy_MMIO_PIO2_BASE, align 4
  %27 = call i32 @pio_irq_workaround(%struct.b43legacy_wldev* %25, i32 %26, i32 1)
  %28 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %29 = load i32, i32* @B43legacy_MMIO_PIO3_BASE, align 4
  %30 = call i32 @pio_irq_workaround(%struct.b43legacy_wldev* %28, i32 %29, i32 2)
  %31 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %32 = load i32, i32* @B43legacy_MMIO_PIO4_BASE, align 4
  %33 = call i32 @pio_irq_workaround(%struct.b43legacy_wldev* %31, i32 %32, i32 3)
  br label %34

34:                                               ; preds = %21, %16, %8, %2
  %35 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %36 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_REASON, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %35, i32 %36, i32 %37)
  %39 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %40 = load i32, i32* @B43legacy_MMIO_DMA0_REASON, align 4
  %41 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %42 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %39, i32 %40, i32 %45)
  %47 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %48 = load i32, i32* @B43legacy_MMIO_DMA1_REASON, align 4
  %49 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %50 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %47, i32 %48, i32 %53)
  %55 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %56 = load i32, i32* @B43legacy_MMIO_DMA2_REASON, align 4
  %57 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %58 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %55, i32 %56, i32 %61)
  %63 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %64 = load i32, i32* @B43legacy_MMIO_DMA3_REASON, align 4
  %65 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %66 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %63, i32 %64, i32 %69)
  %71 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %72 = load i32, i32* @B43legacy_MMIO_DMA4_REASON, align 4
  %73 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %74 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %71, i32 %72, i32 %77)
  %79 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %80 = load i32, i32* @B43legacy_MMIO_DMA5_REASON, align 4
  %81 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %82 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %79, i32 %80, i32 %85)
  ret void
}

declare dso_local i64 @b43legacy_using_pio(%struct.b43legacy_wldev*) #1

declare dso_local i32 @pio_irq_workaround(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
