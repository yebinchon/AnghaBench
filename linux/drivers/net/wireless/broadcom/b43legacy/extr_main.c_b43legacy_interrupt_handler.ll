; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32, i32*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@B43legacy_STAT_STARTED = common dso_local global i64 0, align 8
@B43legacy_MMIO_GEN_IRQ_REASON = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA0_REASON = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA1_REASON = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA2_REASON = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA3_REASON = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA4_REASON = common dso_local global i32 0, align 4
@B43legacy_MMIO_DMA5_REASON = common dso_local global i32 0, align 4
@B43legacy_MMIO_GEN_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @b43legacy_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_interrupt_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43legacy_wldev*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @IRQ_NONE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.b43legacy_wldev*
  store %struct.b43legacy_wldev* %10, %struct.b43legacy_wldev** %6, align 8
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %12 = icmp ne %struct.b43legacy_wldev* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @B43legacy_WARN_ON(i32 %14)
  %16 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %17 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %22 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %21)
  %23 = load i64, i64* @B43legacy_STAT_STARTED, align 8
  %24 = icmp slt i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %107

29:                                               ; preds = %2
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %31 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_REASON, align 4
  %32 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %107

36:                                               ; preds = %29
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %37, i32* %5, align 4
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %39 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %107

46:                                               ; preds = %36
  %47 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %48 = load i32, i32* @B43legacy_MMIO_DMA0_REASON, align 4
  %49 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %47, i32 %48)
  %50 = and i32 %49, 121856
  %51 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %52 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  store i32 %50, i32* %54, align 4
  %55 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %56 = load i32, i32* @B43legacy_MMIO_DMA1_REASON, align 4
  %57 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %55, i32 %56)
  %58 = and i32 %57, 56320
  %59 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %60 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %58, i32* %62, align 4
  %63 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %64 = load i32, i32* @B43legacy_MMIO_DMA2_REASON, align 4
  %65 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %63, i32 %64)
  %66 = and i32 %65, 56320
  %67 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %68 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  store i32 %66, i32* %70, align 4
  %71 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %72 = load i32, i32* @B43legacy_MMIO_DMA3_REASON, align 4
  %73 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %71, i32 %72)
  %74 = and i32 %73, 121856
  %75 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %76 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  store i32 %74, i32* %78, align 4
  %79 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %80 = load i32, i32* @B43legacy_MMIO_DMA4_REASON, align 4
  %81 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %79, i32 %80)
  %82 = and i32 %81, 56320
  %83 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %84 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32 %82, i32* %86, align 4
  %87 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %88 = load i32, i32* @B43legacy_MMIO_DMA5_REASON, align 4
  %89 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %87, i32 %88)
  %90 = and i32 %89, 56320
  %91 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %92 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 5
  store i32 %90, i32* %94, align 4
  %95 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @b43legacy_interrupt_ack(%struct.b43legacy_wldev* %95, i32 %96)
  %98 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %99 = load i32, i32* @B43legacy_MMIO_GEN_IRQ_MASK, align 4
  %100 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %98, i32 %99, i32 0)
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %103 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %102, i32 0, i32 2
  store i32 %101, i32* %103, align 8
  %104 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %105 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %104, i32 0, i32 4
  %106 = call i32 @tasklet_schedule(i32* %105)
  br label %107

107:                                              ; preds = %46, %45, %35, %28
  %108 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %6, align 8
  %109 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %108, i32 0, i32 3
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = call i32 @spin_unlock(i32* %111)
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_interrupt_ack(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
