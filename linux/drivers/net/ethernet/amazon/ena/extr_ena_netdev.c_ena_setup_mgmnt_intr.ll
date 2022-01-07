; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_setup_mgmnt_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_setup_mgmnt_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.ena_adapter*, i32, i32 }

@ENA_MGMNT_IRQ_IDX = common dso_local global i64 0, align 8
@ENA_IRQNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ena-mgmnt@pci:%s\00", align 1
@ena_intr_msix_mgmnt = common dso_local global i32 0, align 4
@cpu_online_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @ena_setup_mgmnt_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_setup_mgmnt_intr(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %4 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = load i64, i64* @ENA_MGMNT_IRQ_IDX, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ENA_IRQNAME_SIZE, align 4
  %12 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @pci_name(i32 %14)
  %16 = call i32 @snprintf(i32 %10, i32 %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* @ena_intr_msix_mgmnt, align 4
  %18 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* @ENA_MGMNT_IRQ_IDX, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  store i32 %17, i32* %23, align 8
  %24 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %25 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* @ENA_MGMNT_IRQ_IDX, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store %struct.ena_adapter* %24, %struct.ena_adapter** %30, align 8
  %31 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* @ENA_MGMNT_IRQ_IDX, align 8
  %35 = call i32 @pci_irq_vector(i32 %33, i64 %34)
  %36 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* @ENA_MGMNT_IRQ_IDX, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  store i32 %35, i32* %41, align 8
  %42 = load i32, i32* @cpu_online_mask, align 4
  %43 = call i32 @cpumask_first(i32 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i64, i64* @ENA_MGMNT_IRQ_IDX, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i32 %44, i32* %50, align 4
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i64, i64* @ENA_MGMNT_IRQ_IDX, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = call i32 @cpumask_set_cpu(i32 %51, i32* %57)
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i8* @pci_name(i32) #1

declare dso_local i32 @pci_irq_vector(i32, i64) #1

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
