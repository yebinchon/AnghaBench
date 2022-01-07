; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iavf_adapter = type { i32, i32, i32 }

@iavf_addr_sync = common dso_local global i32 0, align 4
@iavf_addr_unsync = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IAVF_FLAG_PROMISC_ON = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_REQUEST_PROMISC = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_RELEASE_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IAVF_FLAG_ALLMULTI_ON = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_REQUEST_ALLMULTI = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_RELEASE_ALLMULTI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @iavf_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iavf_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.iavf_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.iavf_adapter* @netdev_priv(%struct.net_device* %4)
  store %struct.iavf_adapter* %5, %struct.iavf_adapter** %3, align 8
  %6 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %6, i32 0, i32 2
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @iavf_addr_sync, align 4
  %11 = load i32, i32* @iavf_addr_unsync, align 4
  %12 = call i32 @__dev_uc_sync(%struct.net_device* %9, i32 %10, i32 %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i32, i32* @iavf_addr_sync, align 4
  %15 = load i32, i32* @iavf_addr_unsync, align 4
  %16 = call i32 @__dev_mc_sync(%struct.net_device* %13, i32 %14, i32 %15)
  %17 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %17, i32 0, i32 2
  %19 = call i32 @spin_unlock_bh(i32* %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_PROMISC, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %1
  %27 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IAVF_FLAG_PROMISC_ON, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %26
  %34 = load i32, i32* @IAVF_FLAG_AQ_REQUEST_PROMISC, align 4
  %35 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %60

39:                                               ; preds = %26, %1
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IFF_PROMISC, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %59, label %46

46:                                               ; preds = %39
  %47 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @IAVF_FLAG_PROMISC_ON, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load i32, i32* @IAVF_FLAG_AQ_RELEASE_PROMISC, align 4
  %55 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %46, %39
  br label %60

60:                                               ; preds = %59, %33
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IFF_ALLMULTI, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %60
  %68 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @IAVF_FLAG_ALLMULTI_ON, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %67
  %75 = load i32, i32* @IAVF_FLAG_AQ_REQUEST_ALLMULTI, align 4
  %76 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %101

80:                                               ; preds = %67, %60
  %81 = load %struct.net_device*, %struct.net_device** %2, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IFF_ALLMULTI, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %100, label %87

87:                                               ; preds = %80
  %88 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IAVF_FLAG_ALLMULTI_ON, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %87
  %95 = load i32, i32* @IAVF_FLAG_AQ_RELEASE_ALLMULTI, align 4
  %96 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %94, %87, %80
  br label %101

101:                                              ; preds = %100, %74
  ret void
}

declare dso_local %struct.iavf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @__dev_uc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i32 @__dev_mc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
