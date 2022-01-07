; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i64 }

@GPMC_NR_NAND_IRQS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @gpmc_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmc_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %7 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @GPMC_NR_NAND_IRQS, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %20 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @gpmc_irq_edge_config(i64 %21, i32 0)
  br label %36

23:                                               ; preds = %14
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %29 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @gpmc_irq_edge_config(i64 %30, i32 1)
  br label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %37

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35, %18
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %32, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @gpmc_irq_edge_config(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
