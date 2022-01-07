; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_write_indirect_reg32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_write_indirect_reg32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32 }

@TG3PCI_REG_BASE_ADDR = common dso_local global i32 0, align 4
@TG3PCI_REG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32, i32)* @tg3_write_indirect_reg32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_write_indirect_reg32(%struct.tg3* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tg3*, %struct.tg3** %4, align 8
  %9 = getelementptr inbounds %struct.tg3, %struct.tg3* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.tg3*, %struct.tg3** %4, align 8
  %13 = getelementptr inbounds %struct.tg3, %struct.tg3* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TG3PCI_REG_BASE_ADDR, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @pci_write_config_dword(i32 %14, i32 %15, i32 %16)
  %18 = load %struct.tg3*, %struct.tg3** %4, align 8
  %19 = getelementptr inbounds %struct.tg3, %struct.tg3* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @TG3PCI_REG_DATA, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @pci_write_config_dword(i32 %20, i32 %21, i32 %22)
  %24 = load %struct.tg3*, %struct.tg3** %4, align 8
  %25 = getelementptr inbounds %struct.tg3, %struct.tg3* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
