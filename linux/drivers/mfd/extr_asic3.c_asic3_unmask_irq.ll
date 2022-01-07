; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_asic3.c_asic3_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_asic3.c_asic3_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.asic3 = type { i32, i32 }

@ASIC3_INTR_BASE = common dso_local global i64 0, align 8
@ASIC3_INTR_INT_MASK = common dso_local global i64 0, align 8
@ASIC3_INTMASK_MASK0 = common dso_local global i32 0, align 4
@ASIC3_NUM_GPIOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @asic3_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asic3_unmask_irq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.asic3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.asic3* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.asic3* %7, %struct.asic3** %3, align 8
  %8 = load %struct.asic3*, %struct.asic3** %3, align 8
  %9 = getelementptr inbounds %struct.asic3, %struct.asic3* %8, i32 0, i32 1
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @raw_spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.asic3*, %struct.asic3** %3, align 8
  %13 = load i64, i64* @ASIC3_INTR_BASE, align 8
  %14 = load i64, i64* @ASIC3_INTR_INT_MASK, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @asic3_read_register(%struct.asic3* %12, i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @ASIC3_INTMASK_MASK0, align 4
  %18 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.asic3*, %struct.asic3** %3, align 8
  %22 = getelementptr inbounds %struct.asic3, %struct.asic3* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ASIC3_NUM_GPIOS, align 4
  %25 = add nsw i32 %23, %24
  %26 = sub nsw i32 %20, %25
  %27 = shl i32 %17, %26
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load %struct.asic3*, %struct.asic3** %3, align 8
  %31 = load i64, i64* @ASIC3_INTR_BASE, align 8
  %32 = load i64, i64* @ASIC3_INTR_INT_MASK, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @asic3_write_register(%struct.asic3* %30, i64 %33, i32 %34)
  %36 = load %struct.asic3*, %struct.asic3** %3, align 8
  %37 = getelementptr inbounds %struct.asic3, %struct.asic3* %36, i32 0, i32 1
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @raw_spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local %struct.asic3* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @asic3_read_register(%struct.asic3*, i64) #1

declare dso_local i32 @asic3_write_register(%struct.asic3*, i64, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
