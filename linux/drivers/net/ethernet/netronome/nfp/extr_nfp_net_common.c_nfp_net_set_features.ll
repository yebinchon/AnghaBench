; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_set_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_set_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_net = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_RXCSUM_ANY = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_TXCSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_LSO2 = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_LSO = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_LSO_ANY = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_RXVLAN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_TXVLAN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_GATHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Feature change 0x%llx -> 0x%llx (changed=0x%llx)\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"NIC ctrl: 0x%x -> 0x%x\0A\00", align 1
@NFP_NET_CFG_CTRL = common dso_local global i32 0, align 4
@NFP_NET_CFG_UPDATE_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @nfp_net_set_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_set_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = xor i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %15)
  store %struct.nfp_net* %16, %struct.nfp_net** %7, align 8
  %17 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %18 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %44

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %32 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NFP_NET_CFG_CTRL_RXCSUM_ANY, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %8, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %8, align 4
  br label %43

38:                                               ; preds = %25
  %39 = load i32, i32* @NFP_NET_CFG_CTRL_RXCSUM_ANY, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %38, %30
  br label %44

44:                                               ; preds = %43, %2
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %47 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %54 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i32, i32* @NFP_NET_CFG_CTRL_TXCSUM, align 4
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  br label %67

62:                                               ; preds = %51
  %63 = load i32, i32* @NFP_NET_CFG_CTRL_TXCSUM, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %62, %58
  br label %68

68:                                               ; preds = %67, %44
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @NETIF_F_TSO, align 4
  %71 = load i32, i32* @NETIF_F_TSO6, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %102

75:                                               ; preds = %68
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @NETIF_F_TSO, align 4
  %78 = load i32, i32* @NETIF_F_TSO6, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %75
  %83 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %84 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NFP_NET_CFG_CTRL_LSO2, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  br label %92

90:                                               ; preds = %82
  %91 = load i32, i32* @NFP_NET_CFG_CTRL_LSO, align 4
  br label %92

92:                                               ; preds = %90, %89
  %93 = phi i32 [ %87, %89 ], [ %91, %90 ]
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  br label %101

96:                                               ; preds = %75
  %97 = load i32, i32* @NFP_NET_CFG_CTRL_LSO_ANY, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %96, %92
  br label %102

102:                                              ; preds = %101, %68
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %102
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, i32* @NFP_NET_CFG_CTRL_RXVLAN, align 4
  %114 = load i32, i32* %8, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %8, align 4
  br label %121

116:                                              ; preds = %107
  %117 = load i32, i32* @NFP_NET_CFG_CTRL_RXVLAN, align 4
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %8, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %116, %112
  br label %122

122:                                              ; preds = %121, %102
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %122
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i32, i32* @NFP_NET_CFG_CTRL_TXVLAN, align 4
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %8, align 4
  br label %141

136:                                              ; preds = %127
  %137 = load i32, i32* @NFP_NET_CFG_CTRL_TXVLAN, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %8, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %8, align 4
  br label %141

141:                                              ; preds = %136, %132
  br label %142

142:                                              ; preds = %141, %122
  %143 = load i32, i32* %6, align 4
  %144 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %162

147:                                              ; preds = %142
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i32, i32* @NFP_NET_CFG_CTRL_CTAG_FILTER, align 4
  %154 = load i32, i32* %8, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %8, align 4
  br label %161

156:                                              ; preds = %147
  %157 = load i32, i32* @NFP_NET_CFG_CTRL_CTAG_FILTER, align 4
  %158 = xor i32 %157, -1
  %159 = load i32, i32* %8, align 4
  %160 = and i32 %159, %158
  store i32 %160, i32* %8, align 4
  br label %161

161:                                              ; preds = %156, %152
  br label %162

162:                                              ; preds = %161, %142
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* @NETIF_F_SG, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %182

167:                                              ; preds = %162
  %168 = load i32, i32* %5, align 4
  %169 = load i32, i32* @NETIF_F_SG, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %167
  %173 = load i32, i32* @NFP_NET_CFG_CTRL_GATHER, align 4
  %174 = load i32, i32* %8, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %8, align 4
  br label %181

176:                                              ; preds = %167
  %177 = load i32, i32* @NFP_NET_CFG_CTRL_GATHER, align 4
  %178 = xor i32 %177, -1
  %179 = load i32, i32* %8, align 4
  %180 = and i32 %179, %178
  store i32 %180, i32* %8, align 4
  br label %181

181:                                              ; preds = %176, %172
  br label %182

182:                                              ; preds = %181, %162
  %183 = load %struct.net_device*, %struct.net_device** %4, align 8
  %184 = load i32, i32* %5, align 4
  %185 = call i32 @nfp_port_set_features(%struct.net_device* %183, i32 %184)
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %182
  %189 = load i32, i32* %9, align 4
  store i32 %189, i32* %3, align 4
  br label %229

190:                                              ; preds = %182
  %191 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %192 = load %struct.net_device*, %struct.net_device** %4, align 8
  %193 = getelementptr inbounds %struct.net_device, %struct.net_device* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* %6, align 4
  %197 = call i32 (%struct.nfp_net*, i8*, i32, i32, ...) @nn_dbg(%struct.nfp_net* %191, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %194, i32 %195, i32 %196)
  %198 = load i32, i32* %8, align 4
  %199 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %200 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = icmp eq i32 %198, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %190
  store i32 0, i32* %3, align 4
  br label %229

205:                                              ; preds = %190
  %206 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %207 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %208 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %8, align 4
  %212 = call i32 (%struct.nfp_net*, i8*, i32, i32, ...) @nn_dbg(%struct.nfp_net* %206, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %210, i32 %211)
  %213 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %214 = load i32, i32* @NFP_NET_CFG_CTRL, align 4
  %215 = load i32, i32* %8, align 4
  %216 = call i32 @nn_writel(%struct.nfp_net* %213, i32 %214, i32 %215)
  %217 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %218 = load i32, i32* @NFP_NET_CFG_UPDATE_GEN, align 4
  %219 = call i32 @nfp_net_reconfig(%struct.nfp_net* %217, i32 %218)
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %9, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %205
  %223 = load i32, i32* %9, align 4
  store i32 %223, i32* %3, align 4
  br label %229

224:                                              ; preds = %205
  %225 = load i32, i32* %8, align 4
  %226 = load %struct.nfp_net*, %struct.nfp_net** %7, align 8
  %227 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 0
  store i32 %225, i32* %228, align 4
  store i32 0, i32* %3, align 4
  br label %229

229:                                              ; preds = %224, %222, %204, %188
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local %struct.nfp_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nfp_port_set_features(%struct.net_device*, i32) #1

declare dso_local i32 @nn_dbg(%struct.nfp_net*, i8*, i32, i32, ...) #1

declare dso_local i32 @nn_writel(%struct.nfp_net*, i32, i32) #1

declare dso_local i32 @nfp_net_reconfig(%struct.nfp_net*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
