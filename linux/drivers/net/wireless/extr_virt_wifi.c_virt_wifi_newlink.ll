; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_virt_wifi.c_virt_wifi_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.virt_wifi_netdev_priv = type { i32, i32, i32, %struct.TYPE_9__*, i32, %struct.net_device* }
%struct.TYPE_9__ = type { i64, i32 }

@IFLA_LINK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i64 0, align 8
@virt_wifi_rx_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"can't netdev_rx_handler_register: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@common_wiphy = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"can't register_netdevice: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"can't netdev_upper_dev_link: %d\0A\00", align 1
@virt_wifi_connect_complete = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @virt_wifi_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virt_wifi_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.virt_wifi_netdev_priv*, align 8
  %13 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %14 = load %struct.net_device*, %struct.net_device** %8, align 8
  %15 = call %struct.virt_wifi_netdev_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.virt_wifi_netdev_priv* %15, %struct.virt_wifi_netdev_priv** %12, align 8
  %16 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %17 = load i64, i64* @IFLA_LINK, align 8
  %18 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %16, i64 %17
  %19 = load %struct.nlattr*, %struct.nlattr** %18, align 8
  %20 = icmp ne %struct.nlattr* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %186

24:                                               ; preds = %5
  %25 = load %struct.net_device*, %struct.net_device** %8, align 8
  %26 = call i32 @netif_carrier_off(%struct.net_device* %25)
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %29 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %28, i32 0, i32 5
  store %struct.net_device* %27, %struct.net_device** %29, align 8
  %30 = load %struct.net*, %struct.net** %7, align 8
  %31 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %32 = load i64, i64* @IFLA_LINK, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %31, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = call i32 @nla_get_u32(%struct.nlattr* %34)
  %36 = call %struct.TYPE_9__* @__dev_get_by_index(%struct.net* %30, i32 %35)
  %37 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %38 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %37, i32 0, i32 3
  store %struct.TYPE_9__* %36, %struct.TYPE_9__** %38, align 8
  %39 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %40 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %39, i32 0, i32 3
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %24
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %186

46:                                               ; preds = %24
  %47 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %48 = load i64, i64* @IFLA_MTU, align 8
  %49 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %47, i64 %48
  %50 = load %struct.nlattr*, %struct.nlattr** %49, align 8
  %51 = icmp ne %struct.nlattr* %50, null
  br i1 %51, label %60, label %52

52:                                               ; preds = %46
  %53 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %54 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %53, i32 0, i32 3
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.net_device*, %struct.net_device** %8, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %74

60:                                               ; preds = %46
  %61 = load %struct.net_device*, %struct.net_device** %8, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %65 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %64, i32 0, i32 3
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %63, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %186

73:                                               ; preds = %60
  br label %74

