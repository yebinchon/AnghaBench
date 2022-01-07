; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i32, i64, i64 }
%struct.qlcnic_adapter = type { i32, i32, i32, i32, i32 }

@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"No RSS/TSS support in non MSI-X mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_RX_QUEUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to configure %u SDS rings\0A\00", align 1
@QLCNIC_TX_QUEUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to configure %u Tx rings\0A\00", align 1
@QLCNIC_TSS_RSS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Allocated %d SDS rings and %d Tx rings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_channels*)* @qlcnic_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.qlcnic_adapter* %9, %struct.qlcnic_adapter** %6, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %124

21:                                               ; preds = %2
  %22 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %21
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %124

34:                                               ; preds = %26
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %36 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @qlcnic_validate_ring_count(%struct.qlcnic_adapter* %35, i32 %38, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %3, align 4
  br label %124

47:                                               ; preds = %34
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %47
  %56 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %57 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @QLCNIC_RX_QUEUE, align 4
  %61 = call i32 @qlcnic_validate_rings(%struct.qlcnic_adapter* %56, i32 %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %7, align 4
  store i32 %70, i32* %3, align 4
  br label %124

71:                                               ; preds = %55
  %72 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %73 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %76 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %71, %47
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %79 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %77
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %87 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %88 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @QLCNIC_TX_QUEUE, align 4
  %91 = call i32 @qlcnic_validate_rings(%struct.qlcnic_adapter* %86, i32 %89, i32 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %85
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %95, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %124

101:                                              ; preds = %85
  %102 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %103 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %106 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %101, %77
  %108 = load i32, i32* @QLCNIC_TSS_RSS, align 4
  %109 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %110 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %114 = call i32 @qlcnic_setup_rings(%struct.qlcnic_adapter* %113)
  store i32 %114, i32* %7, align 4
  %115 = load %struct.net_device*, %struct.net_device** %4, align 8
  %116 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %117 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %120 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @netdev_info(%struct.net_device* %115, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %118, i32 %121)
  %123 = load i32, i32* %7, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %107, %94, %64, %45, %31, %16
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @qlcnic_validate_ring_count(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_validate_rings(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i32 @qlcnic_setup_rings(%struct.qlcnic_adapter*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
