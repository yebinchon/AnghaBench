; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_request_mgmnt_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_request_mgmnt_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, %struct.ena_irq* }
%struct.ena_irq = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32* }

@ENA_MGMNT_IRQ_IDX = common dso_local global i64 0, align 8
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to request admin irq\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"set affinity hint of mgmnt irq.to 0x%lx (irq vector: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*)* @ena_request_mgmnt_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_request_mgmnt_irq(%struct.ena_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ena_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ena_irq*, align 8
  %6 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %7, i32 0, i32 1
  %9 = load %struct.ena_irq*, %struct.ena_irq** %8, align 8
  %10 = load i64, i64* @ENA_MGMNT_IRQ_IDX, align 8
  %11 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %9, i64 %10
  store %struct.ena_irq* %11, %struct.ena_irq** %5, align 8
  %12 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %13 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %16 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load i64, i64* %4, align 8
  %19 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %20 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %23 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @request_irq(i32 %14, i32 %17, i64 %18, i32 %21, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %1
  %29 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %30 = load i32, i32* @probe, align 4
  %31 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @netif_err(%struct.ena_adapter* %29, i32 %30, i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %59

36:                                               ; preds = %1
  %37 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %38 = load i32, i32* @probe, align 4
  %39 = load %struct.ena_adapter*, %struct.ena_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %43 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %49 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @netif_dbg(%struct.ena_adapter* %37, i32 %38, i32 %41, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %53 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ena_irq*, %struct.ena_irq** %5, align 8
  %56 = getelementptr inbounds %struct.ena_irq, %struct.ena_irq* %55, i32 0, i32 0
  %57 = call i32 @irq_set_affinity_hint(i32 %54, %struct.TYPE_2__* %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %36, %28
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @request_irq(i32, i32, i64, i32, i32) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, i32, i8*) #1

declare dso_local i32 @netif_dbg(%struct.ena_adapter*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
