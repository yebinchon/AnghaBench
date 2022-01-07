; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_read_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_read_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32 }

@ASIC_REV_5906 = common dso_local global i64 0, align 8
@NIC_SRAM_STATS_BLK = common dso_local global i64 0, align 8
@NIC_SRAM_TX_BUFFER_DESC = common dso_local global i64 0, align 8
@SRAM_USE_CONFIG = common dso_local global i32 0, align 4
@TG3PCI_MEM_WIN_BASE_ADDR = common dso_local global i32 0, align 4
@TG3PCI_MEM_WIN_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i64, i64*)* @tg3_read_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_read_mem(%struct.tg3* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.tg3*, %struct.tg3** %4, align 8
  %9 = call i64 @tg3_asic_rev(%struct.tg3* %8)
  %10 = load i64, i64* @ASIC_REV_5906, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @NIC_SRAM_STATS_BLK, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @NIC_SRAM_TX_BUFFER_DESC, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64*, i64** %6, align 8
  store i64 0, i64* %21, align 8
  br label %63

22:                                               ; preds = %16, %12, %3
  %23 = load %struct.tg3*, %struct.tg3** %4, align 8
  %24 = getelementptr inbounds %struct.tg3, %struct.tg3* %23, i32 0, i32 0
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @spin_lock_irqsave(i32* %24, i64 %25)
  %27 = load %struct.tg3*, %struct.tg3** %4, align 8
  %28 = load i32, i32* @SRAM_USE_CONFIG, align 4
  %29 = call i64 @tg3_flag(%struct.tg3* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %22
  %32 = load %struct.tg3*, %struct.tg3** %4, align 8
  %33 = getelementptr inbounds %struct.tg3, %struct.tg3* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @TG3PCI_MEM_WIN_BASE_ADDR, align 4
  %36 = load i64, i64* %5, align 8
  %37 = call i32 @pci_write_config_dword(i32 %34, i32 %35, i64 %36)
  %38 = load %struct.tg3*, %struct.tg3** %4, align 8
  %39 = getelementptr inbounds %struct.tg3, %struct.tg3* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TG3PCI_MEM_WIN_DATA, align 4
  %42 = load i64*, i64** %6, align 8
  %43 = call i32 @pci_read_config_dword(i32 %40, i32 %41, i64* %42)
  %44 = load %struct.tg3*, %struct.tg3** %4, align 8
  %45 = getelementptr inbounds %struct.tg3, %struct.tg3* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TG3PCI_MEM_WIN_BASE_ADDR, align 4
  %48 = call i32 @pci_write_config_dword(i32 %46, i32 %47, i64 0)
  br label %58

49:                                               ; preds = %22
  %50 = load i32, i32* @TG3PCI_MEM_WIN_BASE_ADDR, align 4
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @tw32_f(i32 %50, i64 %51)
  %53 = load i32, i32* @TG3PCI_MEM_WIN_DATA, align 4
  %54 = call i64 @tr32(i32 %53)
  %55 = load i64*, i64** %6, align 8
  store i64 %54, i64* %55, align 8
  %56 = load i32, i32* @TG3PCI_MEM_WIN_BASE_ADDR, align 4
  %57 = call i32 @tw32_f(i32 %56, i64 0)
  br label %58

58:                                               ; preds = %49, %31
  %59 = load %struct.tg3*, %struct.tg3** %4, align 8
  %60 = getelementptr inbounds %struct.tg3, %struct.tg3* %59, i32 0, i32 0
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @spin_unlock_irqrestore(i32* %60, i64 %61)
  br label %63

63:                                               ; preds = %58, %20
  ret void
}

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i64) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i64*) #1

declare dso_local i32 @tw32_f(i32, i64) #1

declare dso_local i64 @tr32(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
