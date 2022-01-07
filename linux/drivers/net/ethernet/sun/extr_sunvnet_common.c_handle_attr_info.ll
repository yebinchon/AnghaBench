; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_handle_attr_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_handle_attr_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_driver_state = type { i32 }
%struct.vio_net_attr_info = type { i32, i64, i64, i32, i64, %struct.TYPE_2__, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vnet_port = type { i64, i32, i64 }

@HS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [143 x i8] c"GOT NET ATTR xmode[0x%x] atype[0x%x] addr[%llx] ackfreq[%u] plnk_updt[0x%02x] opts[0x%02x] mtu[%llu]  (rmtu[%llu]) cflags[0x%04x] lso_max[%u]\0A\00", align 1
@VIO_DRING_MODE = common dso_local global i32 0, align 4
@VIO_NEW_DRING_MODE = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i64 0, align 8
@VNET_MAXPACKET = common dso_local global i64 0, align 8
@VLAN_HLEN = common dso_local global i64 0, align 8
@VNET_LSO_IPV4_CAPAB = common dso_local global i32 0, align 4
@VNET_MAXTSO = common dso_local global i64 0, align 8
@VNET_MINTSO = common dso_local global i64 0, align 8
@VIO_TX_DRING = common dso_local global i32 0, align 4
@VNET_ADDR_ETHERMAC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"SEND NET ATTR NACK\0A\00", align 1
@VIO_SUBTYPE_NACK = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [147 x i8] c"SEND NET ATTR ACK xmode[0x%x] atype[0x%x] addr[%llx] ackfreq[%u] plnk_updt[0x%02x] opts[0x%02x] mtu[%llu] (rmtu[%llu]) cflags[0x%04x] lso_max[%u]\0A\00", align 1
@VIO_SUBTYPE_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_driver_state*, %struct.vio_net_attr_info*)* @handle_attr_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_attr_info(%struct.vio_driver_state* %0, %struct.vio_net_attr_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vio_driver_state*, align 8
  %5 = alloca %struct.vio_net_attr_info*, align 8
  %6 = alloca %struct.vnet_port*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vio_driver_state* %0, %struct.vio_driver_state** %4, align 8
  store %struct.vio_net_attr_info* %1, %struct.vio_net_attr_info** %5, align 8
  %9 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %10 = call %struct.vnet_port* @to_vnet_port(%struct.vio_driver_state* %9)
  store %struct.vnet_port* %10, %struct.vnet_port** %6, align 8
  %11 = load i32, i32* @HS, align 4
  %12 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %13 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %16 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %19 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %18, i32 0, i32 9
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %22 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %21, i32 0, i32 8
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %25 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %28 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %31 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %34 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %37 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %40 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i32, i8*, ...) @viodbg(i32 %11, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @.str, i64 0, i64 0), i32 %14, i64 %17, i64 %20, i32 %23, i32 %26, i32 %29, i64 %32, i64 %35, i32 %38, i64 %41)
  %43 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %44 = call i32 @vio_send_sid(%struct.vio_driver_state* %43)
  %45 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %46 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %49 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %8, align 4
  %51 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %52 = call i64 @vio_version_before(%struct.vio_driver_state* %51, i32 1, i32 2)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %2
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @VIO_DRING_MODE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @VIO_NEW_DRING_MODE, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %54, %2
  %61 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %62 = call i64 @vio_version_before(%struct.vio_driver_state* %61, i32 1, i32 3)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i64, i64* @ETH_FRAME_LEN, align 8
  store i64 %65, i64* %7, align 8
  br label %96

66:                                               ; preds = %60
  %67 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %68 = call i64 @vio_version_after(%struct.vio_driver_state* %67, i32 1, i32 3)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %66
  %71 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %72 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %77 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  br label %81

79:                                               ; preds = %70
  %80 = load i64, i64* @VNET_MAXPACKET, align 8
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi i64 [ %78, %75 ], [ %80, %79 ]
  store i64 %82, i64* %7, align 8
  %83 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %84 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = call i64 @min(i64 %85, i64 %86)
  store i64 %87, i64* %7, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %90 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %89, i32 0, i32 2
  store i64 %88, i64* %90, align 8
  br label %95

91:                                               ; preds = %66
  %92 = load i64, i64* @ETH_FRAME_LEN, align 8
  %93 = load i64, i64* @VLAN_HLEN, align 8
  %94 = add nsw i64 %92, %93
  store i64 %94, i64* %7, align 8
  br label %95

95:                                               ; preds = %91, %81
  br label %96

96:                                               ; preds = %95, %64
  %97 = load i64, i64* %7, align 8
  %98 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %99 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %101 = call i64 @vio_version_after_eq(%struct.vio_driver_state* %100, i32 1, i32 7)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %96
  %104 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %105 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @VNET_LSO_IPV4_CAPAB, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  %110 = xor i1 %109, true
  %111 = xor i1 %110, true
  %112 = zext i1 %111 to i32
  %113 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %114 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %120

117:                                              ; preds = %96
  %118 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %119 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %118, i32 0, i32 1
  store i32 0, i32* %119, align 8
  br label %120

120:                                              ; preds = %117, %103
  %121 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %122 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %166

