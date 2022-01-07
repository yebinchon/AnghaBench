; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_clear_tx_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_clear_tx_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvt_dev = type { i32 }

@CIR_FIFOCON = common dso_local global i32 0, align 4
@CIR_FIFOCON_TXFIFOCLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvt_dev*)* @nvt_clear_tx_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvt_clear_tx_fifo(%struct.nvt_dev* %0) #0 {
  %2 = alloca %struct.nvt_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.nvt_dev* %0, %struct.nvt_dev** %2, align 8
  %4 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %5 = load i32, i32* @CIR_FIFOCON, align 4
  %6 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @CIR_FIFOCON_TXFIFOCLR, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @CIR_FIFOCON, align 4
  %12 = call i32 @nvt_cir_reg_write(%struct.nvt_dev* %7, i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @nvt_cir_reg_read(%struct.nvt_dev*, i32) #1

declare dso_local i32 @nvt_cir_reg_write(%struct.nvt_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
