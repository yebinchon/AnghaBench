; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_link_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_main.c_qede_link_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_link_output = type { i64 }
%struct.qede_dev = type { i32, i32 }

@QEDE_FLAGS_LINK_REQUESTED = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Interface is not ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Link is up\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Link is down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.qed_link_output*)* @qede_link_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qede_link_update(i8* %0, %struct.qed_link_output* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qed_link_output*, align 8
  %5 = alloca %struct.qede_dev*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.qed_link_output* %1, %struct.qed_link_output** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.qede_dev*
  store %struct.qede_dev* %7, %struct.qede_dev** %5, align 8
  %8 = load i32, i32* @QEDE_FLAGS_LINK_REQUESTED, align 4
  %9 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %10 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %9, i32 0, i32 1
  %11 = call i32 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %15 = load i32, i32* @NETIF_MSG_LINK, align 4
  %16 = call i32 @DP_VERBOSE(%struct.qede_dev* %14, i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %62

17:                                               ; preds = %2
  %18 = load %struct.qed_link_output*, %struct.qed_link_output** %4, align 8
  %19 = getelementptr inbounds %struct.qed_link_output, %struct.qed_link_output* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %24 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @netif_carrier_ok(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %41, label %28

28:                                               ; preds = %22
  %29 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %30 = call i32 @DP_NOTICE(%struct.qede_dev* %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %32 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @netif_tx_start_all_queues(i32 %33)
  %35 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %36 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @netif_carrier_on(i32 %37)
  %39 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %40 = call i32 @qede_rdma_dev_event_open(%struct.qede_dev* %39)
  br label %41

41:                                               ; preds = %28, %22
  br label %62

42:                                               ; preds = %17
  %43 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %44 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @netif_carrier_ok(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %42
  %49 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %50 = call i32 @DP_NOTICE(%struct.qede_dev* %49, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %52 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @netif_tx_disable(i32 %53)
  %55 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %56 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @netif_carrier_off(i32 %57)
  %59 = load %struct.qede_dev*, %struct.qede_dev** %5, align 8
  %60 = call i32 @qede_rdma_dev_event_close(%struct.qede_dev* %59)
  br label %61

61:                                               ; preds = %48, %42
  br label %62

62:                                               ; preds = %13, %61, %41
  ret void
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qede_dev*, i8*) #1

declare dso_local i32 @netif_tx_start_all_queues(i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @qede_rdma_dev_event_open(%struct.qede_dev*) #1

declare dso_local i32 @netif_tx_disable(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @qede_rdma_dev_event_close(%struct.qede_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
