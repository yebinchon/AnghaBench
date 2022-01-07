; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmi_wwan_bind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_qmi_wwan.c_qmi_wwan_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_10__ = type { i32*, i32**, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.usb_interface = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.usb_interface_descriptor, i32* }
%struct.usb_interface_descriptor = type { i64 }
%struct.usb_cdc_union_desc = type { i64, i32 }
%struct.usb_cdc_ether_desc = type { i32, i64 }
%struct.usb_driver = type { i32 }
%struct.qmi_wwan_state = type { %struct.usb_interface*, %struct.usb_interface* }
%struct.usb_cdc_parsed_header = type { %struct.usb_cdc_ether_desc*, %struct.usb_cdc_union_desc* }

@.str = private unnamed_addr constant [38 x i8] c"bogus CDC Union: master=%u, slave=%u\0A\00", align 1
@QMI_WWAN_QUIRK_DTR = common dso_local global i32 0, align 4
@default_modem_addr = common dso_local global i32 0, align 4
@buggy_fw_addr = common dso_local global i32 0, align 4
@qmi_wwan_netdev_ops = common dso_local global i32 0, align 4
@qmi_wwan_sysfs_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.usb_interface*)* @qmi_wwan_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmi_wwan_bind(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_interface_descriptor*, align 8
  %9 = alloca %struct.usb_cdc_union_desc*, align 8
  %10 = alloca %struct.usb_cdc_ether_desc*, align 8
  %11 = alloca %struct.usb_driver*, align 8
  %12 = alloca %struct.qmi_wwan_state*, align 8
  %13 = alloca %struct.usb_cdc_parsed_header, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  store i32 -1, i32* %5, align 4
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %6, align 8
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  store %struct.usb_interface_descriptor* %27, %struct.usb_interface_descriptor** %8, align 8
  %28 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %29 = call %struct.usb_driver* @driver_of(%struct.usb_interface* %28)
  store %struct.usb_driver* %29, %struct.usb_driver** %11, align 8
  %30 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %31 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %30, i32 0, i32 4
  %32 = bitcast i32* %31 to i8*
  %33 = bitcast i8* %32 to %struct.qmi_wwan_state*
  store %struct.qmi_wwan_state* %33, %struct.qmi_wwan_state** %12, align 8
  %34 = call i32 @BUILD_BUG_ON(i32 1)
  %35 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %36 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %12, align 8
  %37 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %36, i32 0, i32 1
  store %struct.usb_interface* %35, %struct.usb_interface** %37, align 8
  %38 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %39 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %12, align 8
  %40 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %39, i32 0, i32 0
  store %struct.usb_interface* %38, %struct.usb_interface** %40, align 8
  %41 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @cdc_parse_cdc_header(%struct.usb_cdc_parsed_header* %13, %struct.usb_interface* %41, i32* %42, i32 %43)
  %45 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %13, i32 0, i32 1
  %46 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %45, align 8
  store %struct.usb_cdc_union_desc* %46, %struct.usb_cdc_union_desc** %9, align 8
  %47 = getelementptr inbounds %struct.usb_cdc_parsed_header, %struct.usb_cdc_parsed_header* %13, i32 0, i32 0
  %48 = load %struct.usb_cdc_ether_desc*, %struct.usb_cdc_ether_desc** %47, align 8
  store %struct.usb_cdc_ether_desc* %48, %struct.usb_cdc_ether_desc** %10, align 8
  %49 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %9, align 8
  %50 = icmp ne %struct.usb_cdc_union_desc* %49, null
  br i1 %50, label %51, label %87

51:                                               ; preds = %2
  %52 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %53 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %52, i32 0, i32 2
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %9, align 8
  %56 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.usb_interface* @usb_ifnum_to_if(%struct.TYPE_9__* %54, i32 %57)
  %59 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %12, align 8
  %60 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %59, i32 0, i32 0
  store %struct.usb_interface* %58, %struct.usb_interface** %60, align 8
  %61 = load %struct.usb_interface_descriptor*, %struct.usb_interface_descriptor** %8, align 8
  %62 = getelementptr inbounds %struct.usb_interface_descriptor, %struct.usb_interface_descriptor* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %9, align 8
  %65 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %51
  %69 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %12, align 8
  %70 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %69, i32 0, i32 0
  %71 = load %struct.usb_interface*, %struct.usb_interface** %70, align 8
  %72 = icmp ne %struct.usb_interface* %71, null
  br i1 %72, label %86, label %73

73:                                               ; preds = %68, %51
  %74 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %75 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %74, i32 0, i32 0
  %76 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %9, align 8
  %77 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.usb_cdc_union_desc*, %struct.usb_cdc_union_desc** %9, align 8
  %80 = getelementptr inbounds %struct.usb_cdc_union_desc, %struct.usb_cdc_union_desc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @dev_err(i32* %75, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %78, i32 %81)
  store %struct.usb_cdc_union_desc* null, %struct.usb_cdc_union_desc** %9, align 8
  %83 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %84 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %12, align 8
  %85 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %84, i32 0, i32 0
  store %struct.usb_interface* %83, %struct.usb_interface** %85, align 8
  br label %86

86:                                               ; preds = %73, %68
  br label %87

87:                                               ; preds = %86, %2
  %88 = load %struct.usb_cdc_ether_desc*, %struct.usb_cdc_ether_desc** %10, align 8
  %89 = icmp ne %struct.usb_cdc_ether_desc* %88, null
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = load %struct.usb_cdc_ether_desc*, %struct.usb_cdc_ether_desc** %10, align 8
  %92 = getelementptr inbounds %struct.usb_cdc_ether_desc, %struct.usb_cdc_ether_desc* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load %struct.usb_cdc_ether_desc*, %struct.usb_cdc_ether_desc** %10, align 8
  %97 = getelementptr inbounds %struct.usb_cdc_ether_desc, %struct.usb_cdc_ether_desc* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @le16_to_cpu(i64 %98)
  %100 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %101 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %103 = load %struct.usb_cdc_ether_desc*, %struct.usb_cdc_ether_desc** %10, align 8
  %104 = getelementptr inbounds %struct.usb_cdc_ether_desc, %struct.usb_cdc_ether_desc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @usbnet_get_ethernet_addr(%struct.usbnet* %102, i32 %105)
  br label %107

107:                                              ; preds = %95, %90, %87
  %108 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %12, align 8
  %109 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %108, i32 0, i32 1
  %110 = load %struct.usb_interface*, %struct.usb_interface** %109, align 8
  %111 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %12, align 8
  %112 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %111, i32 0, i32 0
  %113 = load %struct.usb_interface*, %struct.usb_interface** %112, align 8
  %114 = icmp ne %struct.usb_interface* %110, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %107
  %116 = load %struct.usb_driver*, %struct.usb_driver** %11, align 8
  %117 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %12, align 8
  %118 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %117, i32 0, i32 0
  %119 = load %struct.usb_interface*, %struct.usb_interface** %118, align 8
  %120 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %121 = call i32 @usb_driver_claim_interface(%struct.usb_driver* %116, %struct.usb_interface* %119, %struct.usbnet* %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %231

125:                                              ; preds = %115
  br label %126

126:                                              ; preds = %125, %107
  %127 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %128 = call i32 @qmi_wwan_register_subdriver(%struct.usbnet* %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %149

131:                                              ; preds = %126
  %132 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %12, align 8
  %133 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %132, i32 0, i32 1
  %134 = load %struct.usb_interface*, %struct.usb_interface** %133, align 8
  %135 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %12, align 8
  %136 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %135, i32 0, i32 0
  %137 = load %struct.usb_interface*, %struct.usb_interface** %136, align 8
  %138 = icmp ne %struct.usb_interface* %134, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %131
  %140 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %12, align 8
  %141 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %140, i32 0, i32 0
  %142 = load %struct.usb_interface*, %struct.usb_interface** %141, align 8
  %143 = call i32 @usb_set_intfdata(%struct.usb_interface* %142, i32* null)
  %144 = load %struct.usb_driver*, %struct.usb_driver** %11, align 8
  %145 = load %struct.qmi_wwan_state*, %struct.qmi_wwan_state** %12, align 8
  %146 = getelementptr inbounds %struct.qmi_wwan_state, %struct.qmi_wwan_state* %145, i32 0, i32 0
  %147 = load %struct.usb_interface*, %struct.usb_interface** %146, align 8
  %148 = call i32 @usb_driver_release_interface(%struct.usb_driver* %144, %struct.usb_interface* %147)
  br label %149

149:                                              ; preds = %139, %131, %126
  %150 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %151 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %150, i32 0, i32 3
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @QMI_WWAN_QUIRK_DTR, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %167, label %158

158:                                              ; preds = %149
  %159 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %160 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %159, i32 0, i32 2
  %161 = load %struct.TYPE_9__*, %struct.TYPE_9__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @le16_to_cpu(i64 %164)
  %166 = icmp sge i32 %165, 513
  br i1 %166, label %167, label %172

167:                                              ; preds = %158, %149
  %168 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %169 = call i32 @qmi_wwan_manage_power(%struct.usbnet* %168, i32 1)
  %170 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %171 = call i32 @qmi_wwan_change_dtr(%struct.usbnet* %170, i32 1)
  br label %172

172:                                              ; preds = %167, %158
  %173 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %174 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %173, i32 0, i32 1
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* @default_modem_addr, align 4
  %179 = call i64 @ether_addr_equal(i32* %177, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %190, label %181

181:                                              ; preds = %172
  %182 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %183 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %182, i32 0, i32 1
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i32, i32* @buggy_fw_addr, align 4
  %188 = call i64 @ether_addr_equal(i32* %186, i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %181, %172
  %191 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %192 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %191, i32 0, i32 1
  %193 = load %struct.TYPE_10__*, %struct.TYPE_10__** %192, align 8
  %194 = call i32 @eth_hw_addr_random(%struct.TYPE_10__* %193)
  br label %195

195:                                              ; preds = %190, %181
  %196 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %197 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %196, i32 0, i32 1
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = call i64 @possibly_iphdr(i32* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %220

203:                                              ; preds = %195
  %204 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %205 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %204, i32 0, i32 1
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, 2
  store i32 %211, i32* %209, align 4
  %212 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %213 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %212, i32 0, i32 1
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, 191
  store i32 %219, i32* %217, align 4
  br label %220

220:                                              ; preds = %203, %195
  %221 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %222 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %221, i32 0, i32 1
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 2
  store i32* @qmi_wwan_netdev_ops, i32** %224, align 8
  %225 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %226 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %225, i32 0, i32 1
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 1
  %229 = load i32**, i32*** %228, align 8
  %230 = getelementptr inbounds i32*, i32** %229, i64 0
  store i32* @qmi_wwan_sysfs_attr_group, i32** %230, align 8
  br label %231

231:                                              ; preds = %220, %124
  %232 = load i32, i32* %5, align 4
  ret i32 %232
}

declare dso_local %struct.usb_driver* @driver_of(%struct.usb_interface*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @cdc_parse_cdc_header(%struct.usb_cdc_parsed_header*, %struct.usb_interface*, i32*, i32) #1

declare dso_local %struct.usb_interface* @usb_ifnum_to_if(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i32) #1

declare dso_local i32 @le16_to_cpu(i64) #1

declare dso_local i32 @usbnet_get_ethernet_addr(%struct.usbnet*, i32) #1

declare dso_local i32 @usb_driver_claim_interface(%struct.usb_driver*, %struct.usb_interface*, %struct.usbnet*) #1

declare dso_local i32 @qmi_wwan_register_subdriver(%struct.usbnet*) #1

declare dso_local i32 @usb_set_intfdata(%struct.usb_interface*, i32*) #1

declare dso_local i32 @usb_driver_release_interface(%struct.usb_driver*, %struct.usb_interface*) #1

declare dso_local i32 @qmi_wwan_manage_power(%struct.usbnet*, i32) #1

declare dso_local i32 @qmi_wwan_change_dtr(%struct.usbnet*, i32) #1

declare dso_local i64 @ether_addr_equal(i32*, i32) #1

declare dso_local i32 @eth_hw_addr_random(%struct.TYPE_10__*) #1

declare dso_local i64 @possibly_iphdr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
