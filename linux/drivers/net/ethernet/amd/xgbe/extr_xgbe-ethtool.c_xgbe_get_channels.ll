; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_get_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i32, i32, i32, i32, i32, i32 }
%struct.xgbe_prv_data = type { i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_channels*)* @xgbe_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_get_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_channels*, align 8
  %5 = alloca %struct.xgbe_prv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %9)
  store %struct.xgbe_prv_data* %10, %struct.xgbe_prv_data** %5, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %16 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @min(i32 %14, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @min(i32 %19, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %25 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %29 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @min(i32 %27, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %34 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @min(i32 %32, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %39 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @min(i32 %37, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @min(i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %2
  %51 = load i32, i32* %6, align 4
  %52 = sub i32 %51, 1
  br label %54

53:                                               ; preds = %2
  br label %54

54:                                               ; preds = %53, %50
  %55 = phi i32 [ %52, %50 ], [ 0, %53 ]
  %56 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %57 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* %7, align 4
  %62 = sub i32 %61, 1
  br label %64

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %60
  %65 = phi i32 [ %62, %60 ], [ 0, %63 ]
  %66 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %67 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %69 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %68, i32 0, i32 7
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %78

73:                                               ; preds = %64
  %74 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %75 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = zext i32 %76 to i64
  br label %78

78:                                               ; preds = %73, %72
  %79 = phi i64 [ %70, %72 ], [ %77, %73 ]
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %6, align 4
  %81 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %82 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %81, i32 0, i32 6
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %91

86:                                               ; preds = %78
  %87 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %88 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = zext i32 %89 to i64
  br label %91

91:                                               ; preds = %86, %85
  %92 = phi i64 [ %83, %85 ], [ %90, %86 ]
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @min(i32 %94, i32 %95)
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %6, align 4
  %99 = sub i32 %98, %97
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %7, align 4
  %102 = sub i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %105 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %108 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %111 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  ret void
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
