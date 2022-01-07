; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_init_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_tx.c_ef4_init_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_tx_queue = type { i32, i32, i32, i32, i64, i64, i64, i64, i64, i32, %struct.ef4_nic* }
%struct.ef4_nic = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"initialising TX queue %d\0A\00", align 1
@EF4_EMPTY_COUNT_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ef4_init_tx_queue(%struct.ef4_tx_queue* %0) #0 {
  %2 = alloca %struct.ef4_tx_queue*, align 8
  %3 = alloca %struct.ef4_nic*, align 8
  store %struct.ef4_tx_queue* %0, %struct.ef4_tx_queue** %2, align 8
  %4 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %5 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %4, i32 0, i32 10
  %6 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  store %struct.ef4_nic* %6, %struct.ef4_nic** %3, align 8
  %7 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %8 = load i32, i32* @drv, align 4
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %10 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %13 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %12, i32 0, i32 9
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @netif_dbg(%struct.ef4_nic* %7, i32 %8, i32 %11, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %17 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %16, i32 0, i32 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %19 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %18, i32 0, i32 7
  store i64 0, i64* %19, align 8
  %20 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %21 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %23 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %25 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @EF4_EMPTY_COUNT_VALID, align 4
  %27 = or i32 0, %26
  %28 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %29 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %31 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %33 = call i64 @EF4_WORKAROUND_15592(%struct.ef4_nic* %32)
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 33, i32 0
  %37 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %38 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %40 = call i32 @ef4_nic_init_tx(%struct.ef4_tx_queue* %39)
  %41 = load %struct.ef4_tx_queue*, %struct.ef4_tx_queue** %2, align 8
  %42 = getelementptr inbounds %struct.ef4_tx_queue, %struct.ef4_tx_queue* %41, i32 0, i32 3
  store i32 1, i32* %42, align 4
  ret void
}

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*, i32) #1

declare dso_local i64 @EF4_WORKAROUND_15592(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_nic_init_tx(%struct.ef4_tx_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
