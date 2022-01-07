; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_mii_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_mii_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.e1000_adapter = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.mii_ioctl_data = type { i32, i32, i32 }

@e1000_media_type_copper = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @e1000_mii_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_mii_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.e1000_adapter*, align 8
  %9 = alloca %struct.mii_ioctl_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.e1000_adapter* %11, %struct.e1000_adapter** %8, align 8
  %12 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %13 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %12)
  store %struct.mii_ioctl_data* %13, %struct.mii_ioctl_data** %9, align 8
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %15 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @e1000_media_type_copper, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %124

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %120 [
    i32 130, label %26
    i32 129, label %34
    i32 128, label %119
  ]

26:                                               ; preds = %24
  %27 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %28 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %33 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  br label %123

34:                                               ; preds = %24
  %35 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %36 = call i32 @e1000_phy_read_status(%struct.e1000_adapter* %35)
  %37 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %38 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 31
  switch i32 %40, label %115 [
    i32 139, label %41
    i32 138, label %48
    i32 133, label %55
    i32 132, label %64
    i32 140, label %73
    i32 134, label %80
    i32 135, label %87
    i32 137, label %94
    i32 131, label %101
    i32 136, label %108
  ]

41:                                               ; preds = %34
  %42 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %43 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %47 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %118

48:                                               ; preds = %34
  %49 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %50 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %54 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %118

55:                                               ; preds = %34
  %56 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %57 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %60, 16
  %62 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %63 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %118

64:                                               ; preds = %34
  %65 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %66 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 65535
  %71 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %72 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %118

73:                                               ; preds = %34
  %74 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %75 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %79 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  br label %118

80:                                               ; preds = %34
  %81 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %82 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %86 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %118

87:                                               ; preds = %34
  %88 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %89 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %93 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %118

94:                                               ; preds = %34
  %95 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %96 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %100 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  br label %118

101:                                              ; preds = %34
  %102 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %103 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %107 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %118

108:                                              ; preds = %34
  %109 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %110 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %9, align 8
  %114 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %118

115:                                              ; preds = %34
  %116 = load i32, i32* @EIO, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %4, align 4
  br label %124

118:                                              ; preds = %108, %101, %94, %87, %80, %73, %64, %55, %48, %41
  br label %123

119:                                              ; preds = %24
  br label %120

120:                                              ; preds = %24, %119
  %121 = load i32, i32* @EOPNOTSUPP, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %4, align 4
  br label %124

123:                                              ; preds = %118, %26
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %120, %115, %21
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @e1000_phy_read_status(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
