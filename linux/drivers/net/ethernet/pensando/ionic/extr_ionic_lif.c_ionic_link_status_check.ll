; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_link_status_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_lif.c_ionic_link_status_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32, %struct.net_device*, %struct.TYPE_3__* }
%struct.net_device = type { i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@IONIC_PORT_OPER_STATUS_UP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Link up - %d Gbps\0A\00", align 1
@IONIC_LIF_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Link down\0A\00", align 1
@IONIC_LIF_LINK_CHECK_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_lif*)* @ionic_link_status_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_link_status_check(%struct.ionic_lif* %0) #0 {
  %2 = alloca %struct.ionic_lif*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %2, align 8
  %6 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %7 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %6, i32 0, i32 1
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %10 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le16_to_cpu(i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @IONIC_PORT_OPER_STATUS_UP, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @netif_carrier_ok(%struct.net_device* %21)
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %69

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %25
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %31 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @le32_to_cpu(i32 %35)
  %37 = sdiv i32 %36, 1000
  %38 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @IONIC_LIF_UP, align 4
  %40 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %41 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @test_bit(i32 %39, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %28
  %46 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %47 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %46, i32 0, i32 1
  %48 = load %struct.net_device*, %struct.net_device** %47, align 8
  %49 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %48)
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i32 @netif_carrier_on(%struct.net_device* %50)
  br label %52

52:                                               ; preds = %45, %28
  br label %68

53:                                               ; preds = %25
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = call i32 (%struct.net_device*, i8*, ...) @netdev_info(%struct.net_device* %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @netif_carrier_off(%struct.net_device* %56)
  %58 = load i32, i32* @IONIC_LIF_UP, align 4
  %59 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %60 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @test_bit(i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %65)
  br label %67

67:                                               ; preds = %64, %53
  br label %68

68:                                               ; preds = %67, %52
  br label %69

69:                                               ; preds = %68, %24
  %70 = load i32, i32* @IONIC_LIF_LINK_CHECK_REQUESTED, align 4
  %71 = load %struct.ionic_lif*, %struct.ionic_lif** %2, align 8
  %72 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @clear_bit(i32 %70, i32 %73)
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
