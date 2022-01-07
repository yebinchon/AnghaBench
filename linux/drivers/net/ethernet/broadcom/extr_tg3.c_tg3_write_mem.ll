; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_write_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_write_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32 }

@ASIC_REV_5906 = common dso_local global i64 0, align 8
@NIC_SRAM_STATS_BLK = common dso_local global i64 0, align 8
@NIC_SRAM_TX_BUFFER_DESC = common dso_local global i64 0, align 8
@SRAM_USE_CONFIG = common dso_local global i32 0, align 4
@TG3PCI_MEM_WIN_BASE_ADDR = common dso_local global i32 0, align 4
@TG3PCI_MEM_WIN_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i64, i64)* @tg3_write_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_write_mem(%struct.tg3* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.tg3*, %struct.tg3** %4, align 8
  %9 = call i64 @tg3_asic_rev(%struct.tg3* %8)
  %10 = load i64, i64* @ASIC_REV_5906, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @NIC_SRAM_STATS_BLK, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @NIC_SRAM_TX_BUFFER_DESC, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %62

21:                                               ; preds = %16, %12, %3
  %22 = load %struct.tg3*, %struct.tg3** %4, align 8
  %23 = getelementptr inbounds %struct.tg3, %struct.tg3* %22, i32 0, i32 0
  %24 = load i64, i64* %7, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.tg3*, %struct.tg3** %4, align 8
  %27 = load i32, i32* @SRAM_USE_CONFIG, align 4
  %28 = call i64 @tg3_flag(%struct.tg3* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %21
  %31 = load %struct.tg3*, %struct.tg3** %4, align 8
  %32 = getelementptr inbounds %struct.tg3, %struct.tg3* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @TG3PCI_MEM_WIN_BASE_ADDR, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @pci_write_config_dword(i32 %33, i32 %34, i64 %35)
  %37 = load %struct.tg3*, %struct.tg3** %4, align 8
  %38 = getelementptr inbounds %struct.tg3, %struct.tg3* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TG3PCI_MEM_WIN_DATA, align 4
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @pci_write_config_dword(i32 %39, i32 %40, i64 %41)
  %43 = load %struct.tg3*, %struct.tg3** %4, align 8
  %44 = getelementptr inbounds %struct.tg3, %struct.tg3* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @TG3PCI_MEM_WIN_BASE_ADDR, align 4
  %47 = call i32 @pci_write_config_dword(i32 %45, i32 %46, i64 0)
  br label %57

48:                                               ; preds = %21
  %49 = load i32, i32* @TG3PCI_MEM_WIN_BASE_ADDR, align 4
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @tw32_f(i32 %49, i64 %50)
  %52 = load i32, i32* @TG3PCI_MEM_WIN_DATA, align 4
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @tw32_f(i32 %52, i64 %53)
  %55 = load i32, i32* @TG3PCI_MEM_WIN_BASE_ADDR, align 4
  %56 = call i32 @tw32_f(i32 %55, i64 0)
  br label %57

57:                                               ; preds = %48, %30
  %58 = load %struct.tg3*, %struct.tg3** %4, align 8
  %59 = getelementptr inbounds %struct.tg3, %struct.tg3* %58, i32 0, i32 0
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  br label %62

62:                                               ; preds = %57, %20
  ret void
}

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i64) #1

declare dso_local i32 @tw32_f(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
