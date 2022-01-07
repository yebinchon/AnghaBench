; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_netdev_set_ecmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_netdev_set_ecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }

@SPEED_10 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@WN0_ADDR_CONF = common dso_local global i64 0, align 8
@StartCoax = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@WN4_NETDIAG = common dso_local global i64 0, align 8
@FD_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @el3_netdev_set_ecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el3_netdev_set_ecmd(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SPEED_10, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %128

20:                                               ; preds = %2
  %21 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DUPLEX_HALF, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DUPLEX_FULL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %128

37:                                               ; preds = %27, %20
  %38 = call i32 @EL3WINDOW(i32 0)
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* @WN0_ADDR_CONF, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @inw(i64 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %63 [
    i32 128, label %48
    i32 130, label %53
    i32 129, label %58
  ]

48:                                               ; preds = %37
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, -49153
  store i32 %50, i32* %6, align 4
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = getelementptr inbounds %struct.net_device, %struct.net_device* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  br label %66

53:                                               ; preds = %37
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, 16384
  store i32 %55, i32* %6, align 4
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  br label %66

58:                                               ; preds = %37
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, 49152
  store i32 %60, i32* %6, align 4
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  store i32 3, i32* %62, align 4
  br label %66

63:                                               ; preds = %37
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %128

66:                                               ; preds = %58, %53, %48
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* @WN0_ADDR_CONF, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outw(i32 %67, i64 %71)
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %98

77:                                               ; preds = %66
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = load i64, i64* @WN0_ADDR_CONF, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @inw(i64 %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = and i32 %83, 49152
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %77
  %87 = load i32, i32* @StartCoax, align 4
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = load i64, i64* @EL3_CMD, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @outw(i32 %87, i64 %91)
  %93 = call i32 @udelay(i32 800)
  br label %97

94:                                               ; preds = %77
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %128

97:                                               ; preds = %86
  br label %98

98:                                               ; preds = %97, %66
  %99 = call i32 @EL3WINDOW(i32 4)
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = load i64, i64* @WN4_NETDIAG, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @inw(i64 %103)
  store i32 %104, i32* %6, align 4
  %105 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %106 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @DUPLEX_FULL, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %98
  %112 = load i32, i32* @FD_ENABLE, align 4
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %6, align 4
  br label %120

115:                                              ; preds = %98
  %116 = load i32, i32* @FD_ENABLE, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %6, align 4
  br label %120

120:                                              ; preds = %115, %111
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = load i64, i64* @WN4_NETDIAG, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @outw(i32 %121, i64 %125)
  %127 = call i32 @EL3WINDOW(i32 1)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %120, %94, %63, %34, %17
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
