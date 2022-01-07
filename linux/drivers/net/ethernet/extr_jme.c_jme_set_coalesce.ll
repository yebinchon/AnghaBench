; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i64 }
%struct.jme_adapter = type { i32, i32, %struct.dynpcc_info }
%struct.dynpcc_info = type { i64, i8*, i8* }

@EBUSY = common dso_local global i32 0, align 4
@JME_FLAG_POLL = common dso_local global i32 0, align 4
@netif_rx = common dso_local global i32 0, align 4
@PCC_P1 = common dso_local global i8* null, align 8
@netif_receive_skb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @jme_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.jme_adapter*, align 8
  %7 = alloca %struct.dynpcc_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.jme_adapter* %9, %struct.jme_adapter** %6, align 8
  %10 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %10, i32 0, i32 2
  store %struct.dynpcc_info* %11, %struct.dynpcc_info** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call i64 @netif_running(%struct.net_device* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %73

18:                                               ; preds = %2
  %19 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %18
  %24 = load i32, i32* @JME_FLAG_POLL, align 4
  %25 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %25, i32 0, i32 1
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %23
  %30 = load i32, i32* @JME_FLAG_POLL, align 4
  %31 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %32 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %31, i32 0, i32 1
  %33 = call i32 @clear_bit(i32 %30, i32* %32)
  %34 = load i32, i32* @netif_rx, align 4
  %35 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** @PCC_P1, align 8
  %38 = load %struct.dynpcc_info*, %struct.dynpcc_info** %7, align 8
  %39 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** @PCC_P1, align 8
  %41 = load %struct.dynpcc_info*, %struct.dynpcc_info** %7, align 8
  %42 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.dynpcc_info*, %struct.dynpcc_info** %7, align 8
  %44 = getelementptr inbounds %struct.dynpcc_info, %struct.dynpcc_info* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %46 = load i8*, i8** @PCC_P1, align 8
  %47 = call i32 @jme_set_rx_pcc(%struct.jme_adapter* %45, i8* %46)
  %48 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %49 = call i32 @jme_interrupt_mode(%struct.jme_adapter* %48)
  br label %72

50:                                               ; preds = %23, %18
  %51 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @JME_FLAG_POLL, align 4
  %57 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %57, i32 0, i32 1
  %59 = call i64 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @JME_FLAG_POLL, align 4
  %63 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %63, i32 0, i32 1
  %65 = call i32 @set_bit(i32 %62, i32* %64)
  %66 = load i32, i32* @netif_receive_skb, align 4
  %67 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.jme_adapter*, %struct.jme_adapter** %6, align 8
  %70 = call i32 @jme_interrupt_mode(%struct.jme_adapter* %69)
  br label %71

71:                                               ; preds = %61, %55, %50
  br label %72

72:                                               ; preds = %71, %29
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %15
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @jme_set_rx_pcc(%struct.jme_adapter*, i8*) #1

declare dso_local i32 @jme_interrupt_mode(%struct.jme_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
