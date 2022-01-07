; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_disable_cir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_disable_cir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvt_dev = type { i32 }

@CIR_IREN = common dso_local global i32 0, align 4
@CIR_IRSTS = common dso_local global i32 0, align 4
@CIR_IRCON = common dso_local global i32 0, align 4
@LOGICAL_DEV_CIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvt_dev*)* @nvt_disable_cir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvt_disable_cir(%struct.nvt_dev* %0) #0 {
  %2 = alloca %struct.nvt_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.nvt_dev* %0, %struct.nvt_dev** %2, align 8
  %4 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %5 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %9 = load i32, i32* @CIR_IREN, align 4
  %10 = call i32 @nvt_cir_reg_write(%struct.nvt_dev* %8, i32 0, i32 %9)
  %11 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %12 = load i32, i32* @CIR_IRSTS, align 4
  %13 = call i32 @nvt_cir_reg_write(%struct.nvt_dev* %11, i32 255, i32 %12)
  %14 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %15 = load i32, i32* @CIR_IRCON, align 4
  %16 = call i32 @nvt_cir_reg_write(%struct.nvt_dev* %14, i32 0, i32 %15)
  %17 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %18 = call i32 @nvt_clear_cir_fifo(%struct.nvt_dev* %17)
  %19 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %20 = call i32 @nvt_clear_tx_fifo(%struct.nvt_dev* %19)
  %21 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %22 = getelementptr inbounds %struct.nvt_dev, %struct.nvt_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.nvt_dev*, %struct.nvt_dev** %2, align 8
  %26 = load i32, i32* @LOGICAL_DEV_CIR, align 4
  %27 = call i32 @nvt_disable_logical_dev(%struct.nvt_dev* %25, i32 %26)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nvt_cir_reg_write(%struct.nvt_dev*, i32, i32) #1

declare dso_local i32 @nvt_clear_cir_fifo(%struct.nvt_dev*) #1

declare dso_local i32 @nvt_clear_tx_fifo(%struct.nvt_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nvt_disable_logical_dev(%struct.nvt_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
