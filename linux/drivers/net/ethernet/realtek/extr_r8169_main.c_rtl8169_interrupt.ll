; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8169_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32, i64, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@SYSErr = common dso_local global i32 0, align 4
@LinkChg = common dso_local global i32 0, align 4
@RxFIFOOver = common dso_local global i32 0, align 4
@RTL_GIGA_MAC_VER_11 = common dso_local global i64 0, align 8
@RTL_FLAG_TASK_RESET_PENDING = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rtl8169_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8169_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rtl8169_private*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.rtl8169_private*
  store %struct.rtl8169_private* %9, %struct.rtl8169_private** %6, align 8
  %10 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %11 = call i32 @rtl_get_events(%struct.rtl8169_private* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %13 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 65535
  %19 = icmp eq i32 %18, 65535
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %23 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20, %16, %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %88

29:                                               ; preds = %20
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SYSErr, align 4
  %32 = and i32 %30, %31
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %37 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @rtl8169_pcierr_interrupt(i32 %38)
  br label %83

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @LinkChg, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %47 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @phy_mac_interrupt(i32 %48)
  br label %50

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @RxFIFOOver, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %57 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @RTL_GIGA_MAC_VER_11, align 8
  %60 = icmp eq i64 %58, %59
  br label %61

61:                                               ; preds = %55, %50
  %62 = phi i1 [ false, %50 ], [ %60, %55 ]
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %61
  %67 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %68 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @netif_stop_queue(i32 %69)
  %71 = load i32, i32* @RTL_FLAG_TASK_RESET_PENDING, align 4
  %72 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %73 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @set_bit(i32 %71, i32 %75)
  br label %77

77:                                               ; preds = %66, %61
  %78 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %79 = call i32 @rtl_irq_disable(%struct.rtl8169_private* %78)
  %80 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %81 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %80, i32 0, i32 2
  %82 = call i32 @napi_schedule_irqoff(i32* %81)
  br label %83

83:                                               ; preds = %77, %35
  %84 = load %struct.rtl8169_private*, %struct.rtl8169_private** %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @rtl_ack_events(%struct.rtl8169_private* %84, i32 %85)
  %87 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %27
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @rtl_get_events(%struct.rtl8169_private*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rtl8169_pcierr_interrupt(i32) #1

declare dso_local i32 @phy_mac_interrupt(i32) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @rtl_irq_disable(%struct.rtl8169_private*) #1

declare dso_local i32 @napi_schedule_irqoff(i32*) #1

declare dso_local i32 @rtl_ack_events(%struct.rtl8169_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
