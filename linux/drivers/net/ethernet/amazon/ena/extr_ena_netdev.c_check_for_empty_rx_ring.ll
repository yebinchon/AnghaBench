; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_check_for_empty_rx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_check_for_empty_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, %struct.ena_ring*, i32 }
%struct.ena_ring = type { i32, i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@ENA_FLAG_DEV_UP = common dso_local global i32 0, align 4
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@EMPTY_RX_REFILL = common dso_local global i64 0, align 8
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"trigger refill for ring %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @check_for_empty_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_empty_rx_ring(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca %struct.ena_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %6 = load i32, i32* @ENA_FLAG_DEV_UP, align 4
  %7 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %7, i32 0, i32 3
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %89

12:                                               ; preds = %1
  %13 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %14 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %14, i32 0, i32 3
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %89

19:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %86, %19
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %89

26:                                               ; preds = %20
  %27 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %27, i32 0, i32 2
  %29 = load %struct.ena_ring*, %struct.ena_ring** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %29, i64 %31
  store %struct.ena_ring* %32, %struct.ena_ring** %3, align 8
  %33 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %34 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ena_com_free_desc(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %39 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = icmp eq i32 %37, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %82

46:                                               ; preds = %26
  %47 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %48 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %52 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @EMPTY_RX_REFILL, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %46
  %57 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %58 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %57, i32 0, i32 3
  %59 = call i32 @u64_stats_update_begin(i32* %58)
  %60 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %61 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %66 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %65, i32 0, i32 3
  %67 = call i32 @u64_stats_update_end(i32* %66)
  %68 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %69 = load i32, i32* @drv, align 4
  %70 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @netif_err(%struct.ena_adapter* %68, i32 %69, i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %76 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @napi_schedule(i32 %77)
  %79 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %80 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %79, i32 0, i32 1
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %56, %46
  br label %85

82:                                               ; preds = %26
  %83 = load %struct.ena_ring*, %struct.ena_ring** %3, align 8
  %84 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %81
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %20

89:                                               ; preds = %11, %18, %20
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ena_com_free_desc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, i32, i8*, i32) #1

declare dso_local i32 @napi_schedule(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
