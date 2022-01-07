; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_fintek-cir.c_fintek_cir_ldev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_fintek-cir.c_fintek_cir_ldev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fintek_dev = type { i32, i32, i32, i32 }

@LOGICAL_DEV_ENABLE = common dso_local global i32 0, align 4
@CIR_CR_DEV_EN = common dso_local global i32 0, align 4
@CIR_CR_BASE_ADDR_HI = common dso_local global i32 0, align 4
@CIR_CR_BASE_ADDR_LO = common dso_local global i32 0, align 4
@CIR_CR_IRQ_SEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"CIR initialized, base io address: 0x%lx, irq: %d (len: %d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fintek_dev*)* @fintek_cir_ldev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fintek_cir_ldev_init(%struct.fintek_dev* %0) #0 {
  %2 = alloca %struct.fintek_dev*, align 8
  store %struct.fintek_dev* %0, %struct.fintek_dev** %2, align 8
  %3 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %4 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %5 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @fintek_select_logical_dev(%struct.fintek_dev* %3, i32 %6)
  %8 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %9 = load i32, i32* @LOGICAL_DEV_ENABLE, align 4
  %10 = load i32, i32* @CIR_CR_DEV_EN, align 4
  %11 = call i32 @fintek_cr_write(%struct.fintek_dev* %8, i32 %9, i32 %10)
  %12 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %13 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %14 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 8
  %17 = load i32, i32* @CIR_CR_BASE_ADDR_HI, align 4
  %18 = call i32 @fintek_cr_write(%struct.fintek_dev* %12, i32 %16, i32 %17)
  %19 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %20 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %21 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  %24 = load i32, i32* @CIR_CR_BASE_ADDR_LO, align 4
  %25 = call i32 @fintek_cr_write(%struct.fintek_dev* %19, i32 %23, i32 %24)
  %26 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %27 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %28 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @CIR_CR_IRQ_SEL, align 4
  %31 = call i32 @fintek_cr_write(%struct.fintek_dev* %26, i32 %29, i32 %30)
  %32 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %33 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %36 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fintek_dev*, %struct.fintek_dev** %2, align 8
  %39 = getelementptr inbounds %struct.fintek_dev, %struct.fintek_dev* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fit_dbg(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  ret void
}

declare dso_local i32 @fintek_select_logical_dev(%struct.fintek_dev*, i32) #1

declare dso_local i32 @fintek_cr_write(%struct.fintek_dev*, i32, i32) #1

declare dso_local i32 @fit_dbg(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