74:                                               ; preds = %73, %52
  %75 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %76 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %75, i32 0, i32 3
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = load i32, i32* @virt_wifi_rx_handler, align 4
  %79 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %80 = call i32 @netdev_rx_handler_register(%struct.TYPE_9__* %77, i32 %78, %struct.virt_wifi_netdev_priv* %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %13, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %74
  %84 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %85 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %84, i32 0, i32 3
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 1
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %6, align 4
  br label %186

91:                                               ; preds = %74
  %92 = load %struct.net_device*, %struct.net_device** %8, align 8
  %93 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %94 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %93, i32 0, i32 3
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = call i32 @eth_hw_addr_inherit(%struct.net_device* %92, %struct.TYPE_9__* %95)
  %97 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %98 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %97, i32 0, i32 3
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %98, align 8
  %100 = load %struct.net_device*, %struct.net_device** %8, align 8
  %101 = call i32 @netif_stacked_transfer_operstate(%struct.TYPE_9__* %99, %struct.net_device* %100)
  %102 = load %struct.net_device*, %struct.net_device** %8, align 8
  %103 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %104 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %103, i32 0, i32 3
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = call i32 @SET_NETDEV_DEV(%struct.net_device* %102, i32* %106)
  %108 = load i32, i32* @GFP_KERNEL, align 4
  %109 = call %struct.TYPE_10__* @kzalloc(i32 8, i32 %108)
  %110 = load %struct.net_device*, %struct.net_device** %8, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 1
  store %struct.TYPE_10__* %109, %struct.TYPE_10__** %111, align 8
  %112 = load %struct.net_device*, %struct.net_device** %8, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 1
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = icmp ne %struct.TYPE_10__* %114, null
  br i1 %115, label %119, label %116

116:                                              ; preds = %91
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %13, align 4
  br label %180

119:                                              ; preds = %91
  %120 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %121 = load %struct.net_device*, %struct.net_device** %8, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 1
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* @common_wiphy, align 4
  %126 = load %struct.net_device*, %struct.net_device** %8, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  store i32 %125, i32* %129, align 4
  %130 = load %struct.net_device*, %struct.net_device** %8, align 8
  %131 = call i32 @register_netdevice(%struct.net_device* %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %119
  %135 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %136 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %135, i32 0, i32 3
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @dev_err(i32* %138, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  br label %173

141:                                              ; preds = %119
  %142 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %143 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %142, i32 0, i32 3
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = load %struct.net_device*, %struct.net_device** %8, align 8
  %146 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %147 = call i32 @netdev_upper_dev_link(%struct.TYPE_9__* %144, %struct.net_device* %145, %struct.netlink_ext_ack* %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %141
  %151 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %152 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %151, i32 0, i32 3
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @dev_err(i32* %154, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  br label %170

157:                                              ; preds = %141
  %158 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %159 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %158, i32 0, i32 0
  store i32 0, i32* %159, align 8
  %160 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %161 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %160, i32 0, i32 1
  store i32 0, i32* %161, align 4
  %162 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %163 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %162, i32 0, i32 2
  store i32 0, i32* %163, align 8
  %164 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %165 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %164, i32 0, i32 4
  %166 = load i32, i32* @virt_wifi_connect_complete, align 4
  %167 = call i32 @INIT_DELAYED_WORK(i32* %165, i32 %166)
  %168 = load i32, i32* @THIS_MODULE, align 4
  %169 = call i32 @__module_get(i32 %168)
  store i32 0, i32* %6, align 4
  br label %186

170:                                              ; preds = %150
  %171 = load %struct.net_device*, %struct.net_device** %8, align 8
  %172 = call i32 @unregister_netdevice(%struct.net_device* %171)
  br label %173

173:                                              ; preds = %170, %134
  %174 = load %struct.net_device*, %struct.net_device** %8, align 8
  %175 = getelementptr inbounds %struct.net_device, %struct.net_device* %174, i32 0, i32 1
  %176 = load %struct.TYPE_10__*, %struct.TYPE_10__** %175, align 8
  %177 = call i32 @kfree(%struct.TYPE_10__* %176)
  %178 = load %struct.net_device*, %struct.net_device** %8, align 8
  %179 = getelementptr inbounds %struct.net_device, %struct.net_device* %178, i32 0, i32 1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %179, align 8
  br label %180

180:                                              ; preds = %173, %116
  %181 = load %struct.virt_wifi_netdev_priv*, %struct.virt_wifi_netdev_priv** %12, align 8
  %182 = getelementptr inbounds %struct.virt_wifi_netdev_priv, %struct.virt_wifi_netdev_priv* %181, i32 0, i32 3
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = call i32 @netdev_rx_handler_unregister(%struct.TYPE_9__* %183)
  %185 = load i32, i32* %13, align 4
  store i32 %185, i32* %6, align 4
  br label %186

186:                                              ; preds = %180, %157, %83, %70, %43, %21
  %187 = load i32, i32* %6, align 4
  ret i32 %187
}

declare dso_local %struct.virt_wifi_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local %struct.TYPE_9__* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @netdev_rx_handler_register(%struct.TYPE_9__*, i32, %struct.virt_wifi_netdev_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @eth_hw_addr_inherit(%struct.net_device*, %struct.TYPE_9__*) #1

declare dso_local i32 @netif_stacked_transfer_operstate(%struct.TYPE_9__*, %struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local %struct.TYPE_10__* @kzalloc(i32, i32) #1

declare dso_local i32 @register_netdevice(%struct.net_device*) #1

declare dso_local i32 @netdev_upper_dev_link(%struct.TYPE_9__*, %struct.net_device*, %struct.netlink_ext_ack*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @__module_get(i32) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local i32 @kfree(%struct.TYPE_10__*) #1

declare dso_local i32 @netdev_rx_handler_unregister(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
