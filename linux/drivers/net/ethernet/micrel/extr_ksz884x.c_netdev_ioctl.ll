; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.dev_priv = type { i32, i32, %struct.ksz_port, %struct.dev_info* }
%struct.ksz_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dev_info = type { %struct.ksz_hw }
%struct.ksz_hw = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @netdev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dev_priv*, align 8
  %9 = alloca %struct.dev_info*, align 8
  %10 = alloca %struct.ksz_hw*, align 8
  %11 = alloca %struct.ksz_port*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.mii_ioctl_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.dev_priv* %15, %struct.dev_priv** %8, align 8
  %16 = load %struct.dev_priv*, %struct.dev_priv** %8, align 8
  %17 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %16, i32 0, i32 3
  %18 = load %struct.dev_info*, %struct.dev_info** %17, align 8
  store %struct.dev_info* %18, %struct.dev_info** %9, align 8
  %19 = load %struct.dev_info*, %struct.dev_info** %9, align 8
  %20 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %19, i32 0, i32 0
  store %struct.ksz_hw* %20, %struct.ksz_hw** %10, align 8
  %21 = load %struct.dev_priv*, %struct.dev_priv** %8, align 8
  %22 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %21, i32 0, i32 2
  store %struct.ksz_port* %22, %struct.ksz_port** %11, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %24 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %23)
  store %struct.mii_ioctl_data* %24, %struct.mii_ioctl_data** %13, align 8
  %25 = load %struct.dev_priv*, %struct.dev_priv** %8, align 8
  %26 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %25, i32 0, i32 0
  %27 = call i64 @down_interruptible(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @ERESTARTSYS, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %117

32:                                               ; preds = %3
  %33 = load i32, i32* %7, align 4
  switch i32 %33, label %109 [
    i32 130, label %34
    i32 129, label %40
    i32 128, label %70
  ]

34:                                               ; preds = %32
  %35 = load %struct.dev_priv*, %struct.dev_priv** %8, align 8
  %36 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %39 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %32, %34
  %41 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %42 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.dev_priv*, %struct.dev_priv** %8, align 8
  %45 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %50 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 6
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %40
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %12, align 4
  br label %69

56:                                               ; preds = %48
  %57 = load %struct.ksz_hw*, %struct.ksz_hw** %10, align 8
  %58 = load %struct.ksz_port*, %struct.ksz_port** %11, align 8
  %59 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %64 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %67 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %66, i32 0, i32 3
  %68 = call i32 @hw_r_phy(%struct.ksz_hw* %57, i32 %62, i32 %65, i32* %67)
  br label %69

69:                                               ; preds = %56, %53
  br label %112

70:                                               ; preds = %32
  %71 = load i32, i32* @CAP_NET_ADMIN, align 4
  %72 = call i32 @capable(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* @EPERM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  br label %108

77:                                               ; preds = %70
  %78 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %79 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.dev_priv*, %struct.dev_priv** %8, align 8
  %82 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %80, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %77
  %86 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %87 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp sge i32 %88, 6
  br i1 %89, label %90, label %93

90:                                               ; preds = %85, %77
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %12, align 4
  br label %107

93:                                               ; preds = %85
  %94 = load %struct.ksz_hw*, %struct.ksz_hw** %10, align 8
  %95 = load %struct.ksz_port*, %struct.ksz_port** %11, align 8
  %96 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %101 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %13, align 8
  %104 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @hw_w_phy(%struct.ksz_hw* %94, i32 %99, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %93, %90
  br label %108

108:                                              ; preds = %107, %74
  br label %112

109:                                              ; preds = %32
  %110 = load i32, i32* @EOPNOTSUPP, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %109, %108, %69
  %113 = load %struct.dev_priv*, %struct.dev_priv** %8, align 8
  %114 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %113, i32 0, i32 0
  %115 = call i32 @up(i32* %114)
  %116 = load i32, i32* %12, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %112, %29
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i64 @down_interruptible(i32*) #1

declare dso_local i32 @hw_r_phy(%struct.ksz_hw*, i32, i32, i32*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @hw_w_phy(%struct.ksz_hw*, i32, i32, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
