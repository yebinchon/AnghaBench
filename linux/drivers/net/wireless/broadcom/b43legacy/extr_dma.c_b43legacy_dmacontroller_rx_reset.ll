; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_b43legacy_dmacontroller_rx_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_b43legacy_dmacontroller_rx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32 }

@B43legacy_DMA32_RXCTL = common dso_local global i64 0, align 8
@B43legacy_DMA32_RXSTATUS = common dso_local global i64 0, align 8
@B43legacy_DMA32_RXSTATE = common dso_local global i32 0, align 4
@B43legacy_DMA32_RXSTAT_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"DMA RX reset timed out\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_wldev*, i64, i32)* @b43legacy_dmacontroller_rx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_dmacontroller_rx_reset(%struct.b43legacy_wldev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43legacy_wldev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = call i32 (...) @might_sleep()
  %12 = load i64, i64* @B43legacy_DMA32_RXCTL, align 8
  store i64 %12, i64* %10, align 8
  %13 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %10, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %13, i64 %16, i32 0)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %37, %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 10
  br i1 %20, label %21, label %40

21:                                               ; preds = %18
  %22 = load i64, i64* @B43legacy_DMA32_RXSTATUS, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* %10, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %23, i64 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @B43legacy_DMA32_RXSTATE, align 4
  %29 = load i32, i32* %9, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @B43legacy_DMA32_RXSTAT_DISABLED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  store i32 -1, i32* %8, align 4
  br label %40

35:                                               ; preds = %21
  %36 = call i32 @msleep(i32 1)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %18

40:                                               ; preds = %34, %18
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, -1
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %5, align 8
  %45 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @b43legacyerr(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %40
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %43
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i64, i32) #1

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @b43legacyerr(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
