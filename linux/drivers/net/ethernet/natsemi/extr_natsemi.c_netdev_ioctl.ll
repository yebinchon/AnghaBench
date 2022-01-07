; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_natsemi.c_netdev_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_natsemi.c_netdev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }
%struct.netdev_private = type { i32, i32 }

@PORT_TP = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @netdev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mii_ioctl_data*, align 8
  %9 = alloca %struct.netdev_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %11 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %10)
  store %struct.mii_ioctl_data* %11, %struct.mii_ioctl_data** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %12)
  store %struct.netdev_private* %13, %struct.netdev_private** %9, align 8
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %152 [
    i32 130, label %15
    i32 129, label %21
    i32 128, label %69
  ]

15:                                               ; preds = %3
  %16 = load %struct.netdev_private*, %struct.netdev_private** %9, align 8
  %17 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %20 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %3, %15
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PORT_TP, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %21
  %28 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %29 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 31
  %32 = load %struct.netdev_private*, %struct.netdev_private** %9, align 8
  %33 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %27
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %39 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 31
  %42 = call i32 @mdio_read(%struct.net_device* %37, i32 %41)
  %43 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %44 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  br label %48

45:                                               ; preds = %27
  %46 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %47 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %46, i32 0, i32 3
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %36
  br label %68

49:                                               ; preds = %21
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %52 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 31
  %55 = call i32 @move_int_phy(%struct.net_device* %50, i32 %54)
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %58 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 31
  %61 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %62 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 31
  %65 = call i32 @miiport_read(%struct.net_device* %56, i32 %60, i32 %64)
  %66 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %67 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  br label %68

68:                                               ; preds = %49, %48
  store i32 0, i32* %4, align 4
  br label %155

69:                                               ; preds = %3
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @PORT_TP, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %108

75:                                               ; preds = %69
  %76 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %77 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, 31
  %80 = load %struct.netdev_private*, %struct.netdev_private** %9, align 8
  %81 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %84, label %107

84:                                               ; preds = %75
  %85 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %86 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 31
  %89 = load i32, i32* @MII_ADVERTISE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %93 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.netdev_private*, %struct.netdev_private** %9, align 8
  %96 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %91, %84
  %98 = load %struct.net_device*, %struct.net_device** %5, align 8
  %99 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %100 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 31
  %103 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %104 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @mdio_write(%struct.net_device* %98, i32 %102, i32 %105)
  br label %107

107:                                              ; preds = %97, %75
  br label %151

108:                                              ; preds = %69
  %109 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %110 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 31
  %113 = load %struct.netdev_private*, %struct.netdev_private** %9, align 8
  %114 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %112, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %108
  %118 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %119 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 31
  %122 = load i32, i32* @MII_ADVERTISE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %117
  %125 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %126 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.netdev_private*, %struct.netdev_private** %9, align 8
  %129 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  br label %130

130:                                              ; preds = %124, %117
  br label %131

131:                                              ; preds = %130, %108
  %132 = load %struct.net_device*, %struct.net_device** %5, align 8
  %133 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %134 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %135, 31
  %137 = call i32 @move_int_phy(%struct.net_device* %132, i32 %136)
  %138 = load %struct.net_device*, %struct.net_device** %5, align 8
  %139 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %140 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 31
  %143 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %144 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 31
  %147 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %8, align 8
  %148 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @miiport_write(%struct.net_device* %138, i32 %142, i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %131, %107
  store i32 0, i32* %4, align 4
  br label %155

152:                                              ; preds = %3
  %153 = load i32, i32* @EOPNOTSUPP, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %152, %151, %68
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32) #1

declare dso_local i32 @move_int_phy(%struct.net_device*, i32) #1

declare dso_local i32 @miiport_read(%struct.net_device*, i32, i32) #1

declare dso_local i32 @mdio_write(%struct.net_device*, i32, i32) #1

declare dso_local i32 @miiport_write(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
