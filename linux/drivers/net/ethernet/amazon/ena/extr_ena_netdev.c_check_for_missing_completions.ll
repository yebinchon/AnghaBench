; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_check_for_missing_completions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_check_for_missing_completions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i64, i32, i32, %struct.ena_ring*, %struct.ena_ring*, i32 }
%struct.ena_ring = type { i32 }

@ENA_FLAG_DEV_UP = common dso_local global i32 0, align 4
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@ENA_HW_HINTS_NO_TIMEOUT = common dso_local global i64 0, align 8
@ENA_MONITORED_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @check_for_missing_completions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_missing_completions(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca %struct.ena_ring*, align 8
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %8 = call i32 (...) @smp_rmb()
  %9 = load i32, i32* @ENA_FLAG_DEV_UP, align 4
  %10 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %10, i32 0, i32 5
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %86

15:                                               ; preds = %1
  %16 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %17, i32 0, i32 5
  %19 = call i64 @test_bit(i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %86

22:                                               ; preds = %15
  %23 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ENA_HW_HINTS_NO_TIMEOUT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %86

29:                                               ; preds = %22
  %30 = load i32, i32* @ENA_MONITORED_TX_QUEUES, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %32 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %75, %29
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %34
  %41 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %41, i32 0, i32 4
  %43 = load %struct.ena_ring*, %struct.ena_ring** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %43, i64 %45
  store %struct.ena_ring* %46, %struct.ena_ring** %3, align 8
  %47 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %47, i32 0, i32 3
  %49 = load %struct.ena_ring*, %struct.ena_ring** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %49, i64 %51
  store %struct.ena_ring* %52, %struct.ena_ring** %4, align 8
  %53 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %54 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %55 = call i32 @check_missing_comp_in_tx_queue(%struct.ena_adapter* %53, %struct.ena_ring* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %40
  br label %86

60:                                               ; preds = %40
  %61 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %62 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %63 = call i32 @check_for_rx_interrupt_queue(%struct.ena_adapter* %61, %struct.ena_ring* %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %86

68:                                               ; preds = %60
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %78

74:                                               ; preds = %68
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %34

78:                                               ; preds = %73, %34
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %81 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = srem i32 %79, %82
  %84 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  br label %86

86:                                               ; preds = %78, %67, %59, %28, %21, %14
  ret void
}

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @check_missing_comp_in_tx_queue(%struct.ena_adapter*, %struct.ena_ring*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @check_for_rx_interrupt_queue(%struct.ena_adapter*, %struct.ena_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
