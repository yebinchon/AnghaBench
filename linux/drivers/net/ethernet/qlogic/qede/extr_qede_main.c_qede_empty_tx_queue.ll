; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_empty_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_empty_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32 }
%struct.qede_tx_queue = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { i32 }

@NETIF_MSG_IFDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Freeing a packet on tx queue[%d]: chain_cons 0x%x, chain_prod 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [75 x i8] c"Failed to free a packet on tx queue[%d]: chain_cons 0x%x, chain_prod 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qede_dev*, %struct.qede_tx_queue*)* @qede_empty_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_empty_tx_queue(%struct.qede_dev* %0, %struct.qede_tx_queue* %1) #0 {
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca %struct.qede_tx_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.netdev_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store %struct.qede_tx_queue* %1, %struct.qede_tx_queue** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %11 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %14 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %12, i32 %15)
  store %struct.netdev_queue* %16, %struct.netdev_queue** %7, align 8
  br label %17

17:                                               ; preds = %55, %2
  %18 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %19 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %18, i32 0, i32 1
  %20 = call i64 @qed_chain_get_cons_idx(i32* %19)
  %21 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %22 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %21, i32 0, i32 1
  %23 = call i64 @qed_chain_get_prod_idx(i32* %22)
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %17
  %26 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %27 = load i32, i32* @NETIF_MSG_IFDOWN, align 4
  %28 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %29 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %32 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %31, i32 0, i32 1
  %33 = call i64 @qed_chain_get_cons_idx(i32* %32)
  %34 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %35 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %34, i32 0, i32 1
  %36 = call i64 @qed_chain_get_prod_idx(i32* %35)
  %37 = call i32 @DP_VERBOSE(%struct.qede_dev* %26, i32 %27, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33, i64 %36)
  %38 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %39 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %40 = call i32 @qede_free_tx_pkt(%struct.qede_dev* %38, %struct.qede_tx_queue* %39, i32* %9)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %25
  %44 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %45 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %46 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %49 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %48, i32 0, i32 1
  %50 = call i64 @qed_chain_get_cons_idx(i32* %49)
  %51 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %52 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %51, i32 0, i32 1
  %53 = call i64 @qed_chain_get_prod_idx(i32* %52)
  %54 = call i32 @DP_NOTICE(%struct.qede_dev* %44, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0), i32 %47, i64 %50, i64 %53)
  br label %65

55:                                               ; preds = %25
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %6, align 4
  %58 = add i32 %57, %56
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %5, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %5, align 4
  %61 = load %struct.qede_tx_queue*, %struct.qede_tx_queue** %4, align 8
  %62 = getelementptr inbounds %struct.qede_tx_queue, %struct.qede_tx_queue* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %17

65:                                               ; preds = %43, %17
  %66 = load %struct.netdev_queue*, %struct.netdev_queue** %7, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %66, i32 %67, i32 %68)
  ret void
}

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i32) #1

declare dso_local i64 @qed_chain_get_cons_idx(i32*) #1

declare dso_local i64 @qed_chain_get_prod_idx(i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i32, i64, i64) #1

declare dso_local i32 @qede_free_tx_pkt(%struct.qede_dev*, %struct.qede_tx_queue*, i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*, i32, i64, i64) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
