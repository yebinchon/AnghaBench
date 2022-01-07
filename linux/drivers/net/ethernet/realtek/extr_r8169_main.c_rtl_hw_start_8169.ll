; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8169.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_hw_start_8169.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i64, i32, i32, i32 }

@RTL_GIGA_MAC_VER_05 = common dso_local global i64 0, align 8
@PCI_CACHE_LINE_SIZE = common dso_local global i32 0, align 4
@EarlyTxThres = common dso_local global i32 0, align 4
@NoEarlyTx = common dso_local global i32 0, align 4
@PCIMulRW = common dso_local global i32 0, align 4
@RTL_GIGA_MAC_VER_02 = common dso_local global i64 0, align 8
@RTL_GIGA_MAC_VER_03 = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Set MAC Reg C+CR Offset 0xe0. Bit 3 and Bit 14 MUST be 1\0A\00", align 1
@CPlusCmd = common dso_local global i32 0, align 4
@RxMissed = common dso_local global i32 0, align 4
@IntrMitigate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_hw_start_8169 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_hw_start_8169(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @RTL_GIGA_MAC_VER_05, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @PCI_CACHE_LINE_SIZE, align 4
  %13 = call i32 @pci_write_config_byte(i32 %11, i32 %12, i32 8)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %16 = load i32, i32* @EarlyTxThres, align 4
  %17 = load i32, i32* @NoEarlyTx, align 4
  %18 = call i32 @RTL_W8(%struct.rtl8169_private* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @PCIMulRW, align 4
  %20 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %21 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %25 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RTL_GIGA_MAC_VER_02, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %14
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %31 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RTL_GIGA_MAC_VER_03, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29, %14
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %37 = load i32, i32* @drv, align 4
  %38 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %39 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netif_dbg(%struct.rtl8169_private* %36, i32 %37, i32 %40, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %43 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, 16384
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %35, %29
  %47 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %48 = load i32, i32* @CPlusCmd, align 4
  %49 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %50 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @RTL_W16(%struct.rtl8169_private* %47, i32 %48, i32 %51)
  %53 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %54 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %55 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @rtl8169_set_magic_reg(%struct.rtl8169_private* %53, i64 %56)
  %58 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %59 = load i32, i32* @RxMissed, align 4
  %60 = call i32 @RTL_W32(%struct.rtl8169_private* %58, i32 %59, i32 0)
  %61 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %62 = load i32, i32* @IntrMitigate, align 4
  %63 = call i32 @RTL_W16(%struct.rtl8169_private* %61, i32 %62, i32 0)
  ret void
}

declare dso_local i32 @pci_write_config_byte(i32, i32, i32) #1

declare dso_local i32 @RTL_W8(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.rtl8169_private*, i32, i32, i8*) #1

declare dso_local i32 @RTL_W16(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl8169_set_magic_reg(%struct.rtl8169_private*, i64) #1

declare dso_local i32 @RTL_W32(%struct.rtl8169_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
