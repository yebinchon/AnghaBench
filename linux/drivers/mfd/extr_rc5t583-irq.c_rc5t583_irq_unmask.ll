; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583-irq.c_rc5t583_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583-irq.c_rc5t583_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc5t583_irq_data = type { i64, i32, i64, i32 }
%struct.irq_data = type { i32 }
%struct.rc5t583 = type { i32, i32*, i32, i32* }

@rc5t583_irqs = common dso_local global %struct.rc5t583_irq_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @rc5t583_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rc5t583_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.rc5t583*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc5t583_irq_data*, align 8
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %6 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %7 = call %struct.rc5t583* @irq_data_get_irq_chip_data(%struct.irq_data* %6)
  store %struct.rc5t583* %7, %struct.rc5t583** %3, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %12 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub i32 %10, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** @rc5t583_irqs, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %15, i64 %17
  store %struct.rc5t583_irq_data* %18, %struct.rc5t583_irq_data** %5, align 8
  %19 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %5, align 8
  %20 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = shl i32 1, %22
  %24 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %25 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %5, align 8
  %28 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %23
  store i32 %32, i32* %30, align 4
  %33 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %5, align 8
  %34 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 1, %35
  %37 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %38 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %5, align 8
  %42 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = shl i32 1, %43
  %45 = load %struct.rc5t583*, %struct.rc5t583** %3, align 8
  %46 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %5, align 8
  %49 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %44
  store i32 %53, i32* %51, align 4
  ret void
}

declare dso_local %struct.rc5t583* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
