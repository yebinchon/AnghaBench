; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_get_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i32, i64, i32, i32, i64, i64, i64 }
%struct.cpsw_common = type { i32, i32, i64 }

@CPSW_MAX_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpsw_get_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_channels*, align 8
  %5 = alloca %struct.cpsw_common*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.cpsw_common* @ndev_to_cpsw(%struct.net_device* %6)
  store %struct.cpsw_common* %7, %struct.cpsw_common** %5, align 8
  %8 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %9 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @CPSW_MAX_QUEUES, align 4
  br label %15

15:                                               ; preds = %13, %12
  %16 = phi i32 [ 1, %12 ], [ %14, %13 ]
  %17 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %20 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @CPSW_MAX_QUEUES, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ 1, %23 ], [ %25, %24 ]
  %28 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %29 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %31 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %30, i32 0, i32 7
  store i64 0, i64* %31, align 8
  %32 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %32, i32 0, i32 6
  store i64 0, i64* %33, align 8
  %34 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %35 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %37 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.cpsw_common*, %struct.cpsw_common** %5, align 8
  %42 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %45 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  ret void
}

declare dso_local %struct.cpsw_common* @ndev_to_cpsw(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
