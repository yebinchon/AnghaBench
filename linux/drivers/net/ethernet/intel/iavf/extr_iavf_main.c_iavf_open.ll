; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iavf_adapter = type { i32, i64, i32, i32, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IAVF_FLAG_PF_COMMS_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Unable to open device due to PF driver failure.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@__IAVF_IN_CRITICAL_TASK = common dso_local global i32 0, align 4
@__IAVF_DOWN = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @iavf_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.iavf_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.iavf_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.iavf_adapter* %7, %struct.iavf_adapter** %4, align 8
  %8 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IAVF_FLAG_PF_COMMS_FAILED, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %15, i32 0, i32 5
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %102

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %29, %22
  %24 = load i32, i32* @__IAVF_IN_CRITICAL_TASK, align 4
  %25 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %25, i32 0, i32 2
  %27 = call i64 @test_and_set_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @usleep_range(i32 500, i32 1000)
  br label %23

31:                                               ; preds = %23
  %32 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @__IAVF_DOWN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %96

40:                                               ; preds = %31
  %41 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %42 = call i32 @iavf_setup_all_tx_resources(%struct.iavf_adapter* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %93

46:                                               ; preds = %40
  %47 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %48 = call i32 @iavf_setup_all_rx_resources(%struct.iavf_adapter* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %90

52:                                               ; preds = %46
  %53 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @iavf_request_traffic_irqs(%struct.iavf_adapter* %53, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %85

61:                                               ; preds = %52
  %62 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %62, i32 0, i32 3
  %64 = call i32 @spin_lock_bh(i32* %63)
  %65 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %66 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @iavf_add_filter(%struct.iavf_adapter* %65, i32 %70)
  %72 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %72, i32 0, i32 3
  %74 = call i32 @spin_unlock_bh(i32* %73)
  %75 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %76 = call i32 @iavf_configure(%struct.iavf_adapter* %75)
  %77 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %78 = call i32 @iavf_up_complete(%struct.iavf_adapter* %77)
  %79 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %80 = call i32 @iavf_irq_enable(%struct.iavf_adapter* %79, i32 1)
  %81 = load i32, i32* @__IAVF_IN_CRITICAL_TASK, align 4
  %82 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %83 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %82, i32 0, i32 2
  %84 = call i32 @clear_bit(i32 %81, i32* %83)
  store i32 0, i32* %2, align 4
  br label %102

85:                                               ; preds = %60
  %86 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %87 = call i32 @iavf_down(%struct.iavf_adapter* %86)
  %88 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %89 = call i32 @iavf_free_traffic_irqs(%struct.iavf_adapter* %88)
  br label %90

90:                                               ; preds = %85, %51
  %91 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %92 = call i32 @iavf_free_all_rx_resources(%struct.iavf_adapter* %91)
  br label %93

93:                                               ; preds = %90, %45
  %94 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %95 = call i32 @iavf_free_all_tx_resources(%struct.iavf_adapter* %94)
  br label %96

96:                                               ; preds = %93, %37
  %97 = load i32, i32* @__IAVF_IN_CRITICAL_TASK, align 4
  %98 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %99 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %98, i32 0, i32 2
  %100 = call i32 @clear_bit(i32 %97, i32* %99)
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %96, %61, %14
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.iavf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @iavf_setup_all_tx_resources(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_setup_all_rx_resources(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_request_traffic_irqs(%struct.iavf_adapter*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iavf_add_filter(%struct.iavf_adapter*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iavf_configure(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_up_complete(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_irq_enable(%struct.iavf_adapter*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @iavf_down(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_free_traffic_irqs(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_free_all_rx_resources(%struct.iavf_adapter*) #1

declare dso_local i32 @iavf_free_all_tx_resources(%struct.iavf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
