; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_process_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_process_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_adapter = type { i32, i32, i32, %struct.TYPE_4__*, %struct.net_device*, %struct.iavf_vsi, i32, %struct.TYPE_3__*, %struct.virtchnl_vf_resource* }
%struct.TYPE_4__ = type { i64, i32, i32, i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.iavf_vsi = type { i32, i32, %struct.net_device*, i32, %struct.iavf_adapter*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.virtchnl_vf_resource = type { i32, i32, i32, i32, %struct.TYPE_4__* }

@VIRTCHNL_VSI_SRIOV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"No LAN VSI found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Requested %d queues, but PF only gave us %d.\0A\00", align 1
@IAVF_FLAG_REINIT_ITR_NEEDED = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_SOFT_FEATURES = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO_ECN = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_SCTP_CRC = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_ENCAP = common dso_local global i32 0, align 4
@NETIF_F_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@NETIF_F_GSO_GRE = common dso_local global i32 0, align 4
@NETIF_F_GSO_GRE_CSUM = common dso_local global i32 0, align 4
@NETIF_F_GSO_IPXIP4 = common dso_local global i32 0, align 4
@NETIF_F_GSO_IPXIP6 = common dso_local global i32 0, align 4
@NETIF_F_GSO_UDP_TUNNEL_CSUM = common dso_local global i32 0, align 4
@NETIF_F_GSO_PARTIAL = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO_MANGLEID = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_VLAN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_ADQ = common dso_local global i32 0, align 4
@NETIF_F_HW_TC = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_GSO = common dso_local global i32 0, align 4
@IAVF_DEFAULT_IRQ_WORK = common dso_local global i32 0, align 4
@VIRTCHNL_VF_OFFLOAD_RSS_PF = common dso_local global i32 0, align 4
@IAVF_HKEY_ARRAY_SIZE = common dso_local global i32 0, align 4
@IAVF_HLUT_ARRAY_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_process_config(%struct.iavf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_adapter*, align 8
  %4 = alloca %struct.virtchnl_vf_resource*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.iavf_vsi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %3, align 8
  %11 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %11, i32 0, i32 8
  %13 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %12, align 8
  store %struct.virtchnl_vf_resource* %13, %struct.virtchnl_vf_resource** %4, align 8
  %14 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %17, i32 0, i32 4
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %7, align 8
  %20 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %20, i32 0, i32 5
  store %struct.iavf_vsi* %21, %struct.iavf_vsi** %8, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %49, %1
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %25 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %22
  %29 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %30 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VIRTCHNL_VSI_SRIOV, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %28
  %40 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %41 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %46, i32 0, i32 3
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %47, align 8
  br label %48

48:                                               ; preds = %39, %28
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %22

52:                                               ; preds = %22
  %53 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %53, i32 0, i32 3
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = icmp ne %struct.TYPE_4__* %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %52
  %58 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %58, i32 0, i32 7
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %381

65:                                               ; preds = %52
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %104

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %69, %74
  br i1 %75, label %76, label %104

76:                                               ; preds = %68
  %77 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %77, i32 0, i32 7
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %82, i32 0, i32 3
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32*, i8*, ...) @dev_err(i32* %80, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32 %86)
  %88 = load i32, i32* @IAVF_FLAG_REINIT_ITR_NEEDED, align 4
  %89 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %90 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %93, i32 0, i32 3
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %101 = call i32 @iavf_schedule_reset(%struct.iavf_adapter* %100)
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %381

104:                                              ; preds = %68, %65
  %105 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %105, i32 0, i32 0
  store i32 0, i32* %106, align 8
  %107 = load i32, i32* @NETIF_F_SG, align 4
  %108 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @NETIF_F_SOFT_FEATURES, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @NETIF_F_TSO, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @NETIF_F_TSO6, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @NETIF_F_SCTP_CRC, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @NETIF_F_RXHASH, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %127 = or i32 %125, %126
  store i32 %127, i32* %9, align 4
  %128 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %129 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_ENCAP, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %178

134:                                              ; preds = %104
  %135 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %136 = load i32, i32* @NETIF_F_GSO_GRE, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @NETIF_F_GSO_GRE_CSUM, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @NETIF_F_GSO_IPXIP4, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @NETIF_F_GSO_IPXIP6, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @NETIF_F_GSO_PARTIAL, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* %9, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %9, align 4
  %150 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %151 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_ENCAP_CSUM, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %162, label %156

156:                                              ; preds = %134
  %157 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL_CSUM, align 4
  %158 = load %struct.net_device*, %struct.net_device** %7, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 4
  br label %162

162:                                              ; preds = %156, %134
  %163 = load i32, i32* @NETIF_F_GSO_GRE_CSUM, align 4
  %164 = load %struct.net_device*, %struct.net_device** %7, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* @NETIF_F_TSO_MANGLEID, align 4
  %169 = load %struct.net_device*, %struct.net_device** %7, align 8
  %170 = getelementptr inbounds %struct.net_device, %struct.net_device* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* %9, align 4
  %174 = load %struct.net_device*, %struct.net_device** %7, align 8
  %175 = getelementptr inbounds %struct.net_device, %struct.net_device* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %162, %104
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @NETIF_F_TSO_MANGLEID, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.net_device*, %struct.net_device** %7, align 8
  %183 = getelementptr inbounds %struct.net_device, %struct.net_device* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = load i32, i32* %9, align 4
  store i32 %186, i32* %10, align 4
  %187 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %188 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_VLAN, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %178
  %194 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %195 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* %10, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %10, align 4
  br label %199

199:                                              ; preds = %193, %178
  %200 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %201 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_ADQ, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %199
  %207 = load i32, i32* @NETIF_F_HW_TC, align 4
  %208 = load i32, i32* %10, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %10, align 4
  br label %210

210:                                              ; preds = %206, %199
  %211 = load i32, i32* %10, align 4
  %212 = load %struct.net_device*, %struct.net_device** %7, align 8
  %213 = getelementptr inbounds %struct.net_device, %struct.net_device* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 4
  %216 = load i32, i32* %10, align 4
  %217 = load %struct.net_device*, %struct.net_device** %7, align 8
  %218 = getelementptr inbounds %struct.net_device, %struct.net_device* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %216
  store i32 %220, i32* %218, align 4
  %221 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %222 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_VLAN, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %210
  %228 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %229 = load %struct.net_device*, %struct.net_device** %7, align 8
  %230 = getelementptr inbounds %struct.net_device, %struct.net_device* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 4
  %232 = or i32 %231, %228
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %227, %210
  %234 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %235 = load %struct.net_device*, %struct.net_device** %7, align 8
  %236 = getelementptr inbounds %struct.net_device, %struct.net_device* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 4
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 4
  %239 = load %struct.net_device*, %struct.net_device** %7, align 8
  %240 = getelementptr inbounds %struct.net_device, %struct.net_device* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %324

243:                                              ; preds = %233
  %244 = load %struct.net_device*, %struct.net_device** %7, align 8
  %245 = getelementptr inbounds %struct.net_device, %struct.net_device* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @NETIF_F_TSO, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %243
  %251 = load %struct.net_device*, %struct.net_device** %7, align 8
  %252 = getelementptr inbounds %struct.net_device, %struct.net_device* %251, i32 0, i32 6
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %253, 576
  br i1 %254, label %255, label %262

255:                                              ; preds = %250, %243
  %256 = load i32, i32* @NETIF_F_TSO, align 4
  %257 = xor i32 %256, -1
  %258 = load %struct.net_device*, %struct.net_device** %7, align 8
  %259 = getelementptr inbounds %struct.net_device, %struct.net_device* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, %257
  store i32 %261, i32* %259, align 4
  br label %262

262:                                              ; preds = %255, %250
  %263 = load %struct.net_device*, %struct.net_device** %7, align 8
  %264 = getelementptr inbounds %struct.net_device, %struct.net_device* %263, i32 0, i32 5
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @NETIF_F_TSO6, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %262
  %270 = load %struct.net_device*, %struct.net_device** %7, align 8
  %271 = getelementptr inbounds %struct.net_device, %struct.net_device* %270, i32 0, i32 6
  %272 = load i32, i32* %271, align 4
  %273 = icmp slt i32 %272, 576
  br i1 %273, label %274, label %281

274:                                              ; preds = %269, %262
  %275 = load i32, i32* @NETIF_F_TSO6, align 4
  %276 = xor i32 %275, -1
  %277 = load %struct.net_device*, %struct.net_device** %7, align 8
  %278 = getelementptr inbounds %struct.net_device, %struct.net_device* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, %276
  store i32 %280, i32* %278, align 4
  br label %281

281:                                              ; preds = %274, %269
  %282 = load %struct.net_device*, %struct.net_device** %7, align 8
  %283 = getelementptr inbounds %struct.net_device, %struct.net_device* %282, i32 0, i32 5
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %295, label %288

288:                                              ; preds = %281
  %289 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %290 = xor i32 %289, -1
  %291 = load %struct.net_device*, %struct.net_device** %7, align 8
  %292 = getelementptr inbounds %struct.net_device, %struct.net_device* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, %290
  store i32 %294, i32* %292, align 4
  br label %295

295:                                              ; preds = %288, %281
  %296 = load %struct.net_device*, %struct.net_device** %7, align 8
  %297 = getelementptr inbounds %struct.net_device, %struct.net_device* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @NETIF_F_GRO, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %309, label %302

302:                                              ; preds = %295
  %303 = load i32, i32* @NETIF_F_GRO, align 4
  %304 = xor i32 %303, -1
  %305 = load %struct.net_device*, %struct.net_device** %7, align 8
  %306 = getelementptr inbounds %struct.net_device, %struct.net_device* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 4
  %308 = and i32 %307, %304
  store i32 %308, i32* %306, align 4
  br label %309

309:                                              ; preds = %302, %295
  %310 = load %struct.net_device*, %struct.net_device** %7, align 8
  %311 = getelementptr inbounds %struct.net_device, %struct.net_device* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @NETIF_F_GSO, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %323, label %316

316:                                              ; preds = %309
  %317 = load i32, i32* @NETIF_F_GSO, align 4
  %318 = xor i32 %317, -1
  %319 = load %struct.net_device*, %struct.net_device** %7, align 8
  %320 = getelementptr inbounds %struct.net_device, %struct.net_device* %319, i32 0, i32 4
  %321 = load i32, i32* %320, align 4
  %322 = and i32 %321, %318
  store i32 %322, i32* %320, align 4
  br label %323

323:                                              ; preds = %316, %309
  br label %324

324:                                              ; preds = %323, %233
  %325 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %326 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %325, i32 0, i32 3
  %327 = load %struct.TYPE_4__*, %struct.TYPE_4__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %331 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %330, i32 0, i32 5
  %332 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %331, i32 0, i32 5
  store i32 %329, i32* %332, align 8
  %333 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %334 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %335 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %334, i32 0, i32 5
  %336 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %335, i32 0, i32 4
  store %struct.iavf_adapter* %333, %struct.iavf_adapter** %336, align 8
  %337 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %338 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %337, i32 0, i32 5
  %339 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %338, i32 0, i32 0
  store i32 1, i32* %339, align 8
  %340 = load i32, i32* @IAVF_DEFAULT_IRQ_WORK, align 4
  %341 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %342 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %341, i32 0, i32 5
  %343 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %342, i32 0, i32 3
  store i32 %340, i32* %343, align 8
  %344 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %345 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %344, i32 0, i32 4
  %346 = load %struct.net_device*, %struct.net_device** %345, align 8
  %347 = load %struct.iavf_vsi*, %struct.iavf_vsi** %8, align 8
  %348 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %347, i32 0, i32 2
  store %struct.net_device* %346, %struct.net_device** %348, align 8
  %349 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %350 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %349, i32 0, i32 3
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** %350, align 8
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i32 0, i32 2
  %353 = load i32, i32* %352, align 4
  %354 = load %struct.iavf_vsi*, %struct.iavf_vsi** %8, align 8
  %355 = getelementptr inbounds %struct.iavf_vsi, %struct.iavf_vsi* %354, i32 0, i32 1
  store i32 %353, i32* %355, align 4
  %356 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %357 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @VIRTCHNL_VF_OFFLOAD_RSS_PF, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %373

362:                                              ; preds = %324
  %363 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %364 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %367 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %366, i32 0, i32 2
  store i32 %365, i32* %367, align 8
  %368 = load %struct.virtchnl_vf_resource*, %struct.virtchnl_vf_resource** %4, align 8
  %369 = getelementptr inbounds %struct.virtchnl_vf_resource, %struct.virtchnl_vf_resource* %368, i32 0, i32 2
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %372 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %371, i32 0, i32 1
  store i32 %370, i32* %372, align 4
  br label %380

373:                                              ; preds = %324
  %374 = load i32, i32* @IAVF_HKEY_ARRAY_SIZE, align 4
  %375 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %376 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %375, i32 0, i32 2
  store i32 %374, i32* %376, align 8
  %377 = load i32, i32* @IAVF_HLUT_ARRAY_SIZE, align 4
  %378 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %379 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %378, i32 0, i32 1
  store i32 %377, i32* %379, align 4
  br label %380

380:                                              ; preds = %373, %362
  store i32 0, i32* %2, align 4
  br label %381

381:                                              ; preds = %380, %76, %57
  %382 = load i32, i32* %2, align 4
  ret i32 %382
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @iavf_schedule_reset(%struct.iavf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
