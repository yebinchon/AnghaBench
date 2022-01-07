; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_t7l66xb.c_t7l66xb_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_t7l66xb.c_t7l66xb_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.t7l66xb = type { i32, i32, i64 }

@SCR_IMR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @t7l66xb_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t7l66xb_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.t7l66xb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.t7l66xb* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.t7l66xb* %7, %struct.t7l66xb** %3, align 8
  %8 = load %struct.t7l66xb*, %struct.t7l66xb** %3, align 8
  %9 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %8, i32 0, i32 1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @raw_spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.t7l66xb*, %struct.t7l66xb** %3, align 8
  %13 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SCR_IMR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @tmio_ioread8(i64 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %19 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.t7l66xb*, %struct.t7l66xb** %3, align 8
  %22 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %20, %23
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.t7l66xb*, %struct.t7l66xb** %3, align 8
  %31 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SCR_IMR, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @tmio_iowrite8(i32 %29, i64 %34)
  %36 = load %struct.t7l66xb*, %struct.t7l66xb** %3, align 8
  %37 = getelementptr inbounds %struct.t7l66xb, %struct.t7l66xb* %36, i32 0, i32 1
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @raw_spin_unlock_irqrestore(i32* %37, i64 %38)
  ret void
}

declare dso_local %struct.t7l66xb* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tmio_ioread8(i64) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
