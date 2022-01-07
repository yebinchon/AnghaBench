; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_fixed_phy.c___fixed_phy_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_fixed_phy.c___fixed_phy_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fixed_mdio_bus = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.phy_device = type { i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.fixed_phy_status = type { i32, i32, i32, i32, i64 }
%struct.device_node = type { i32 }
%struct.gpio_desc = type { i32, i32, i32, %struct.TYPE_5__, i32, i32, i32, i64 }

@platform_fmb = common dso_local global %struct.fixed_mdio_bus zeroinitializer, align 8
@MDIOBUS_REGISTERED = common dso_local global i64 0, align 8
@EPROBE_DEFER = common dso_local global i32 0, align 4
@phy_fixed_ida = common dso_local global i32 0, align 4
@PHY_MAX_ADDR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Half_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_1000baseT_Full_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_100baseT_Half_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_100baseT_Full_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10baseT_Half_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_10baseT_Full_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy_device* (i32, %struct.fixed_phy_status*, %struct.device_node*, %struct.gpio_desc*)* @__fixed_phy_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy_device* @__fixed_phy_register(i32 %0, %struct.fixed_phy_status* %1, %struct.device_node* %2, %struct.gpio_desc* %3) #0 {
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fixed_phy_status*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.gpio_desc*, align 8
  %10 = alloca %struct.fixed_mdio_bus*, align 8
  %11 = alloca %struct.phy_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.fixed_phy_status* %1, %struct.fixed_phy_status** %7, align 8
  store %struct.device_node* %2, %struct.device_node** %8, align 8
  store %struct.gpio_desc* %3, %struct.gpio_desc** %9, align 8
  store %struct.fixed_mdio_bus* @platform_fmb, %struct.fixed_mdio_bus** %10, align 8
  %14 = load %struct.fixed_mdio_bus*, %struct.fixed_mdio_bus** %10, align 8
  %15 = getelementptr inbounds %struct.fixed_mdio_bus, %struct.fixed_mdio_bus* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load %struct.fixed_mdio_bus*, %struct.fixed_mdio_bus** %10, align 8
  %20 = getelementptr inbounds %struct.fixed_mdio_bus, %struct.fixed_mdio_bus* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MDIOBUS_REGISTERED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18, %4
  %27 = load i32, i32* @EPROBE_DEFER, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.phy_device* @ERR_PTR(i32 %28)
  store %struct.phy_device* %29, %struct.phy_device** %5, align 8
  br label %180

30:                                               ; preds = %18
  %31 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %32 = icmp ne %struct.gpio_desc* %31, null
  br i1 %32, label %46, label %33

33:                                               ; preds = %30
  %34 = load %struct.device_node*, %struct.device_node** %8, align 8
  %35 = call %struct.phy_device* @fixed_phy_get_gpiod(%struct.device_node* %34)
  %36 = bitcast %struct.phy_device* %35 to %struct.gpio_desc*
  store %struct.gpio_desc* %36, %struct.gpio_desc** %9, align 8
  %37 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %38 = bitcast %struct.gpio_desc* %37 to %struct.phy_device*
  %39 = call i64 @IS_ERR(%struct.phy_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %33
  %42 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %43 = bitcast %struct.gpio_desc* %42 to %struct.phy_device*
  %44 = call %struct.phy_device* @ERR_CAST(%struct.phy_device* %43)
  store %struct.phy_device* %44, %struct.phy_device** %5, align 8
  br label %180

45:                                               ; preds = %33
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32, i32* @PHY_MAX_ADDR, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @ida_simple_get(i32* @phy_fixed_ida, i32 0, i32 %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* %12, align 4
  %54 = call %struct.phy_device* @ERR_PTR(i32 %53)
  store %struct.phy_device* %54, %struct.phy_device** %5, align 8
  br label %180

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %7, align 8
  %59 = load %struct.gpio_desc*, %struct.gpio_desc** %9, align 8
  %60 = bitcast %struct.gpio_desc* %59 to %struct.phy_device*
  %61 = call i32 @fixed_phy_add_gpiod(i32 %56, i32 %57, %struct.fixed_phy_status* %58, %struct.phy_device* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %55
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @ida_simple_remove(i32* @phy_fixed_ida, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = call %struct.phy_device* @ERR_PTR(i32 %67)
  store %struct.phy_device* %68, %struct.phy_device** %5, align 8
  br label %180

69:                                               ; preds = %55
  %70 = load %struct.fixed_mdio_bus*, %struct.fixed_mdio_bus** %10, align 8
  %71 = getelementptr inbounds %struct.fixed_mdio_bus, %struct.fixed_mdio_bus* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call %struct.phy_device* @get_phy_device(%struct.TYPE_6__* %72, i32 %73, i32 0)
  store %struct.phy_device* %74, %struct.phy_device** %11, align 8
  %75 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %76 = call i64 @IS_ERR(%struct.phy_device* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %69
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @fixed_phy_del(i32 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  %83 = call %struct.phy_device* @ERR_PTR(i32 %82)
  store %struct.phy_device* %83, %struct.phy_device** %5, align 8
  br label %180

84:                                               ; preds = %69
  %85 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %7, align 8
  %86 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %89 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %88, i32 0, i32 7
  store i64 %87, i64* %89, align 8
  %90 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %7, align 8
  %91 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %115

94:                                               ; preds = %84
  %95 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %7, align 8
  %96 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %99 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %7, align 8
  %101 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %104 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 8
  %105 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %7, align 8
  %106 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %109 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %108, i32 0, i32 5
  store i32 %107, i32* %109, align 4
  %110 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %7, align 8
  %111 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %114 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %113, i32 0, i32 4
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %94, %84
  %116 = load %struct.device_node*, %struct.device_node** %8, align 8
  %117 = call i32 @of_node_get(%struct.device_node* %116)
  %118 = load %struct.device_node*, %struct.device_node** %8, align 8
  %119 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %120 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  store %struct.device_node* %118, %struct.device_node** %122, align 8
  %123 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %124 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %123, i32 0, i32 1
  store i32 1, i32* %124, align 4
  %125 = load %struct.fixed_phy_status*, %struct.fixed_phy_status** %7, align 8
  %126 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  switch i32 %127, label %151 [
    i32 128, label %128
    i32 129, label %139
    i32 130, label %150
  ]

128:                                              ; preds = %115
  %129 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Half_BIT, align 4
  %130 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %131 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @linkmode_set_bit(i32 %129, i32 %132)
  %134 = load i32, i32* @ETHTOOL_LINK_MODE_1000baseT_Full_BIT, align 4
  %135 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %136 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @linkmode_set_bit(i32 %134, i32 %137)
  br label %139

139:                                              ; preds = %115, %128
  %140 = load i32, i32* @ETHTOOL_LINK_MODE_100baseT_Half_BIT, align 4
  %141 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %142 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @linkmode_set_bit(i32 %140, i32 %143)
  %145 = load i32, i32* @ETHTOOL_LINK_MODE_100baseT_Full_BIT, align 4
  %146 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %147 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @linkmode_set_bit(i32 %145, i32 %148)
  br label %150

150:                                              ; preds = %115, %139
  br label %151

151:                                              ; preds = %115, %150
  %152 = load i32, i32* @ETHTOOL_LINK_MODE_10baseT_Half_BIT, align 4
  %153 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %154 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @linkmode_set_bit(i32 %152, i32 %155)
  %157 = load i32, i32* @ETHTOOL_LINK_MODE_10baseT_Full_BIT, align 4
  %158 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %159 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @linkmode_set_bit(i32 %157, i32 %160)
  br label %162

162:                                              ; preds = %151
  %163 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %164 = call i32 @phy_advertise_supported(%struct.phy_device* %163)
  %165 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %166 = call i32 @phy_device_register(%struct.phy_device* %165)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %162
  %170 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  %171 = call i32 @phy_device_free(%struct.phy_device* %170)
  %172 = load %struct.device_node*, %struct.device_node** %8, align 8
  %173 = call i32 @of_node_put(%struct.device_node* %172)
  %174 = load i32, i32* %12, align 4
  %175 = call i32 @fixed_phy_del(i32 %174)
  %176 = load i32, i32* %13, align 4
  %177 = call %struct.phy_device* @ERR_PTR(i32 %176)
  store %struct.phy_device* %177, %struct.phy_device** %5, align 8
  br label %180

178:                                              ; preds = %162
  %179 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %179, %struct.phy_device** %5, align 8
  br label %180

180:                                              ; preds = %178, %169, %78, %64, %52, %41, %26
  %181 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  ret %struct.phy_device* %181
}

declare dso_local %struct.phy_device* @ERR_PTR(i32) #1

declare dso_local %struct.phy_device* @fixed_phy_get_gpiod(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local %struct.phy_device* @ERR_CAST(%struct.phy_device*) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @fixed_phy_add_gpiod(i32, i32, %struct.fixed_phy_status*, %struct.phy_device*) #1

declare dso_local i32 @ida_simple_remove(i32*, i32) #1

declare dso_local %struct.phy_device* @get_phy_device(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @fixed_phy_del(i32) #1

declare dso_local i32 @of_node_get(%struct.device_node*) #1

declare dso_local i32 @linkmode_set_bit(i32, i32) #1

declare dso_local i32 @phy_advertise_supported(%struct.phy_device*) #1

declare dso_local i32 @phy_device_register(%struct.phy_device*) #1

declare dso_local i32 @phy_device_free(%struct.phy_device*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
