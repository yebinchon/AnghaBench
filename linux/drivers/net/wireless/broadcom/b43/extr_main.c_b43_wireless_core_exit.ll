; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_wireless_core_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_wireless_core_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.b43_wldev*, i32)* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@B43_STAT_INITIALIZED = common dso_local global i64 0, align 8
@B43_STAT_UNINIT = common dso_local global i32 0, align 4
@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_PSM_RUN = common dso_local global i32 0, align 4
@B43_MACCTL_PSM_JMP0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_wireless_core_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_wireless_core_exit(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %3 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %4 = icmp ne %struct.b43_wldev* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = call i64 @b43_status(%struct.b43_wldev* %6)
  %8 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %9 = icmp sgt i64 %7, %8
  br label %10

10:                                               ; preds = %5, %1
  %11 = phi i1 [ false, %1 ], [ %9, %5 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @B43_WARN_ON(i32 %12)
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = icmp ne %struct.b43_wldev* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %18 = call i64 @b43_status(%struct.b43_wldev* %17)
  %19 = load i64, i64* @B43_STAT_INITIALIZED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %10
  br label %74

22:                                               ; preds = %16
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %24 = load i32, i32* @B43_STAT_UNINIT, align 4
  %25 = call i32 @b43_set_status(%struct.b43_wldev* %23, i32 %24)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %27 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %28 = load i32, i32* @B43_MACCTL_PSM_RUN, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* @B43_MACCTL_PSM_JMP0, align 4
  %31 = call i32 @b43_maskset32(%struct.b43_wldev* %26, i32 %27, i32 %29, i32 %30)
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  switch i32 %36, label %37 [
  ]

37:                                               ; preds = %22
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %39 = call i32 @b43_dma_free(%struct.b43_wldev* %38)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %41 = call i32 @b43_pio_free(%struct.b43_wldev* %40)
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %43 = call i32 @b43_chip_exit(%struct.b43_wldev* %42)
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %45 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %48, align 8
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %51 = call i32 %49(%struct.b43_wldev* %50, i32 0)
  %52 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %53 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %52, i32 0, i32 0
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %37
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %60 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @dev_kfree_skb_any(i32* %63)
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %66 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  br label %69

69:                                               ; preds = %58, %37
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %71 = call i32 @b43_device_disable(%struct.b43_wldev* %70, i32 0)
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %73 = call i32 @b43_bus_may_powerdown(%struct.b43_wldev* %72)
  br label %74

74:                                               ; preds = %69, %21
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i64 @b43_status(%struct.b43_wldev*) #1

declare dso_local i32 @b43_set_status(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_maskset32(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_dma_free(%struct.b43_wldev*) #1

declare dso_local i32 @b43_pio_free(%struct.b43_wldev*) #1

declare dso_local i32 @b43_chip_exit(%struct.b43_wldev*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @b43_device_disable(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_bus_may_powerdown(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
