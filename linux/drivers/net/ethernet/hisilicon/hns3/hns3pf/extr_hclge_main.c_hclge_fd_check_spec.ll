; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_fd_check_spec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_fd_check_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i64*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.ethtool_rx_flow_spec = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i64*, i32, i32, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_10__ = type { %struct.ethhdr, %struct.ethtool_usrip6_spec, %struct.ethtool_tcpip6_spec, %struct.ethtool_usrip4_spec, %struct.ethtool_tcpip4_spec }
%struct.ethhdr = type { i32, i32, i32 }
%struct.ethtool_usrip6_spec = type { i32, i32, i32, i32*, i32* }
%struct.ethtool_tcpip6_spec = type { i32, i32, i32, i32*, i32* }
%struct.ethtool_usrip4_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.ethtool_tcpip4_spec = type { i32, i32, i32, i32, i32 }

@HCLGE_FD_STAGE_1 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FLOW_EXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"user-def bytes are not supported\0A\00", align 1
@FLOW_MAC_EXT = common dso_local global i32 0, align 4
@INNER_SRC_MAC = common dso_local global i32 0, align 4
@INNER_DST_MAC = common dso_local global i32 0, align 4
@INNER_SRC_IP = common dso_local global i32 0, align 4
@INNER_DST_IP = common dso_local global i32 0, align 4
@INNER_SRC_PORT = common dso_local global i32 0, align 4
@INNER_DST_PORT = common dso_local global i32 0, align 4
@INNER_IP_TOS = common dso_local global i32 0, align 4
@INNER_IP_PROTO = common dso_local global i32 0, align 4
@ETH_RX_NFC_IP4 = common dso_local global i32 0, align 4
@INNER_ETH_TYPE = common dso_local global i32 0, align 4
@INNER_VLAN_TAG_FST = common dso_local global i32 0, align 4
@VLAN_N_VID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.ethtool_rx_flow_spec*, i32*)* @hclge_fd_check_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_fd_check_spec(%struct.hclge_dev* %0, %struct.ethtool_rx_flow_spec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ethtool_tcpip4_spec*, align 8
  %9 = alloca %struct.ethtool_usrip4_spec*, align 8
  %10 = alloca %struct.ethtool_tcpip6_spec*, align 8
  %11 = alloca %struct.ethtool_usrip6_spec*, align 8
  %12 = alloca %struct.ethhdr*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store %struct.ethtool_rx_flow_spec* %1, %struct.ethtool_rx_flow_spec** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %14 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %17 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @HCLGE_FD_STAGE_1, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp sge i64 %15, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %609

27:                                               ; preds = %3
  %28 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %29 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %32 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %30, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %609

40:                                               ; preds = %27
  %41 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %42 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @FLOW_EXT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %40
  %48 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %49 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %63, label %55

55:                                               ; preds = %47
  %56 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %57 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %55, %47
  %64 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %65 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %64, i32 0, i32 1
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EOPNOTSUPP, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %609

71:                                               ; preds = %55, %40
  %72 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %73 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @FLOW_EXT, align 4
  %76 = load i32, i32* @FLOW_MAC_EXT, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = and i32 %74, %78
  switch i32 %79, label %514 [
    i32 133, label %80
    i32 131, label %80
    i32 129, label %80
    i32 134, label %147
    i32 132, label %226
    i32 130, label %226
    i32 128, label %226
    i32 135, label %339
    i32 136, label %455
  ]

80:                                               ; preds = %71, %71, %71
  %81 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %82 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 4
  store %struct.ethtool_tcpip4_spec* %83, %struct.ethtool_tcpip4_spec** %8, align 8
  %84 = load i32, i32* @INNER_SRC_MAC, align 4
  %85 = call i32 @BIT(i32 %84)
  %86 = load i32, i32* @INNER_DST_MAC, align 4
  %87 = call i32 @BIT(i32 %86)
  %88 = or i32 %85, %87
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  %92 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %93 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %80
  %97 = load i32, i32* @INNER_SRC_IP, align 4
  %98 = call i32 @BIT(i32 %97)
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %98
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %80
  %103 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %104 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %102
  %108 = load i32, i32* @INNER_DST_IP, align 4
  %109 = call i32 @BIT(i32 %108)
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %110, align 4
  %112 = or i32 %111, %109
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %107, %102
  %114 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %115 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* @INNER_SRC_PORT, align 4
  %120 = call i32 @BIT(i32 %119)
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %120
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %118, %113
  %125 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %126 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %135, label %129

129:                                              ; preds = %124
  %130 = load i32, i32* @INNER_DST_PORT, align 4
  %131 = call i32 @BIT(i32 %130)
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %132, align 4
  %134 = or i32 %133, %131
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %129, %124
  %136 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %8, align 8
  %137 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %146, label %140

140:                                              ; preds = %135
  %141 = load i32, i32* @INNER_IP_TOS, align 4
  %142 = call i32 @BIT(i32 %141)
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %142
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %140, %135
  br label %517

147:                                              ; preds = %71
  %148 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %149 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 3
  store %struct.ethtool_usrip4_spec* %150, %struct.ethtool_usrip4_spec** %9, align 8
  %151 = load i32, i32* @INNER_SRC_MAC, align 4
  %152 = call i32 @BIT(i32 %151)
  %153 = load i32, i32* @INNER_DST_MAC, align 4
  %154 = call i32 @BIT(i32 %153)
  %155 = or i32 %152, %154
  %156 = load i32, i32* @INNER_SRC_PORT, align 4
  %157 = call i32 @BIT(i32 %156)
  %158 = or i32 %155, %157
  %159 = load i32, i32* @INNER_DST_PORT, align 4
  %160 = call i32 @BIT(i32 %159)
  %161 = or i32 %158, %160
  %162 = load i32*, i32** %7, align 8
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %161
  store i32 %164, i32* %162, align 4
  %165 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %9, align 8
  %166 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %147
  %170 = load i32, i32* @INNER_SRC_IP, align 4
  %171 = call i32 @BIT(i32 %170)
  %172 = load i32*, i32** %7, align 8
  %173 = load i32, i32* %172, align 4
  %174 = or i32 %173, %171
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %169, %147
  %176 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %9, align 8
  %177 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %186, label %180

180:                                              ; preds = %175
  %181 = load i32, i32* @INNER_DST_IP, align 4
  %182 = call i32 @BIT(i32 %181)
  %183 = load i32*, i32** %7, align 8
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %182
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %180, %175
  %187 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %9, align 8
  %188 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %197, label %191

191:                                              ; preds = %186
  %192 = load i32, i32* @INNER_IP_TOS, align 4
  %193 = call i32 @BIT(i32 %192)
  %194 = load i32*, i32** %7, align 8
  %195 = load i32, i32* %194, align 4
  %196 = or i32 %195, %193
  store i32 %196, i32* %194, align 4
  br label %197

197:                                              ; preds = %191, %186
  %198 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %9, align 8
  %199 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %197
  %203 = load i32, i32* @INNER_IP_PROTO, align 4
  %204 = call i32 @BIT(i32 %203)
  %205 = load i32*, i32** %7, align 8
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %204
  store i32 %207, i32* %205, align 4
  br label %208

208:                                              ; preds = %202, %197
  %209 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %9, align 8
  %210 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %208
  %214 = load i32, i32* @EOPNOTSUPP, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %4, align 4
  br label %609

216:                                              ; preds = %208
  %217 = load %struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec** %9, align 8
  %218 = getelementptr inbounds %struct.ethtool_usrip4_spec, %struct.ethtool_usrip4_spec* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @ETH_RX_NFC_IP4, align 4
  %221 = icmp ne i32 %219, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %216
  %223 = load i32, i32* @EOPNOTSUPP, align 4
  %224 = sub nsw i32 0, %223
  store i32 %224, i32* %4, align 4
  br label %609

225:                                              ; preds = %216
  br label %517

226:                                              ; preds = %71, %71, %71
  %227 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %228 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %227, i32 0, i32 4
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 2
  store %struct.ethtool_tcpip6_spec* %229, %struct.ethtool_tcpip6_spec** %10, align 8
  %230 = load i32, i32* @INNER_SRC_MAC, align 4
  %231 = call i32 @BIT(i32 %230)
  %232 = load i32, i32* @INNER_DST_MAC, align 4
  %233 = call i32 @BIT(i32 %232)
  %234 = or i32 %231, %233
  %235 = load i32, i32* @INNER_IP_TOS, align 4
  %236 = call i32 @BIT(i32 %235)
  %237 = or i32 %234, %236
  %238 = load i32*, i32** %7, align 8
  %239 = load i32, i32* %238, align 4
  %240 = or i32 %239, %237
  store i32 %240, i32* %238, align 4
  %241 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %10, align 8
  %242 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %241, i32 0, i32 4
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %274, label %247

247:                                              ; preds = %226
  %248 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %10, align 8
  %249 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %248, i32 0, i32 4
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 1
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %274, label %254

254:                                              ; preds = %247
  %255 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %10, align 8
  %256 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %255, i32 0, i32 4
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 2
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %274, label %261

261:                                              ; preds = %254
  %262 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %10, align 8
  %263 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %262, i32 0, i32 4
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 3
  %266 = load i32, i32* %265, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %274, label %268

268:                                              ; preds = %261
  %269 = load i32, i32* @INNER_SRC_IP, align 4
  %270 = call i32 @BIT(i32 %269)
  %271 = load i32*, i32** %7, align 8
  %272 = load i32, i32* %271, align 4
  %273 = or i32 %272, %270
  store i32 %273, i32* %271, align 4
  br label %274

274:                                              ; preds = %268, %261, %254, %247, %226
  %275 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %10, align 8
  %276 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %275, i32 0, i32 3
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %308, label %281

281:                                              ; preds = %274
  %282 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %10, align 8
  %283 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %282, i32 0, i32 3
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 1
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %308, label %288

288:                                              ; preds = %281
  %289 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %10, align 8
  %290 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %289, i32 0, i32 3
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 2
  %293 = load i32, i32* %292, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %308, label %295

295:                                              ; preds = %288
  %296 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %10, align 8
  %297 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %296, i32 0, i32 3
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 3
  %300 = load i32, i32* %299, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %308, label %302

302:                                              ; preds = %295
  %303 = load i32, i32* @INNER_DST_IP, align 4
  %304 = call i32 @BIT(i32 %303)
  %305 = load i32*, i32** %7, align 8
  %306 = load i32, i32* %305, align 4
  %307 = or i32 %306, %304
  store i32 %307, i32* %305, align 4
  br label %308

308:                                              ; preds = %302, %295, %288, %281, %274
  %309 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %10, align 8
  %310 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 8
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %319, label %313

313:                                              ; preds = %308
  %314 = load i32, i32* @INNER_SRC_PORT, align 4
  %315 = call i32 @BIT(i32 %314)
  %316 = load i32*, i32** %7, align 8
  %317 = load i32, i32* %316, align 4
  %318 = or i32 %317, %315
  store i32 %318, i32* %316, align 4
  br label %319

319:                                              ; preds = %313, %308
  %320 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %10, align 8
  %321 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %330, label %324

324:                                              ; preds = %319
  %325 = load i32, i32* @INNER_DST_PORT, align 4
  %326 = call i32 @BIT(i32 %325)
  %327 = load i32*, i32** %7, align 8
  %328 = load i32, i32* %327, align 4
  %329 = or i32 %328, %326
  store i32 %329, i32* %327, align 4
  br label %330

330:                                              ; preds = %324, %319
  %331 = load %struct.ethtool_tcpip6_spec*, %struct.ethtool_tcpip6_spec** %10, align 8
  %332 = getelementptr inbounds %struct.ethtool_tcpip6_spec, %struct.ethtool_tcpip6_spec* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %338

335:                                              ; preds = %330
  %336 = load i32, i32* @EOPNOTSUPP, align 4
  %337 = sub nsw i32 0, %336
  store i32 %337, i32* %4, align 4
  br label %609

338:                                              ; preds = %330
  br label %517

339:                                              ; preds = %71
  %340 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %341 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %340, i32 0, i32 4
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 1
  store %struct.ethtool_usrip6_spec* %342, %struct.ethtool_usrip6_spec** %11, align 8
  %343 = load i32, i32* @INNER_SRC_MAC, align 4
  %344 = call i32 @BIT(i32 %343)
  %345 = load i32, i32* @INNER_DST_MAC, align 4
  %346 = call i32 @BIT(i32 %345)
  %347 = or i32 %344, %346
  %348 = load i32, i32* @INNER_IP_TOS, align 4
  %349 = call i32 @BIT(i32 %348)
  %350 = or i32 %347, %349
  %351 = load i32, i32* @INNER_SRC_PORT, align 4
  %352 = call i32 @BIT(i32 %351)
  %353 = or i32 %350, %352
  %354 = load i32, i32* @INNER_DST_PORT, align 4
  %355 = call i32 @BIT(i32 %354)
  %356 = or i32 %353, %355
  %357 = load i32*, i32** %7, align 8
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %358, %356
  store i32 %359, i32* %357, align 4
  %360 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %11, align 8
  %361 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %360, i32 0, i32 4
  %362 = load i32*, i32** %361, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 0
  %364 = load i32, i32* %363, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %393, label %366

366:                                              ; preds = %339
  %367 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %11, align 8
  %368 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %367, i32 0, i32 4
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 1
  %371 = load i32, i32* %370, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %393, label %373

373:                                              ; preds = %366
  %374 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %11, align 8
  %375 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %374, i32 0, i32 4
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 2
  %378 = load i32, i32* %377, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %393, label %380

380:                                              ; preds = %373
  %381 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %11, align 8
  %382 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %381, i32 0, i32 4
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 3
  %385 = load i32, i32* %384, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %393, label %387

387:                                              ; preds = %380
  %388 = load i32, i32* @INNER_SRC_IP, align 4
  %389 = call i32 @BIT(i32 %388)
  %390 = load i32*, i32** %7, align 8
  %391 = load i32, i32* %390, align 4
  %392 = or i32 %391, %389
  store i32 %392, i32* %390, align 4
  br label %393

393:                                              ; preds = %387, %380, %373, %366, %339
  %394 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %11, align 8
  %395 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %394, i32 0, i32 3
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 0
  %398 = load i32, i32* %397, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %427, label %400

400:                                              ; preds = %393
  %401 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %11, align 8
  %402 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %401, i32 0, i32 3
  %403 = load i32*, i32** %402, align 8
  %404 = getelementptr inbounds i32, i32* %403, i64 1
  %405 = load i32, i32* %404, align 4
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %427, label %407

407:                                              ; preds = %400
  %408 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %11, align 8
  %409 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %408, i32 0, i32 3
  %410 = load i32*, i32** %409, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 2
  %412 = load i32, i32* %411, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %427, label %414

414:                                              ; preds = %407
  %415 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %11, align 8
  %416 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %415, i32 0, i32 3
  %417 = load i32*, i32** %416, align 8
  %418 = getelementptr inbounds i32, i32* %417, i64 3
  %419 = load i32, i32* %418, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %427, label %421

421:                                              ; preds = %414
  %422 = load i32, i32* @INNER_DST_IP, align 4
  %423 = call i32 @BIT(i32 %422)
  %424 = load i32*, i32** %7, align 8
  %425 = load i32, i32* %424, align 4
  %426 = or i32 %425, %423
  store i32 %426, i32* %424, align 4
  br label %427

427:                                              ; preds = %421, %414, %407, %400, %393
  %428 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %11, align 8
  %429 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 8
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %438, label %432

432:                                              ; preds = %427
  %433 = load i32, i32* @INNER_IP_PROTO, align 4
  %434 = call i32 @BIT(i32 %433)
  %435 = load i32*, i32** %7, align 8
  %436 = load i32, i32* %435, align 4
  %437 = or i32 %436, %434
  store i32 %437, i32* %435, align 4
  br label %438

438:                                              ; preds = %432, %427
  %439 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %11, align 8
  %440 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %446

443:                                              ; preds = %438
  %444 = load i32, i32* @EOPNOTSUPP, align 4
  %445 = sub nsw i32 0, %444
  store i32 %445, i32* %4, align 4
  br label %609

446:                                              ; preds = %438
  %447 = load %struct.ethtool_usrip6_spec*, %struct.ethtool_usrip6_spec** %11, align 8
  %448 = getelementptr inbounds %struct.ethtool_usrip6_spec, %struct.ethtool_usrip6_spec* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %454

451:                                              ; preds = %446
  %452 = load i32, i32* @EOPNOTSUPP, align 4
  %453 = sub nsw i32 0, %452
  store i32 %453, i32* %4, align 4
  br label %609

454:                                              ; preds = %446
  br label %517

455:                                              ; preds = %71
  %456 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %457 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %456, i32 0, i32 4
  %458 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %457, i32 0, i32 0
  store %struct.ethhdr* %458, %struct.ethhdr** %12, align 8
  %459 = load i32, i32* @INNER_SRC_IP, align 4
  %460 = call i32 @BIT(i32 %459)
  %461 = load i32, i32* @INNER_DST_IP, align 4
  %462 = call i32 @BIT(i32 %461)
  %463 = or i32 %460, %462
  %464 = load i32, i32* @INNER_SRC_PORT, align 4
  %465 = call i32 @BIT(i32 %464)
  %466 = or i32 %463, %465
  %467 = load i32, i32* @INNER_DST_PORT, align 4
  %468 = call i32 @BIT(i32 %467)
  %469 = or i32 %466, %468
  %470 = load i32, i32* @INNER_IP_TOS, align 4
  %471 = call i32 @BIT(i32 %470)
  %472 = or i32 %469, %471
  %473 = load i32, i32* @INNER_IP_PROTO, align 4
  %474 = call i32 @BIT(i32 %473)
  %475 = or i32 %472, %474
  %476 = load i32*, i32** %7, align 8
  %477 = load i32, i32* %476, align 4
  %478 = or i32 %477, %475
  store i32 %478, i32* %476, align 4
  %479 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %480 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 4
  %482 = call i64 @is_zero_ether_addr(i32 %481)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %490

484:                                              ; preds = %455
  %485 = load i32, i32* @INNER_SRC_MAC, align 4
  %486 = call i32 @BIT(i32 %485)
  %487 = load i32*, i32** %7, align 8
  %488 = load i32, i32* %487, align 4
  %489 = or i32 %488, %486
  store i32 %489, i32* %487, align 4
  br label %490

490:                                              ; preds = %484, %455
  %491 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %492 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %491, i32 0, i32 1
  %493 = load i32, i32* %492, align 4
  %494 = call i64 @is_zero_ether_addr(i32 %493)
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %502

496:                                              ; preds = %490
  %497 = load i32, i32* @INNER_DST_MAC, align 4
  %498 = call i32 @BIT(i32 %497)
  %499 = load i32*, i32** %7, align 8
  %500 = load i32, i32* %499, align 4
  %501 = or i32 %500, %498
  store i32 %501, i32* %499, align 4
  br label %502

502:                                              ; preds = %496, %490
  %503 = load %struct.ethhdr*, %struct.ethhdr** %12, align 8
  %504 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %503, i32 0, i32 0
  %505 = load i32, i32* %504, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %513, label %507

507:                                              ; preds = %502
  %508 = load i32, i32* @INNER_ETH_TYPE, align 4
  %509 = call i32 @BIT(i32 %508)
  %510 = load i32*, i32** %7, align 8
  %511 = load i32, i32* %510, align 4
  %512 = or i32 %511, %509
  store i32 %512, i32* %510, align 4
  br label %513

513:                                              ; preds = %507, %502
  br label %517

514:                                              ; preds = %71
  %515 = load i32, i32* @EOPNOTSUPP, align 4
  %516 = sub nsw i32 0, %515
  store i32 %516, i32* %4, align 4
  br label %609

517:                                              ; preds = %513, %454, %338, %225, %146
  %518 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %519 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %518, i32 0, i32 1
  %520 = load i32, i32* %519, align 8
  %521 = load i32, i32* @FLOW_EXT, align 4
  %522 = and i32 %520, %521
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %564

524:                                              ; preds = %517
  %525 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %526 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %525, i32 0, i32 2
  %527 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %526, i32 0, i32 3
  %528 = load i64, i64* %527, align 8
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %530, label %533

530:                                              ; preds = %524
  %531 = load i32, i32* @EOPNOTSUPP, align 4
  %532 = sub nsw i32 0, %531
  store i32 %532, i32* %4, align 4
  br label %609

533:                                              ; preds = %524
  %534 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %535 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %534, i32 0, i32 2
  %536 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %535, i32 0, i32 2
  %537 = load i32, i32* %536, align 4
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %545, label %539

539:                                              ; preds = %533
  %540 = load i32, i32* @INNER_VLAN_TAG_FST, align 4
  %541 = call i32 @BIT(i32 %540)
  %542 = load i32*, i32** %7, align 8
  %543 = load i32, i32* %542, align 4
  %544 = or i32 %543, %541
  store i32 %544, i32* %542, align 4
  br label %545

545:                                              ; preds = %539, %533
  %546 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %547 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %546, i32 0, i32 3
  %548 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %547, i32 0, i32 0
  %549 = load i64, i64* %548, align 8
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %563

551:                                              ; preds = %545
  %552 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %553 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %552, i32 0, i32 2
  %554 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %553, i32 0, i32 2
  %555 = load i32, i32* %554, align 4
  %556 = call i64 @be16_to_cpu(i32 %555)
  %557 = load i64, i64* @VLAN_N_VID, align 8
  %558 = icmp sge i64 %556, %557
  br i1 %558, label %559, label %562

559:                                              ; preds = %551
  %560 = load i32, i32* @EINVAL, align 4
  %561 = sub nsw i32 0, %560
  store i32 %561, i32* %4, align 4
  br label %609

562:                                              ; preds = %551
  br label %563

563:                                              ; preds = %562, %545
  br label %570

564:                                              ; preds = %517
  %565 = load i32, i32* @INNER_VLAN_TAG_FST, align 4
  %566 = call i32 @BIT(i32 %565)
  %567 = load i32*, i32** %7, align 8
  %568 = load i32, i32* %567, align 4
  %569 = or i32 %568, %566
  store i32 %569, i32* %567, align 4
  br label %570

570:                                              ; preds = %564, %563
  %571 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %572 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %571, i32 0, i32 1
  %573 = load i32, i32* %572, align 8
  %574 = load i32, i32* @FLOW_MAC_EXT, align 4
  %575 = and i32 %573, %574
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %577, label %608

577:                                              ; preds = %570
  %578 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %579 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %578, i32 0, i32 0
  %580 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 8
  %582 = and i32 %581, 136
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %587, label %584

584:                                              ; preds = %577
  %585 = load i32, i32* @EOPNOTSUPP, align 4
  %586 = sub nsw i32 0, %585
  store i32 %586, i32* %4, align 4
  br label %609

587:                                              ; preds = %577
  %588 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %589 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %588, i32 0, i32 2
  %590 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %589, i32 0, i32 1
  %591 = load i32, i32* %590, align 8
  %592 = call i64 @is_zero_ether_addr(i32 %591)
  %593 = icmp ne i64 %592, 0
  br i1 %593, label %594, label %600

594:                                              ; preds = %587
  %595 = load i32, i32* @INNER_DST_MAC, align 4
  %596 = call i32 @BIT(i32 %595)
  %597 = load i32*, i32** %7, align 8
  %598 = load i32, i32* %597, align 4
  %599 = or i32 %598, %596
  store i32 %599, i32* %597, align 4
  br label %607

600:                                              ; preds = %587
  %601 = load i32, i32* @INNER_DST_MAC, align 4
  %602 = call i32 @BIT(i32 %601)
  %603 = xor i32 %602, -1
  %604 = load i32*, i32** %7, align 8
  %605 = load i32, i32* %604, align 4
  %606 = and i32 %605, %603
  store i32 %606, i32* %604, align 4
  br label %607

607:                                              ; preds = %600, %594
  br label %608

608:                                              ; preds = %607, %570
  store i32 0, i32* %4, align 4
  br label %609

609:                                              ; preds = %608, %584, %559, %530, %514, %451, %443, %335, %222, %213, %63, %37, %24
  %610 = load i32, i32* %4, align 4
  ret i32 %610
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
