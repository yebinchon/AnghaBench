; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_convert_to_filer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_convert_to_filer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_rx_flow_spec = type { i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec }
%struct.ethtool_tcpip4_spec = type { i32 }
%struct.TYPE_6__ = type { %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec }
%struct.TYPE_5__ = type { i64 }
%struct.filer_table = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.ethtool_usrip4_spec = type { i32 }
%struct.ethhdr = type { i32 }

@FLOW_EXT = common dso_local global i32 0, align 4
@RQFPR_VLN = common dso_local global i32 0, align 4
@RQFPR_CFI = common dso_local global i32 0, align 4
@RQFPR_IPV4 = common dso_local global i32 0, align 4
@RQFPR_TCP = common dso_local global i32 0, align 4
@RQFPR_UDP = common dso_local global i32 0, align 4
@RQFCR_PID_L4P = common dso_local global i32 0, align 4
@RQFCR_PID_VID = common dso_local global i32 0, align 4
@RQFCR_PID_PRI = common dso_local global i32 0, align 4
@RQFCR_AND = common dso_local global i32 0, align 4
@RX_CLS_FLOW_DISC = common dso_local global i32 0, align 4
@RQFCR_RJE = common dso_local global i32 0, align 4
@RQFCR_CLE = common dso_local global i32 0, align 4
@MAX_FILER_CACHE_IDX = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethtool_rx_flow_spec*, %struct.filer_table*)* @gfar_convert_to_filer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_convert_to_filer(%struct.ethtool_rx_flow_spec* %0, %struct.filer_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %5 = alloca %struct.filer_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ethtool_rx_flow_spec* %0, %struct.ethtool_rx_flow_spec** %4, align 8
  store %struct.filer_table* %1, %struct.filer_table** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %16 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %14, align 4
  %18 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FLOW_EXT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %71

24:                                               ; preds = %2
  %25 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %26 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @cpu_to_be16(i32 65535)
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %24
  %32 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %33 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %31
  %38 = call i64 @cpu_to_be16(i32 65535)
  %39 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i64 %38, i64* %41, align 8
  br label %42

42:                                               ; preds = %37, %31
  %43 = load i32, i32* @RQFPR_VLN, align 4
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @RQFPR_VLN, align 4
  store i32 %44, i32* %7, align 4
  %45 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %46 = call i32 @vlan_tci_vid(%struct.ethtool_rx_flow_spec* %45)
  store i32 %46, i32* %8, align 4
  %47 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %48 = call i32 @vlan_tci_vidm(%struct.ethtool_rx_flow_spec* %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %50 = call i32 @vlan_tci_cfi(%struct.ethtool_rx_flow_spec* %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %52 = call i32 @vlan_tci_cfim(%struct.ethtool_rx_flow_spec* %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %54 = call i32 @vlan_tci_prio(%struct.ethtool_rx_flow_spec* %53)
  store i32 %54, i32* %12, align 4
  %55 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %56 = call i32 @vlan_tci_priom(%struct.ethtool_rx_flow_spec* %55)
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %42
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @RQFPR_CFI, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* @RQFPR_CFI, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %66, %42
  br label %71

71:                                               ; preds = %70, %24, %2
  %72 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %73 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @FLOW_EXT, align 4
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  switch i32 %77, label %174 [
    i32 129, label %78
    i32 128, label %99
    i32 130, label %120
    i32 131, label %140
    i32 132, label %157
  ]

78:                                               ; preds = %71
  %79 = load i32, i32* @RQFPR_IPV4, align 4
  %80 = load i32, i32* @RQFPR_TCP, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %6, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @RQFPR_IPV4, align 4
  %85 = load i32, i32* @RQFPR_TCP, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %90 = call i32 @gfar_set_parse_bits(i32 %83, i32 %88, %struct.filer_table* %89)
  %91 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %92 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %95 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %98 = call i32 @gfar_set_basic_ip(%struct.ethtool_tcpip4_spec* %93, %struct.ethtool_tcpip4_spec* %96, %struct.filer_table* %97)
  br label %175

99:                                               ; preds = %71
  %100 = load i32, i32* @RQFPR_IPV4, align 4
  %101 = load i32, i32* @RQFPR_UDP, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %6, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @RQFPR_IPV4, align 4
  %106 = load i32, i32* @RQFPR_UDP, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %111 = call i32 @gfar_set_parse_bits(i32 %104, i32 %109, %struct.filer_table* %110)
  %112 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %113 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %116 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %119 = call i32 @gfar_set_basic_ip(%struct.ethtool_tcpip4_spec* %114, %struct.ethtool_tcpip4_spec* %117, %struct.filer_table* %118)
  br label %175

120:                                              ; preds = %71
  %121 = load i32, i32* @RQFPR_IPV4, align 4
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @RQFPR_IPV4, align 4
  %125 = load i32, i32* %7, align 4
  %126 = or i32 %124, %125
  %127 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %128 = call i32 @gfar_set_parse_bits(i32 %123, i32 %126, %struct.filer_table* %127)
  %129 = load i32, i32* @RQFCR_PID_L4P, align 4
  %130 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %131 = call i32 @gfar_set_attribute(i32 132, i32 0, i32 %129, %struct.filer_table* %130)
  %132 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %133 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %132, i32 0, i32 3
  %134 = bitcast %struct.TYPE_6__* %133 to %struct.ethtool_tcpip4_spec*
  %135 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %136 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %135, i32 0, i32 2
  %137 = bitcast %struct.TYPE_7__* %136 to %struct.ethtool_tcpip4_spec*
  %138 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %139 = call i32 @gfar_set_basic_ip(%struct.ethtool_tcpip4_spec* %134, %struct.ethtool_tcpip4_spec* %137, %struct.filer_table* %138)
  br label %175

140:                                              ; preds = %71
  %141 = load i32, i32* @RQFPR_IPV4, align 4
  %142 = load i32, i32* %6, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @RQFPR_IPV4, align 4
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %144, %145
  %147 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %148 = call i32 @gfar_set_parse_bits(i32 %143, i32 %146, %struct.filer_table* %147)
  %149 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %150 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %149, i32 0, i32 3
  %151 = bitcast %struct.TYPE_6__* %150 to %struct.ethtool_usrip4_spec*
  %152 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %153 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %152, i32 0, i32 2
  %154 = bitcast %struct.TYPE_7__* %153 to %struct.ethtool_usrip4_spec*
  %155 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %156 = call i32 @gfar_set_user_ip(%struct.ethtool_usrip4_spec* %151, %struct.ethtool_usrip4_spec* %154, %struct.filer_table* %155)
  br label %175

157:                                              ; preds = %71
  %158 = load i32, i32* %6, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %164 = call i32 @gfar_set_parse_bits(i32 %161, i32 %162, %struct.filer_table* %163)
  br label %165

165:                                              ; preds = %160, %157
  %166 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %167 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %166, i32 0, i32 3
  %168 = bitcast %struct.TYPE_6__* %167 to %struct.ethhdr*
  %169 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %170 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %169, i32 0, i32 2
  %171 = bitcast %struct.TYPE_7__* %170 to %struct.ethhdr*
  %172 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %173 = call i32 @gfar_set_ether(%struct.ethhdr* %168, %struct.ethhdr* %171, %struct.filer_table* %172)
  br label %175

174:                                              ; preds = %71
  store i32 -1, i32* %3, align 4
  br label %314

175:                                              ; preds = %165, %140, %120, %99, %78
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* @RQFCR_PID_VID, align 4
  %182 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %183 = call i32 @gfar_set_attribute(i32 %179, i32 %180, i32 %181, %struct.filer_table* %182)
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* @RQFCR_PID_PRI, align 4
  %187 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %188 = call i32 @gfar_set_attribute(i32 %184, i32 %185, i32 %186, %struct.filer_table* %187)
  br label %189

189:                                              ; preds = %178, %175
  %190 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %191 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32, i32* %14, align 4
  %194 = icmp eq i32 %192, %193
  br i1 %194, label %195, label %220

195:                                              ; preds = %189
  %196 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %197 = call i32 @gfar_set_mask(i32 -1, %struct.filer_table* %196)
  %198 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %199 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %198, i32 0, i32 1
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %199, align 8
  %201 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %202 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  store i32 32, i32* %206, align 4
  %207 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %208 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %207, i32 0, i32 1
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %208, align 8
  %210 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %211 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  store i32 0, i32* %215, align 4
  %216 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %217 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %217, align 8
  br label %220

220:                                              ; preds = %195, %189
  %221 = load i32, i32* @RQFCR_AND, align 4
  %222 = xor i32 %221, -1
  %223 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %224 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %223, i32 0, i32 1
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %224, align 8
  %226 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %227 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = sub nsw i32 %228, 1
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = and i32 %233, %222
  store i32 %234, i32* %232, align 4
  %235 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %236 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @RX_CLS_FLOW_DISC, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %254

240:                                              ; preds = %220
  %241 = load i32, i32* @RQFCR_RJE, align 4
  %242 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %243 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %242, i32 0, i32 1
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %243, align 8
  %245 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %246 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = sub nsw i32 %247, 1
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %252, %241
  store i32 %253, i32* %251, align 4
  br label %271

254:                                              ; preds = %220
  %255 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %4, align 8
  %256 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = shl i32 %257, 10
  %259 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %260 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %259, i32 0, i32 1
  %261 = load %struct.TYPE_8__*, %struct.TYPE_8__** %260, align 8
  %262 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %263 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = sub nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %269, %258
  store i32 %270, i32* %268, align 4
  br label %271

271:                                              ; preds = %254, %240
  %272 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %273 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* %14, align 4
  %276 = add nsw i32 %275, 2
  %277 = icmp sgt i32 %274, %276
  br i1 %277, label %278, label %303

278:                                              ; preds = %271
  %279 = load i32, i32* @RQFCR_CLE, align 4
  %280 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %281 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %280, i32 0, i32 1
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %281, align 8
  %283 = load i32, i32* %14, align 4
  %284 = add nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = or i32 %288, %279
  store i32 %289, i32* %287, align 4
  %290 = load i32, i32* @RQFCR_CLE, align 4
  %291 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %292 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %291, i32 0, i32 1
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %292, align 8
  %294 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %295 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = sub nsw i32 %296, 1
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = or i32 %301, %290
  store i32 %302, i32* %300, align 4
  br label %303

303:                                              ; preds = %278, %271
  %304 = load %struct.filer_table*, %struct.filer_table** %5, align 8
  %305 = getelementptr inbounds %struct.filer_table, %struct.filer_table* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @MAX_FILER_CACHE_IDX, align 4
  %308 = sub nsw i32 %307, 1
  %309 = icmp sgt i32 %306, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %303
  %311 = load i32, i32* @EBUSY, align 4
  %312 = sub nsw i32 0, %311
  store i32 %312, i32* %3, align 4
  br label %314

313:                                              ; preds = %303
  store i32 0, i32* %3, align 4
  br label %314

314:                                              ; preds = %313, %310, %174
  %315 = load i32, i32* %3, align 4
  ret i32 %315
}

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @vlan_tci_vid(%struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @vlan_tci_vidm(%struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @vlan_tci_cfi(%struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @vlan_tci_cfim(%struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @vlan_tci_prio(%struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @vlan_tci_priom(%struct.ethtool_rx_flow_spec*) #1

declare dso_local i32 @gfar_set_parse_bits(i32, i32, %struct.filer_table*) #1

declare dso_local i32 @gfar_set_basic_ip(%struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec*, %struct.filer_table*) #1

declare dso_local i32 @gfar_set_attribute(i32, i32, i32, %struct.filer_table*) #1

declare dso_local i32 @gfar_set_user_ip(%struct.ethtool_usrip4_spec*, %struct.ethtool_usrip4_spec*, %struct.filer_table*) #1

declare dso_local i32 @gfar_set_ether(%struct.ethhdr*, %struct.ethhdr*, %struct.filer_table*) #1

declare dso_local i32 @gfar_set_mask(i32, %struct.filer_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
