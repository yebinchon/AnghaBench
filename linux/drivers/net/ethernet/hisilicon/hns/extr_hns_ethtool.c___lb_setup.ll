; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c___lb_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c___lb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.hns_nic_priv = type { %struct.hnae_handle* }
%struct.hnae_handle = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hnae_handle*, i32, i32)*, i32 (%struct.hnae_handle*, i32)* }

@PHY_INTERFACE_MODE_XGMII = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @__lb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lb_setup(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_nic_priv*, align 8
  %7 = alloca %struct.phy_device*, align 8
  %8 = alloca %struct.hnae_handle*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.hns_nic_priv* %10, %struct.hns_nic_priv** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  store %struct.phy_device* %13, %struct.phy_device** %7, align 8
  %14 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %15 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %14, i32 0, i32 0
  %16 = load %struct.hnae_handle*, %struct.hnae_handle** %15, align 8
  store %struct.hnae_handle* %16, %struct.hnae_handle** %8, align 8
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %133 [
    i32 131, label %18
    i32 132, label %35
    i32 130, label %64
    i32 128, label %85
    i32 129, label %88
  ]

18:                                               ; preds = %2
  %19 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %20 = call i32 @hns_nic_config_phy_loopback(%struct.phy_device* %19, i32 1)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %18
  %24 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %25 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32 (%struct.hnae_handle*, i32, i32)*, i32 (%struct.hnae_handle*, i32, i32)** %29, align 8
  %31 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 %30(%struct.hnae_handle* %31, i32 %32, i32 1)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %23, %18
  br label %136

35:                                               ; preds = %2
  %36 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %37 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.hnae_handle*, i32, i32)*, i32 (%struct.hnae_handle*, i32, i32)** %41, align 8
  %43 = icmp ne i32 (%struct.hnae_handle*, i32, i32)* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %35
  %45 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %46 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %45, i32 0, i32 0
  %47 = load %struct.hnae_handle*, %struct.hnae_handle** %46, align 8
  %48 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @PHY_INTERFACE_MODE_XGMII, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %54 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32 (%struct.hnae_handle*, i32, i32)*, i32 (%struct.hnae_handle*, i32, i32)** %58, align 8
  %60 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 %59(%struct.hnae_handle* %60, i32 %61, i32 1)
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %52, %44, %35
  br label %136

64:                                               ; preds = %2
  %65 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %66 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32 (%struct.hnae_handle*, i32, i32)*, i32 (%struct.hnae_handle*, i32, i32)** %70, align 8
  %72 = icmp ne i32 (%struct.hnae_handle*, i32, i32)* %71, null
  br i1 %72, label %73, label %84

73:                                               ; preds = %64
  %74 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %75 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32 (%struct.hnae_handle*, i32, i32)*, i32 (%struct.hnae_handle*, i32, i32)** %79, align 8
  %81 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 %80(%struct.hnae_handle* %81, i32 %82, i32 1)
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %73, %64
  br label %136

85:                                               ; preds = %2
  %86 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  %87 = call i32 @hns_nic_config_phy_loopback(%struct.phy_device* %86, i32 0)
  store i32 %87, i32* %5, align 4
  br label %88

88:                                               ; preds = %2, %85
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %132, label %91

91:                                               ; preds = %88
  %92 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %93 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32 (%struct.hnae_handle*, i32, i32)*, i32 (%struct.hnae_handle*, i32, i32)** %97, align 8
  %99 = icmp ne i32 (%struct.hnae_handle*, i32, i32)* %98, null
  br i1 %99, label %100, label %132

100:                                              ; preds = %91
  %101 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %102 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %101, i32 0, i32 0
  %103 = load %struct.hnae_handle*, %struct.hnae_handle** %102, align 8
  %104 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @PHY_INTERFACE_MODE_XGMII, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %100
  %109 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %110 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32 (%struct.hnae_handle*, i32, i32)*, i32 (%struct.hnae_handle*, i32, i32)** %114, align 8
  %116 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %117 = call i32 %115(%struct.hnae_handle* %116, i32 132, i32 0)
  store i32 %117, i32* %5, align 4
  br label %118

118:                                              ; preds = %108, %100
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %118
  %122 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %123 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_3__*, %struct.TYPE_3__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32 (%struct.hnae_handle*, i32, i32)*, i32 (%struct.hnae_handle*, i32, i32)** %127, align 8
  %129 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %130 = call i32 %128(%struct.hnae_handle* %129, i32 130, i32 0)
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %121, %118
  br label %132

132:                                              ; preds = %131, %91, %88
  br label %136

133:                                              ; preds = %2
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %133, %132, %84, %63, %34
  %137 = load i32, i32* %5, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %168, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %4, align 4
  %141 = icmp eq i32 %140, 129
  br i1 %141, label %142, label %157

142:                                              ; preds = %139
  %143 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %144 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32 (%struct.hnae_handle*, i32)*, i32 (%struct.hnae_handle*, i32)** %148, align 8
  %150 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %151 = load %struct.net_device*, %struct.net_device** %3, align 8
  %152 = getelementptr inbounds %struct.net_device, %struct.net_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @IFF_PROMISC, align 4
  %155 = and i32 %153, %154
  %156 = call i32 %149(%struct.hnae_handle* %150, i32 %155)
  br label %167

157:                                              ; preds = %139
  %158 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %159 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %158, i32 0, i32 0
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32 (%struct.hnae_handle*, i32)*, i32 (%struct.hnae_handle*, i32)** %163, align 8
  %165 = load %struct.hnae_handle*, %struct.hnae_handle** %8, align 8
  %166 = call i32 %164(%struct.hnae_handle* %165, i32 1)
  br label %167

167:                                              ; preds = %157, %142
  br label %168

168:                                              ; preds = %167, %136
  %169 = load i32, i32* %5, align 4
  ret i32 %169
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hns_nic_config_phy_loopback(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
