; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_validate_tx_req_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_validate_tx_req_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_ring = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32, %struct.ena_tx_buffer* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ena_tx_buffer = type { i32 }

@tx_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"tx_info doesn't have valid skb\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Invalid req_id: %hu\0A\00", align 1
@ENA_REGS_RESET_INV_TX_REQ_ID = common dso_local global i32 0, align 4
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_ring*, i64)* @validate_tx_req_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_tx_req_id(%struct.ena_ring* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ena_tx_buffer*, align 8
  store %struct.ena_ring* %0, %struct.ena_ring** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ena_tx_buffer* null, %struct.ena_tx_buffer** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %9 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ult i64 %7, %10
  %12 = zext i1 %11 to i32
  %13 = call i64 @likely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %17 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %16, i32 0, i32 5
  %18 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %18, i64 %19
  store %struct.ena_tx_buffer* %20, %struct.ena_tx_buffer** %6, align 8
  %21 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %6, align 8
  %22 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %75

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %6, align 8
  %30 = icmp ne %struct.ena_tx_buffer* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %33 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* @tx_done, align 4
  %36 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %37 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (%struct.TYPE_4__*, i32, i32, i8*, ...) @netif_err(%struct.TYPE_4__* %34, i32 %35, i32 %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %50

40:                                               ; preds = %28
  %41 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %42 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* @tx_done, align 4
  %45 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %46 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 (%struct.TYPE_4__*, i32, i32, i8*, ...) @netif_err(%struct.TYPE_4__* %43, i32 %44, i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %40, %31
  %51 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %52 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %51, i32 0, i32 2
  %53 = call i32 @u64_stats_update_begin(i32* %52)
  %54 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %55 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %60 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %59, i32 0, i32 2
  %61 = call i32 @u64_stats_update_end(i32* %60)
  %62 = load i32, i32* @ENA_REGS_RESET_INV_TX_REQ_ID, align 4
  %63 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %64 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 %62, i32* %66, align 4
  %67 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %68 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %69 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = call i32 @set_bit(i32 %67, i32* %71)
  %73 = load i32, i32* @EFAULT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %50, %26
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @netif_err(%struct.TYPE_4__*, i32, i32, i8*, ...) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
