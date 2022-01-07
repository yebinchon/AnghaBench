; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_set_real_num_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_set_real_num_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"Failed to set real number of Tx queues\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to set real number of Rx queues\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*)* @qede_set_real_num_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_set_real_num_queues(%struct.qede_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %6 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %9 = call i32 @QEDE_TSS_COUNT(%struct.qede_dev* %8)
  %10 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %11 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %9, %13
  %15 = call i32 @netif_set_real_num_tx_queues(i32 %7, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %20 = call i32 @DP_NOTICE(%struct.qede_dev* %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %36

22:                                               ; preds = %1
  %23 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %24 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %27 = call i32 @QEDE_RSS_COUNT(%struct.qede_dev* %26)
  %28 = call i32 @netif_set_real_num_rx_queues(i32 %25, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %33 = call i32 @DP_NOTICE(%struct.qede_dev* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %31, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @netif_set_real_num_tx_queues(i32, i32) #1

declare dso_local i32 @QEDE_TSS_COUNT(%struct.qede_dev*) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*) #1

declare dso_local i32 @netif_set_real_num_rx_queues(i32, i32) #1

declare dso_local i32 @QEDE_RSS_COUNT(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
