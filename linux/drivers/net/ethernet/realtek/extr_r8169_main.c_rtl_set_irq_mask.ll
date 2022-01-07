; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_set_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_set_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32, i64 }

@RTL_EVENT_NAPI = common dso_local global i32 0, align 4
@LinkChg = common dso_local global i32 0, align 4
@RTL_GIGA_MAC_VER_06 = common dso_local global i64 0, align 8
@SYSErr = common dso_local global i32 0, align 4
@RxOverflow = common dso_local global i32 0, align 4
@RxFIFOOver = common dso_local global i32 0, align 4
@RTL_GIGA_MAC_VER_11 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_set_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_set_irq_mask(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load i32, i32* @RTL_EVENT_NAPI, align 4
  %4 = load i32, i32* @LinkChg, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %7 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 8
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %9 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @RTL_GIGA_MAC_VER_06, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load i32, i32* @SYSErr, align 4
  %15 = load i32, i32* @RxOverflow, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @RxFIFOOver, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %20 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  br label %42

23:                                               ; preds = %1
  %24 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %25 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RTL_GIGA_MAC_VER_11, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32, i32* @RxFIFOOver, align 4
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %32 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %41

35:                                               ; preds = %23
  %36 = load i32, i32* @RxOverflow, align 4
  %37 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %38 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %29
  br label %42

42:                                               ; preds = %41, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
