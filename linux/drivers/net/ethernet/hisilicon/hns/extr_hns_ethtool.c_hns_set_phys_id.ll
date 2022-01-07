; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.hns_nic_priv = type { i32, %struct.hnae_handle* }
%struct.hnae_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hnae_handle*, i32)* }

@HNS_PHY_PAGE_REG = common dso_local global i32 0, align 4
@HNS_PHY_PAGE_LED = common dso_local global i32 0, align 4
@HNS_LED_FC_REG = common dso_local global i32 0, align 4
@HNS_PHY_PAGE_COPPER = common dso_local global i32 0, align 4
@HNS_LED_FORCE_ON = common dso_local global i32 0, align 4
@HNS_LED_FORCE_OFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HNAE_LED_ACTIVE = common dso_local global i32 0, align 4
@HNAE_LED_ON = common dso_local global i32 0, align 4
@HNAE_LED_OFF = common dso_local global i32 0, align 4
@HNAE_LED_INACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @hns_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_nic_priv*, align 8
  %7 = alloca %struct.hnae_handle*, align 8
  %8 = alloca %struct.phy_device*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.hns_nic_priv* %11, %struct.hns_nic_priv** %6, align 8
  %12 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %13 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %12, i32 0, i32 1
  %14 = load %struct.hnae_handle*, %struct.hnae_handle** %13, align 8
  store %struct.hnae_handle* %14, %struct.hnae_handle** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.phy_device*, %struct.phy_device** %16, align 8
  store %struct.phy_device* %17, %struct.phy_device** %8, align 8
  %18 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %19 = icmp ne %struct.phy_device* %18, null
  br i1 %19, label %20, label %98

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %94 [
    i32 131, label %22
    i32 128, label %46
    i32 129, label %55
    i32 130, label %64
  ]

22:                                               ; preds = %20
  %23 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %24 = load i32, i32* @HNS_PHY_PAGE_REG, align 4
  %25 = load i32, i32* @HNS_PHY_PAGE_LED, align 4
  %26 = call i32 @phy_write(%struct.phy_device* %23, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %3, align 4
  br label %148

31:                                               ; preds = %22
  %32 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %33 = load i32, i32* @HNS_LED_FC_REG, align 4
  %34 = call i32 @phy_read(%struct.phy_device* %32, i32 %33)
  %35 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %36 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %38 = load i32, i32* @HNS_PHY_PAGE_REG, align 4
  %39 = load i32, i32* @HNS_PHY_PAGE_COPPER, align 4
  %40 = call i32 @phy_write(%struct.phy_device* %37, i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  br label %148

45:                                               ; preds = %31
  store i32 2, i32* %3, align 4
  br label %148

46:                                               ; preds = %20
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = load i32, i32* @HNS_LED_FORCE_ON, align 4
  %49 = call i32 @hns_phy_led_set(%struct.net_device* %47, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %3, align 4
  br label %148

54:                                               ; preds = %46
  br label %97

55:                                               ; preds = %20
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = load i32, i32* @HNS_LED_FORCE_OFF, align 4
  %58 = call i32 @hns_phy_led_set(%struct.net_device* %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %148

63:                                               ; preds = %55
  br label %97

64:                                               ; preds = %20
  %65 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %66 = load i32, i32* @HNS_PHY_PAGE_REG, align 4
  %67 = load i32, i32* @HNS_PHY_PAGE_LED, align 4
  %68 = call i32 @phy_write(%struct.phy_device* %65, i32 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %3, align 4
  br label %148

73:                                               ; preds = %64
  %74 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %75 = load i32, i32* @HNS_LED_FC_REG, align 4
  %76 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %77 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @phy_write(%struct.phy_device* %74, i32 %75, i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %73
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %148

84:                                               ; preds = %73
  %85 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %86 = load i32, i32* @HNS_PHY_PAGE_REG, align 4
  %87 = load i32, i32* @HNS_PHY_PAGE_COPPER, align 4
  %88 = call i32 @phy_write(%struct.phy_device* %85, i32 %86, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %9, align 4
  store i32 %92, i32* %3, align 4
  br label %148

93:                                               ; preds = %84
  br label %97

94:                                               ; preds = %20
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %148

97:                                               ; preds = %93, %63, %54
  br label %147

98:                                               ; preds = %2
  %99 = load i32, i32* %5, align 4
  switch i32 %99, label %144 [
    i32 131, label %100
    i32 128, label %111
    i32 129, label %122
    i32 130, label %133
  ]

100:                                              ; preds = %98
  %101 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %102 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32 (%struct.hnae_handle*, i32)*, i32 (%struct.hnae_handle*, i32)** %106, align 8
  %108 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %109 = load i32, i32* @HNAE_LED_ACTIVE, align 4
  %110 = call i32 %107(%struct.hnae_handle* %108, i32 %109)
  store i32 %110, i32* %3, align 4
  br label %148

111:                                              ; preds = %98
  %112 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %113 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32 (%struct.hnae_handle*, i32)*, i32 (%struct.hnae_handle*, i32)** %117, align 8
  %119 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %120 = load i32, i32* @HNAE_LED_ON, align 4
  %121 = call i32 %118(%struct.hnae_handle* %119, i32 %120)
  store i32 %121, i32* %3, align 4
  br label %148

122:                                              ; preds = %98
  %123 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %124 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32 (%struct.hnae_handle*, i32)*, i32 (%struct.hnae_handle*, i32)** %128, align 8
  %130 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %131 = load i32, i32* @HNAE_LED_OFF, align 4
  %132 = call i32 %129(%struct.hnae_handle* %130, i32 %131)
  store i32 %132, i32* %3, align 4
  br label %148

133:                                              ; preds = %98
  %134 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %135 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32 (%struct.hnae_handle*, i32)*, i32 (%struct.hnae_handle*, i32)** %139, align 8
  %141 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %142 = load i32, i32* @HNAE_LED_INACTIVE, align 4
  %143 = call i32 %140(%struct.hnae_handle* %141, i32 %142)
  store i32 %143, i32* %3, align 4
  br label %148

144:                                              ; preds = %98
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %3, align 4
  br label %148

147:                                              ; preds = %97
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %147, %144, %133, %122, %111, %100, %94, %91, %82, %71, %61, %52, %45, %43, %29
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @hns_phy_led_set(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