125:                                              ; preds = %120
  %126 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %127 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %134, label %130

130:                                              ; preds = %125
  %131 = load i64, i64* @VNET_MAXTSO, align 8
  %132 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %133 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %130, %125
  %135 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %136 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %139 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = call i64 @min(i64 %137, i64 %140)
  %142 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %143 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %142, i32 0, i32 2
  store i64 %141, i64* %143, align 8
  %144 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %145 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @VNET_MINTSO, align 8
  %148 = icmp slt i64 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %134
  %150 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %151 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %150, i32 0, i32 1
  store i32 0, i32* %151, align 8
  %152 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %153 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %152, i32 0, i32 2
  store i64 0, i64* %153, align 8
  %154 = load i32, i32* @VNET_LSO_IPV4_CAPAB, align 4
  %155 = xor i32 %154, -1
  %156 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %157 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %149, %134
  %161 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %162 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %165 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %164, i32 0, i32 4
  store i64 %163, i64* %165, align 8
  br label %177

166:                                              ; preds = %120
  %167 = load i32, i32* @VNET_LSO_IPV4_CAPAB, align 4
  %168 = xor i32 %167, -1
  %169 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %170 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = and i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %174 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %173, i32 0, i32 4
  store i64 0, i64* %174, align 8
  %175 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %176 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %175, i32 0, i32 2
  store i64 0, i64* %176, align 8
  br label %177

177:                                              ; preds = %166, %160
  %178 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %179 = call i64 @vio_version_after_eq(%struct.vio_driver_state* %178, i32 1, i32 6)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %177
  %182 = load i32, i32* @VIO_NEW_DRING_MODE, align 4
  %183 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %184 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %183, i32 0, i32 0
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* @VIO_TX_DRING, align 4
  %186 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %187 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %186, i32 0, i32 6
  store i32 %185, i32* %187, align 8
  br label %188

188:                                              ; preds = %181, %177
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @VIO_NEW_DRING_MODE, align 4
  %191 = or i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %205

193:                                              ; preds = %188
  %194 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %195 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @VNET_ADDR_ETHERMAC, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %205, label %199

199:                                              ; preds = %193
  %200 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %201 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %200, i32 0, i32 2
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* %7, align 8
  %204 = icmp ne i64 %202, %203
  br i1 %204, label %205, label %217

205:                                              ; preds = %199, %193, %188
  %206 = load i32, i32* @HS, align 4
  %207 = call i32 (i32, i8*, ...) @viodbg(i32 %206, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %208 = load i32, i32* @VIO_SUBTYPE_NACK, align 4
  %209 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %210 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %209, i32 0, i32 5
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 0
  store i32 %208, i32* %211, align 8
  %212 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %213 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %214 = call i32 @vio_ldc_send(%struct.vio_driver_state* %212, %struct.vio_net_attr_info* %213, i32 72)
  %215 = load i32, i32* @ECONNRESET, align 4
  %216 = sub nsw i32 0, %215
  store i32 %216, i32* %3, align 4
  br label %257

217:                                              ; preds = %199
  %218 = load i32, i32* @HS, align 4
  %219 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %220 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %223 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %226 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %225, i32 0, i32 9
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %229 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %228, i32 0, i32 8
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %232 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %235 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %234, i32 0, i32 6
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %238 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %237, i32 0, i32 2
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.vnet_port*, %struct.vnet_port** %6, align 8
  %241 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %244 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %247 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %246, i32 0, i32 4
  %248 = load i64, i64* %247, align 8
  %249 = call i32 (i32, i8*, ...) @viodbg(i32 %218, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.2, i64 0, i64 0), i32 %221, i64 %224, i64 %227, i32 %230, i32 %233, i32 %236, i64 %239, i64 %242, i32 %245, i64 %248)
  %250 = load i32, i32* @VIO_SUBTYPE_ACK, align 4
  %251 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %252 = getelementptr inbounds %struct.vio_net_attr_info, %struct.vio_net_attr_info* %251, i32 0, i32 5
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 0
  store i32 %250, i32* %253, align 8
  %254 = load %struct.vio_driver_state*, %struct.vio_driver_state** %4, align 8
  %255 = load %struct.vio_net_attr_info*, %struct.vio_net_attr_info** %5, align 8
  %256 = call i32 @vio_ldc_send(%struct.vio_driver_state* %254, %struct.vio_net_attr_info* %255, i32 72)
  store i32 %256, i32* %3, align 4
  br label %257

257:                                              ; preds = %217, %205
  %258 = load i32, i32* %3, align 4
  ret i32 %258
}

declare dso_local %struct.vnet_port* @to_vnet_port(%struct.vio_driver_state*) #1

declare dso_local i32 @viodbg(i32, i8*, ...) #1

declare dso_local i32 @vio_send_sid(%struct.vio_driver_state*) #1

declare dso_local i64 @vio_version_before(%struct.vio_driver_state*, i32, i32) #1

declare dso_local i64 @vio_version_after(%struct.vio_driver_state*, i32, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @vio_version_after_eq(%struct.vio_driver_state*, i32, i32) #1

declare dso_local i32 @vio_ldc_send(%struct.vio_driver_state*, %struct.vio_net_attr_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
