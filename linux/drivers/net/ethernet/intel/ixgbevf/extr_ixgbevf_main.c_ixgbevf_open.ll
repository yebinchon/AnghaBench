; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbevf_adapter = type { i32, i32, i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@IXGBE_ERR_MBX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to start - perhaps the PF Driver isn't up yet\0A\00", align 1
@__IXGBEVF_TESTING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbevf_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ixgbevf_adapter*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ixgbevf_adapter* %8, %struct.ixgbevf_adapter** %4, align 8
  %9 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %9, i32 0, i32 4
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %5, align 8
  %11 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %100

18:                                               ; preds = %1
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %25 = call i32 @ixgbevf_reset(%struct.ixgbevf_adapter* %24)
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* @IXGBE_ERR_MBX, align 4
  store i32 %31, i32* %6, align 4
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %98

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %33, %18
  %35 = load i32, i32* @__IXGBEVF_TESTING, align 4
  %36 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %36, i32 0, i32 2
  %38 = call i64 @test_bit(i32 %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %100

43:                                               ; preds = %34
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @netif_carrier_off(%struct.net_device* %44)
  %46 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %47 = call i32 @ixgbevf_setup_all_tx_resources(%struct.ixgbevf_adapter* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %95

51:                                               ; preds = %43
  %52 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %53 = call i32 @ixgbevf_setup_all_rx_resources(%struct.ixgbevf_adapter* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %92

57:                                               ; preds = %51
  %58 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %59 = call i32 @ixgbevf_configure(%struct.ixgbevf_adapter* %58)
  %60 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %61 = call i32 @ixgbevf_request_irq(%struct.ixgbevf_adapter* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  br label %89

65:                                               ; preds = %57
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %68 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @netif_set_real_num_tx_queues(%struct.net_device* %66, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %86

74:                                               ; preds = %65
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %77 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @netif_set_real_num_rx_queues(%struct.net_device* %75, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %86

83:                                               ; preds = %74
  %84 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %85 = call i32 @ixgbevf_up_complete(%struct.ixgbevf_adapter* %84)
  store i32 0, i32* %2, align 4
  br label %100

86:                                               ; preds = %82, %73
  %87 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %88 = call i32 @ixgbevf_free_irq(%struct.ixgbevf_adapter* %87)
  br label %89

89:                                               ; preds = %86, %64
  %90 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %91 = call i32 @ixgbevf_free_all_rx_resources(%struct.ixgbevf_adapter* %90)
  br label %92

92:                                               ; preds = %89, %56
  %93 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %94 = call i32 @ixgbevf_free_all_tx_resources(%struct.ixgbevf_adapter* %93)
  br label %95

95:                                               ; preds = %92, %50
  %96 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %97 = call i32 @ixgbevf_reset(%struct.ixgbevf_adapter* %96)
  br label %98

98:                                               ; preds = %95, %30
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %83, %40, %15
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_reset(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_setup_all_tx_resources(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_setup_all_rx_resources(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_configure(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_request_irq(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.net_device*, i32) #1

declare dso_local i32 @ixgbevf_up_complete(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_free_irq(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_free_all_rx_resources(%struct.ixgbevf_adapter*) #1

declare dso_local i32 @ixgbevf_free_all_tx_resources(%struct.ixgbevf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
