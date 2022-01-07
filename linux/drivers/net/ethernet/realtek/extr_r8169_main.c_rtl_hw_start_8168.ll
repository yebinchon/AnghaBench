; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8168.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i64, i32 }

@RTL_GIGA_MAC_VER_13 = common dso_local global i64 0, align 8
@RTL_GIGA_MAC_VER_16 = common dso_local global i64 0, align 8
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_NOSNOOP_EN = common dso_local global i32 0, align 4
@MaxTxPacketSize = common dso_local global i32 0, align 4
@EarlySize = common dso_local global i32 0, align 4
@TxPacketMax = common dso_local global i32 0, align 4
@IntrMitigate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8168 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8168(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RTL_GIGA_MAC_VER_13, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @RTL_GIGA_MAC_VER_16, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %8, %1
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %16 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %19 = load i32, i32* @PCI_EXP_DEVCTL_NOSNOOP_EN, align 4
  %20 = call i32 @pcie_capability_set_word(i32 %17, i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %14, %8
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %23 = call i64 @rtl_is_8168evl_up(%struct.rtl8169_private* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %27 = load i32, i32* @MaxTxPacketSize, align 4
  %28 = load i32, i32* @EarlySize, align 4
  %29 = call i32 @RTL_W8(%struct.rtl8169_private* %26, i32 %27, i32 %28)
  br label %35

30:                                               ; preds = %21
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %32 = load i32, i32* @MaxTxPacketSize, align 4
  %33 = load i32, i32* @TxPacketMax, align 4
  %34 = call i32 @RTL_W8(%struct.rtl8169_private* %31, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %37 = call i32 @rtl_hw_config(%struct.rtl8169_private* %36)
  %38 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %39 = load i32, i32* @IntrMitigate, align 4
  %40 = call i32 @RTL_W16(%struct.rtl8169_private* %38, i32 %39, i32 0)
  ret void
}

declare dso_local i32 @pcie_capability_set_word(i32, i32, i32) #1

declare dso_local i64 @rtl_is_8168evl_up(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_hw_config(%struct.rtl8169_private*) #1

declare dso_local i32 @RTL_W16(%struct.rtl8169_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
