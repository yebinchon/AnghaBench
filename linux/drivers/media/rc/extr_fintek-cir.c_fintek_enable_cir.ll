; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_fintek-cir.c_fintek_enable_cir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_fintek-cir.c_fintek_enable_cir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fintek_dev = type { i32 }

@CIR_STATUS_IRQ_EN = common dso_local global i32 0, align 4
@CIR_STATUS = common dso_local global i32 0, align 4
@LOGICAL_DEV_ENABLE = common dso_local global i32 0, align 4
@CIR_CR_DEV_EN = common dso_local global i32 0, align 4
@CIR_STATUS_IRQ_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fintek_dev*)* @fintek_enable_cir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fintek_enable_cir(%struct.fintek_dev* %0) #0 {
  %2 = alloca %struct.fintek_dev*, align 8
  store %struct.fintek_dev* %0, %struct.fintek_dev** %2, align 8
  %3 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %4 = load i32, i32* @CIR_STATUS_IRQ_EN, align 4
  %5 = load i32, i32* @CIR_STATUS, align 4
  %6 = call i32 @fintek_cir_reg_write(%struct.fintek_dev* %3, i32 %4, i32 %5)
  %7 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %8 = call i32 @fintek_config_mode_enable(%struct.fintek_dev* %7)
  %9 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %10 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %11 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @fintek_select_logical_dev(%struct.fintek_dev* %9, i32 %12)
  %14 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %15 = load i32, i32* @LOGICAL_DEV_ENABLE, align 4
  %16 = load i32, i32* @CIR_CR_DEV_EN, align 4
  %17 = call i32 @fintek_cr_write(%struct.fintek_dev* %14, i32 %15, i32 %16)
  %18 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %19 = call i32 @fintek_config_mode_disable(%struct.fintek_dev* %18)
  %20 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %21 = load i32, i32* @CIR_STATUS_IRQ_MASK, align 4
  %22 = load i32, i32* @CIR_STATUS, align 4
  %23 = call i32 @fintek_cir_reg_write(%struct.fintek_dev* %20, i32 %21, i32 %22)
  %24 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %25 = call i32 @fintek_enable_cir_irq(%struct.fintek_dev* %24)
  ret void
}

declare dso_local i32 @fintek_cir_reg_write(%struct.fintek_dev*, i32, i32) #1

declare dso_local i32 @fintek_config_mode_enable(%struct.fintek_dev*) #1

declare dso_local i32 @fintek_select_logical_dev(%struct.fintek_dev*, i32) #1

declare dso_local i32 @fintek_cr_write(%struct.fintek_dev*, i32, i32) #1

declare dso_local i32 @fintek_config_mode_disable(%struct.fintek_dev*) #1

declare dso_local i32 @fintek_enable_cir_irq(%struct.fintek_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
