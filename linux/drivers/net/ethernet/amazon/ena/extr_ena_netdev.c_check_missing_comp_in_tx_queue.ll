; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_check_missing_comp_in_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_check_missing_comp_in_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32, i32, i64, i32 }
%struct.ena_ring = type { i32, i32, %struct.TYPE_2__, i32, i32, %struct.ena_tx_buffer* }
%struct.TYPE_2__ = type { i64 }
%struct.ena_tx_buffer = type { i64, i32 }

@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Potential MSIX issue on Tx side Queue = %d. Reset the device\0A\00", align 1
@ENA_REGS_RESET_MISS_INTERRUPT = common dso_local global i32 0, align 4
@ENA_FLAG_TRIGGER_RESET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"Found a Tx that wasn't completed on time, qid %d, index %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [86 x i8] c"The number of lost tx completions is above the threshold (%d > %d). Reset the device\0A\00", align 1
@ENA_REGS_RESET_MISS_TX_CMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_adapter*, %struct.ena_ring*)* @check_missing_comp_in_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_missing_comp_in_tx_queue(%struct.ena_adapter* %0, %struct.ena_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_adapter*, align 8
  %5 = alloca %struct.ena_ring*, align 8
  %6 = alloca %struct.ena_tx_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %4, align 8
  store %struct.ena_ring* %1, %struct.ena_ring** %5, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %103, %2
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %14 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %106

17:                                               ; preds = %11
  %18 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %19 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %18, i32 0, i32 5
  %20 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %20, i64 %22
  store %struct.ena_tx_buffer* %23, %struct.ena_tx_buffer** %6, align 8
  %24 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %103

30:                                               ; preds = %17
  %31 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %32 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = mul nsw i32 2, %39
  %41 = sext i32 %40 to i64
  %42 = add i64 %36, %41
  %43 = call i32 @time_is_before_jiffies(i64 %42)
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %35, %30
  %46 = phi i1 [ false, %30 ], [ %44, %35 ]
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %71

50:                                               ; preds = %45
  %51 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %52 = load i32, i32* @tx_err, align 4
  %53 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %54 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %57 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = call i32 (%struct.ena_adapter*, i32, i32, i8*, i64, ...) @netif_err(%struct.ena_adapter* %51, i32 %52, i32 %55, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %59)
  %61 = load i32, i32* @ENA_REGS_RESET_MISS_INTERRUPT, align 4
  %62 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = call i32 (...) @smp_mb__before_atomic()
  %65 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %66 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %66, i32 0, i32 1
  %68 = call i32 @set_bit(i32 %65, i32* %67)
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %147

71:                                               ; preds = %45
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = add i64 %72, %76
  %78 = call i32 @time_is_before_jiffies(i64 %77)
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %71
  %82 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %6, align 8
  %83 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %81
  %87 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %88 = load i32, i32* @tx_err, align 4
  %89 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %90 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %93 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @netif_notice(%struct.ena_adapter* %87, i32 %88, i32 %91, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %86, %81
  %98 = load %struct.ena_tx_buffer*, %struct.ena_tx_buffer** %6, align 8
  %99 = getelementptr inbounds %struct.ena_tx_buffer, %struct.ena_tx_buffer* %98, i32 0, i32 1
  store i32 1, i32* %99, align 8
  %100 = load i64, i64* %8, align 8
  %101 = add nsw i64 %100, 1
  store i64 %101, i64* %8, align 8
  br label %102

102:                                              ; preds = %97, %71
  br label %103

103:                                              ; preds = %102, %29
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %11

106:                                              ; preds = %11
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %109 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %107, %110
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %106
  %116 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %117 = load i32, i32* @tx_err, align 4
  %118 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %119 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %123 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (%struct.ena_adapter*, i32, i32, i8*, i64, ...) @netif_err(%struct.ena_adapter* %116, i32 %117, i32 %120, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i64 %121, i64 %124)
  %126 = load i32, i32* @ENA_REGS_RESET_MISS_TX_CMPL, align 4
  %127 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %128 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load i32, i32* @ENA_FLAG_TRIGGER_RESET, align 4
  %130 = load %struct.ena_adapter*, %struct.ena_adapter** %4, align 8
  %131 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %130, i32 0, i32 1
  %132 = call i32 @set_bit(i32 %129, i32* %131)
  %133 = load i32, i32* @EIO, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %10, align 4
  br label %135

135:                                              ; preds = %115, %106
  %136 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %137 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %136, i32 0, i32 1
  %138 = call i32 @u64_stats_update_begin(i32* %137)
  %139 = load i64, i64* %8, align 8
  %140 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %141 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  store i64 %139, i64* %142, align 8
  %143 = load %struct.ena_ring*, %struct.ena_ring** %5, align 8
  %144 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %143, i32 0, i32 1
  %145 = call i32 @u64_stats_update_end(i32* %144)
  %146 = load i32, i32* %10, align 4
  store i32 %146, i32* %3, align 4
  br label %147

147:                                              ; preds = %135, %50
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @time_is_before_jiffies(i64) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, i32, i8*, i64, ...) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_notice(%struct.ena_adapter*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
