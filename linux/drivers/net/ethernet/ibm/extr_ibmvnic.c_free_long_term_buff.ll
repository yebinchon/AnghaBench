; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_free_long_term_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_free_long_term_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ibmvnic_long_term_buff = type { i32, i32, i32, i32 }

@VNIC_RESET_FAILOVER = common dso_local global i64 0, align 8
@VNIC_RESET_MOBILITY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvnic_adapter*, %struct.ibmvnic_long_term_buff*)* @free_long_term_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_long_term_buff(%struct.ibmvnic_adapter* %0, %struct.ibmvnic_long_term_buff* %1) #0 {
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.ibmvnic_long_term_buff*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  store %struct.ibmvnic_long_term_buff* %1, %struct.ibmvnic_long_term_buff** %4, align 8
  %6 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %4, align 8
  %11 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %45

15:                                               ; preds = %2
  %16 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VNIC_RESET_FAILOVER, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %33

21:                                               ; preds = %15
  %22 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VNIC_RESET_MOBILITY, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %29 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %4, align 8
  %30 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @send_request_unmap(%struct.ibmvnic_adapter* %28, i32 %31)
  br label %33

33:                                               ; preds = %27, %21, %15
  %34 = load %struct.device*, %struct.device** %5, align 8
  %35 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %4, align 8
  %36 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %4, align 8
  %39 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %4, align 8
  %42 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dma_free_coherent(%struct.device* %34, i32 %37, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %33, %14
  ret void
}

declare dso_local i32 @send_request_unmap(%struct.ibmvnic_adapter*, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
