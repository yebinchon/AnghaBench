; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_initialize_interrupt_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c_netxen_initialize_interrupt_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.netxen_adapter = type { i8*, %struct.TYPE_2__, i8*, i8*, i8*, i8*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@NX_P3_B0 = common dso_local global i64 0, align 8
@legacy_intr = common dso_local global %struct.netxen_legacy_intr_set* null, align 8
@ISR_INT_STATE_REG = common dso_local global i32 0, align 4
@ISR_INT_VECTOR = common dso_local global i32 0, align 4
@NX_P3_B1 = common dso_local global i64 0, align 8
@CRB_INT_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netxen_adapter*)* @netxen_initialize_interrupt_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netxen_initialize_interrupt_registers(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca %struct.netxen_legacy_intr_set*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %6 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NX_P3_B0, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.netxen_legacy_intr_set*, %struct.netxen_legacy_intr_set** @legacy_intr, align 8
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.netxen_legacy_intr_set, %struct.netxen_legacy_intr_set* %13, i64 %17
  store %struct.netxen_legacy_intr_set* %18, %struct.netxen_legacy_intr_set** %3, align 8
  br label %22

19:                                               ; preds = %1
  %20 = load %struct.netxen_legacy_intr_set*, %struct.netxen_legacy_intr_set** @legacy_intr, align 8
  %21 = getelementptr inbounds %struct.netxen_legacy_intr_set, %struct.netxen_legacy_intr_set* %20, i64 0
  store %struct.netxen_legacy_intr_set* %21, %struct.netxen_legacy_intr_set** %3, align 8
  br label %22

22:                                               ; preds = %19, %12
  %23 = load %struct.netxen_legacy_intr_set*, %struct.netxen_legacy_intr_set** %3, align 8
  %24 = getelementptr inbounds %struct.netxen_legacy_intr_set, %struct.netxen_legacy_intr_set* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @ISR_INT_STATE_REG, align 4
  store i32 %26, i32* %5, align 4
  %27 = load %struct.netxen_legacy_intr_set*, %struct.netxen_legacy_intr_set** %3, align 8
  %28 = getelementptr inbounds %struct.netxen_legacy_intr_set, %struct.netxen_legacy_intr_set* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 8
  %32 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i8* @netxen_get_ioaddr(%struct.netxen_adapter* %32, i32 %33)
  %35 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %38 = load %struct.netxen_legacy_intr_set*, %struct.netxen_legacy_intr_set** %3, align 8
  %39 = getelementptr inbounds %struct.netxen_legacy_intr_set, %struct.netxen_legacy_intr_set* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @netxen_get_ioaddr(%struct.netxen_adapter* %37, i32 %40)
  %42 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %45 = load %struct.netxen_legacy_intr_set*, %struct.netxen_legacy_intr_set** %3, align 8
  %46 = getelementptr inbounds %struct.netxen_legacy_intr_set, %struct.netxen_legacy_intr_set* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @netxen_get_ioaddr(%struct.netxen_adapter* %44, i32 %47)
  %49 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %52 = load i32, i32* @ISR_INT_VECTOR, align 4
  %53 = call i8* @netxen_get_ioaddr(%struct.netxen_adapter* %51, i32 %52)
  %54 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %54, i32 0, i32 2
  store i8* %53, i8** %55, align 8
  %56 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NX_P3_B1, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %22
  %63 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i8* @netxen_get_ioaddr(%struct.netxen_adapter* %63, i32 %64)
  %66 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %66, i32 0, i32 0
  store i8* %65, i8** %67, align 8
  br label %74

68:                                               ; preds = %22
  %69 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %70 = load i32, i32* @CRB_INT_VECTOR, align 4
  %71 = call i8* @netxen_get_ioaddr(%struct.netxen_adapter* %69, i32 %70)
  %72 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  br label %74

74:                                               ; preds = %68, %62
  ret void
}

declare dso_local i8* @netxen_get_ioaddr(%struct.netxen_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
