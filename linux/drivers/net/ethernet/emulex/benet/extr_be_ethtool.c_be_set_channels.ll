; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i64, i64, i64, i64 }
%struct.be_adapter = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_channels*)* @be_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca %struct.be_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.be_adapter* %9, %struct.be_adapter** %6, align 8
  %10 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %2
  %15 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24, %14, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %97

32:                                               ; preds = %24, %19
  %33 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %37 = call i64 @be_max_qp_irqs(%struct.be_adapter* %36)
  %38 = icmp sgt i64 %35, %37
  br i1 %38, label %71, label %39

39:                                               ; preds = %32
  %40 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %53 = call i64 @be_max_rx_irqs(%struct.be_adapter* %52)
  %54 = icmp sgt i64 %51, %53
  br i1 %54, label %71, label %55

55:                                               ; preds = %44, %39
  %56 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %74

60:                                               ; preds = %55
  %61 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %65 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %69 = call i64 @be_max_tx_irqs(%struct.be_adapter* %68)
  %70 = icmp sgt i64 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %60, %44, %32
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %97

74:                                               ; preds = %60, %55
  %75 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %76 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %79 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %83 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %85 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %86, %89
  %91 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %92 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %91, i32 0, i32 1
  store i64 %90, i64* %92, align 8
  %93 = load %struct.be_adapter*, %struct.be_adapter** %6, align 8
  %94 = call i32 @be_update_queues(%struct.be_adapter* %93)
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @be_cmd_status(i32 %95)
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %74, %71, %29
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @be_max_qp_irqs(%struct.be_adapter*) #1

declare dso_local i64 @be_max_rx_irqs(%struct.be_adapter*) #1

declare dso_local i64 @be_max_tx_irqs(%struct.be_adapter*) #1

declare dso_local i32 @be_update_queues(%struct.be_adapter*) #1

declare dso_local i32 @be_cmd_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
