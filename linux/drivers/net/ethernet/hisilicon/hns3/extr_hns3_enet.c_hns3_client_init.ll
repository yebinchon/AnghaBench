; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_client_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_client_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i8*, %struct.TYPE_6__, i32, %struct.TYPE_5__*, %struct.pci_dev* }
%struct.TYPE_6__ = type { %struct.net_device* }
%struct.net_device = type { i32, i32*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.hnae3_handle*, i32*, i32*)* }
%struct.pci_dev = type { i32 }
%struct.hns3_nic_priv = type { %struct.hnae3_handle*, i32*, i32, i32*, i64, %struct.net_device* }

@ENOMEM = common dso_local global i32 0, align 4
@HNS3_NIC_STATE_DOWN = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEFAULT_MSG_LEVEL = common dso_local global i32 0, align 4
@HNS3_TX_TIMEOUT = common dso_local global i32 0, align 4
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@hns3_nic_netdev_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"probe register netdev fail!\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"hns3_client_start fail! ret=%d\0A\00", align 1
@HNS3_MAX_MTU = common dso_local global i32 0, align 4
@HNS3_NIC_STATE_INITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*)* @hns3_client_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_client_init(%struct.hnae3_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns3_nic_priv*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  %10 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %11 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %10, i32 0, i32 4
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  %13 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %14 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %13, i32 0, i32 3
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32 (%struct.hnae3_handle*, i32*, i32*)*, i32 (%struct.hnae3_handle*, i32*, i32*)** %18, align 8
  %20 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %21 = call i32 %19(%struct.hnae3_handle* %20, i32* %5, i32* %6)
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.net_device* @alloc_etherdev_mq(i32 48, i32 %22)
  store %struct.net_device* %23, %struct.net_device** %8, align 8
  %24 = load %struct.net_device*, %struct.net_device** %8, align 8
  %25 = icmp ne %struct.net_device* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %185

29:                                               ; preds = %1
  %30 = load %struct.net_device*, %struct.net_device** %8, align 8
  %31 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %30)
  store %struct.hns3_nic_priv* %31, %struct.hns3_nic_priv** %7, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %32, i32 0, i32 0
  %34 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %35 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %34, i32 0, i32 3
  store i32* %33, i32** %35, align 8
  %36 = load %struct.net_device*, %struct.net_device** %8, align 8
  %37 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %38 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %37, i32 0, i32 5
  store %struct.net_device* %36, %struct.net_device** %38, align 8
  %39 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %40 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %41 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %40, i32 0, i32 0
  store %struct.hnae3_handle* %39, %struct.hnae3_handle** %41, align 8
  %42 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %43 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @HNS3_NIC_STATE_DOWN, align 4
  %45 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %46 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %45, i32 0, i32 2
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  %48 = load i32, i32* @debug, align 4
  %49 = load i32, i32* @DEFAULT_MSG_LEVEL, align 4
  %50 = call i32 @netif_msg_init(i32 %48, i32 %49)
  %51 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %52 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.net_device*, %struct.net_device** %8, align 8
  %54 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %55 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store %struct.net_device* %53, %struct.net_device** %56, align 8
  %57 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %58 = bitcast %struct.hns3_nic_priv* %57 to i8*
  %59 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %60 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.net_device*, %struct.net_device** %8, align 8
  %62 = call i32 @hns3_init_mac_addr(%struct.net_device* %61, i32 1)
  %63 = load %struct.net_device*, %struct.net_device** %8, align 8
  %64 = call i32 @hns3_set_default_feature(%struct.net_device* %63)
  %65 = load i32, i32* @HNS3_TX_TIMEOUT, align 4
  %66 = load %struct.net_device*, %struct.net_device** %8, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %69 = load %struct.net_device*, %struct.net_device** %8, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.net_device*, %struct.net_device** %8, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  store i32* @hns3_nic_netdev_ops, i32** %74, align 8
  %75 = load %struct.net_device*, %struct.net_device** %8, align 8
  %76 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %77 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %76, i32 0, i32 0
  %78 = call i32 @SET_NETDEV_DEV(%struct.net_device* %75, i32* %77)
  %79 = load %struct.net_device*, %struct.net_device** %8, align 8
  %80 = call i32 @hns3_ethtool_set_ops(%struct.net_device* %79)
  %81 = load %struct.net_device*, %struct.net_device** %8, align 8
  %82 = call i32 @netif_carrier_off(%struct.net_device* %81)
  %83 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %84 = call i32 @hns3_get_ring_config(%struct.hns3_nic_priv* %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %29
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %9, align 4
  br label %179

90:                                               ; preds = %29
  %91 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %92 = call i32 @hns3_nic_alloc_vector_data(%struct.hns3_nic_priv* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %90
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %9, align 4
  br label %176

98:                                               ; preds = %90
  %99 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %100 = call i32 @hns3_nic_init_vector_data(%struct.hns3_nic_priv* %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %98
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %9, align 4
  br label %173

106:                                              ; preds = %98
  %107 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %108 = call i32 @hns3_init_all_ring(%struct.hns3_nic_priv* %107)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %9, align 4
  br label %170

114:                                              ; preds = %106
  %115 = load %struct.net_device*, %struct.net_device** %8, align 8
  %116 = call i32 @hns3_init_phy(%struct.net_device* %115)
  store i32 %116, i32* %9, align 4
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %167

120:                                              ; preds = %114
  %121 = load %struct.net_device*, %struct.net_device** %8, align 8
  %122 = call i32 @register_netdev(%struct.net_device* %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %127 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 (i32*, i8*, ...) @dev_err(i32* %128, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %164

130:                                              ; preds = %120
  %131 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %132 = call i32 @hns3_client_start(%struct.hnae3_handle* %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %137 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %136, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %9, align 4
  %140 = call i32 (i32*, i8*, ...) @dev_err(i32* %138, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %139)
  br label %161

141:                                              ; preds = %130
  %142 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %143 = call i32 @hns3_dcbnl_setup(%struct.hnae3_handle* %142)
  %144 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %145 = call i32 @hns3_dbg_init(%struct.hnae3_handle* %144)
  %146 = load i32, i32* @HNS3_MAX_MTU, align 4
  %147 = load %struct.net_device*, %struct.net_device** %8, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* @HNS3_NIC_STATE_INITED, align 4
  %150 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %151 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %150, i32 0, i32 2
  %152 = call i32 @set_bit(i32 %149, i32* %151)
  %153 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %154 = call i64 @netif_msg_drv(%struct.hnae3_handle* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %141
  %157 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %158 = call i32 @hns3_info_show(%struct.hns3_nic_priv* %157)
  br label %159

159:                                              ; preds = %156, %141
  %160 = load i32, i32* %9, align 4
  store i32 %160, i32* %2, align 4
  br label %185

161:                                              ; preds = %135
  %162 = load %struct.net_device*, %struct.net_device** %8, align 8
  %163 = call i32 @unregister_netdev(%struct.net_device* %162)
  br label %164

164:                                              ; preds = %161, %125
  %165 = load %struct.net_device*, %struct.net_device** %8, align 8
  %166 = call i32 @hns3_uninit_phy(%struct.net_device* %165)
  br label %167

167:                                              ; preds = %164, %119
  %168 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %169 = call i32 @hns3_uninit_all_ring(%struct.hns3_nic_priv* %168)
  br label %170

170:                                              ; preds = %167, %111
  %171 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %172 = call i32 @hns3_nic_uninit_vector_data(%struct.hns3_nic_priv* %171)
  br label %173

173:                                              ; preds = %170, %103
  %174 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %175 = call i32 @hns3_nic_dealloc_vector_data(%struct.hns3_nic_priv* %174)
  br label %176

176:                                              ; preds = %173, %95
  %177 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %178 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %177, i32 0, i32 1
  store i32* null, i32** %178, align 8
  br label %179

179:                                              ; preds = %176, %87
  %180 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %7, align 8
  %181 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %180, i32 0, i32 0
  store %struct.hnae3_handle* null, %struct.hnae3_handle** %181, align 8
  %182 = load %struct.net_device*, %struct.net_device** %8, align 8
  %183 = call i32 @free_netdev(%struct.net_device* %182)
  %184 = load i32, i32* %9, align 4
  store i32 %184, i32* %2, align 4
  br label %185

185:                                              ; preds = %179, %159, %26
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #1

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @hns3_init_mac_addr(%struct.net_device*, i32) #1

declare dso_local i32 @hns3_set_default_feature(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @hns3_ethtool_set_ops(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @hns3_get_ring_config(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_nic_alloc_vector_data(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_nic_init_vector_data(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_init_all_ring(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_init_phy(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @hns3_client_start(%struct.hnae3_handle*) #1

declare dso_local i32 @hns3_dcbnl_setup(%struct.hnae3_handle*) #1

declare dso_local i32 @hns3_dbg_init(%struct.hnae3_handle*) #1

declare dso_local i64 @netif_msg_drv(%struct.hnae3_handle*) #1

declare dso_local i32 @hns3_info_show(%struct.hns3_nic_priv*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @hns3_uninit_phy(%struct.net_device*) #1

declare dso_local i32 @hns3_uninit_all_ring(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_nic_uninit_vector_data(%struct.hns3_nic_priv*) #1

declare dso_local i32 @hns3_nic_dealloc_vector_data(%struct.hns3_nic_priv*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
