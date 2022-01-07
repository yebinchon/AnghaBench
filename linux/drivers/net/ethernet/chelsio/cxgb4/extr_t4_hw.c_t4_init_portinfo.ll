; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_init_portinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_init_portinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, %struct.adapter*, i32 }
%struct.adapter = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.fw_port_cmd = type { %struct.TYPE_7__, i8*, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@FW_CAPS_UNKNOWN = common dso_local global i32 0, align 4
@FW_PARAMS_MNEM_PFVF = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_PFVF_PORT_CAPS32 = common dso_local global i32 0, align 4
@FW_CAPS32 = common dso_local global i32 0, align 4
@FW_CAPS16 = common dso_local global i32 0, align 4
@FW_PORT_CMD = common dso_local global i32 0, align 4
@FW_CMD_REQUEST_F = common dso_local global i32 0, align 4
@FW_CMD_READ_F = common dso_local global i32 0, align 4
@FW_PORT_ACTION_GET_PORT_INFO = common dso_local global i32 0, align 4
@FW_PORT_ACTION_GET_PORT_INFO32 = common dso_local global i32 0, align 4
@FW_PORT_CMD_MDIOCAP_F = common dso_local global i32 0, align 4
@FW_PORT_CMD_MDIOCAP32_F = common dso_local global i32 0, align 4
@FW_PORT_MOD_TYPE_NA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_init_portinfo(%struct.port_info* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.port_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8**, align 8
  %14 = alloca %struct.adapter*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.fw_port_cmd, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.port_info* %0, %struct.port_info** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8** %5, i8*** %13, align 8
  %29 = load %struct.port_info*, %struct.port_info** %8, align 8
  %30 = getelementptr inbounds %struct.port_info, %struct.port_info* %29, i32 0, i32 10
  %31 = load %struct.adapter*, %struct.adapter** %30, align 8
  store %struct.adapter* %31, %struct.adapter** %14, align 8
  %32 = load %struct.adapter*, %struct.adapter** %14, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %15, align 4
  store i8* null, i8** %22, align 8
  store i8* null, i8** %23, align 8
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @FW_CAPS_UNKNOWN, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %6
  %40 = load i32, i32* @FW_PARAMS_MNEM_PFVF, align 4
  %41 = call i32 @FW_PARAMS_MNEM_V(i32 %40)
  %42 = load i32, i32* @FW_PARAMS_PARAM_PFVF_PORT_CAPS32, align 4
  %43 = call i32 @FW_PARAMS_PARAM_X_V(i32 %42)
  %44 = or i32 %41, %43
  store i32 %44, i32* %25, align 4
  store i32 1, i32* %26, align 4
  %45 = load %struct.adapter*, %struct.adapter** %14, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @t4_set_params(%struct.adapter* %45, i32 %46, i32 %47, i32 %48, i32 1, i32* %25, i32* %26)
  store i32 %49, i32* %24, align 4
  %50 = load i32, i32* %24, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i32, i32* @FW_CAPS32, align 4
  br label %56

54:                                               ; preds = %39
  %55 = load i32, i32* @FW_CAPS16, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = load %struct.adapter*, %struct.adapter** %14, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  br label %62

62:                                               ; preds = %56, %6
  %63 = call i32 @memset(%struct.fw_port_cmd* %16, i32 0, i32 40)
  %64 = load i32, i32* @FW_PORT_CMD, align 4
  %65 = call i32 @FW_CMD_OP_V(i32 %64)
  %66 = load i32, i32* @FW_CMD_REQUEST_F, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @FW_CMD_READ_F, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %10, align 4
  %71 = call i32 @FW_PORT_CMD_PORTID_V(i32 %70)
  %72 = or i32 %69, %71
  %73 = call i8* @cpu_to_be32(i32 %72)
  %74 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %16, i32 0, i32 2
  store i8* %73, i8** %74, align 8
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @FW_CAPS16, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %62
  %79 = load i32, i32* @FW_PORT_ACTION_GET_PORT_INFO, align 4
  br label %82

80:                                               ; preds = %62
  %81 = load i32, i32* @FW_PORT_ACTION_GET_PORT_INFO32, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = call i32 @FW_PORT_CMD_ACTION_V(i32 %83)
  %85 = call i32 @FW_LEN16(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8 %16)
  %86 = or i32 %84, %85
  %87 = call i8* @cpu_to_be32(i32 %86)
  %88 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %16, i32 0, i32 1
  store i8* %87, i8** %88, align 8
  %89 = load %struct.port_info*, %struct.port_info** %8, align 8
  %90 = getelementptr inbounds %struct.port_info, %struct.port_info* %89, i32 0, i32 10
  %91 = load %struct.adapter*, %struct.adapter** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @t4_wr_mbox(%struct.adapter* %91, i32 %92, %struct.fw_port_cmd* %16, i32 40, %struct.fw_port_cmd* %16)
  store i32 %93, i32* %24, align 4
  %94 = load i32, i32* %24, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %82
  %97 = load i32, i32* %24, align 4
  store i32 %97, i32* %7, align 4
  br label %236

98:                                               ; preds = %82
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @FW_CAPS16, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %133

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %16, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @be32_to_cpu(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %27, align 4
  %109 = load i32, i32* %27, align 4
  %110 = call i32 @FW_PORT_CMD_PTYPE_G(i32 %109)
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %27, align 4
  %112 = load i32, i32* @FW_PORT_CMD_MDIOCAP_F, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %102
  %116 = load i32, i32* %27, align 4
  %117 = call i32 @FW_PORT_CMD_MDIOADDR_G(i32 %116)
  br label %119

118:                                              ; preds = %102
  br label %119

119:                                              ; preds = %118, %115
  %120 = phi i32 [ %117, %115 ], [ -1, %118 ]
  store i32 %120, i32* %19, align 4
  %121 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %16, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @be16_to_cpu(i32 %124)
  %126 = call i8* @fwcaps16_to_caps32(i32 %125)
  store i8* %126, i8** %20, align 8
  %127 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %16, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @be16_to_cpu(i32 %130)
  %132 = call i8* @fwcaps16_to_caps32(i32 %131)
  store i8* %132, i8** %21, align 8
  br label %162

133:                                              ; preds = %98
  %134 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %16, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i8* @be32_to_cpu(i32 %137)
  %139 = ptrtoint i8* %138 to i32
  store i32 %139, i32* %28, align 4
  %140 = load i32, i32* %28, align 4
  %141 = call i32 @FW_PORT_CMD_PORTTYPE32_G(i32 %140)
  store i32 %141, i32* %18, align 4
  %142 = load i32, i32* %28, align 4
  %143 = load i32, i32* @FW_PORT_CMD_MDIOCAP32_F, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %133
  %147 = load i32, i32* %28, align 4
  %148 = call i32 @FW_PORT_CMD_MDIOADDR32_G(i32 %147)
  br label %150

149:                                              ; preds = %133
  br label %150

150:                                              ; preds = %149, %146
  %151 = phi i32 [ %148, %146 ], [ -1, %149 ]
  store i32 %151, i32* %19, align 4
  %152 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %16, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @be32_to_cpu(i32 %155)
  store i8* %156, i8** %20, align 8
  %157 = getelementptr inbounds %struct.fw_port_cmd, %struct.fw_port_cmd* %16, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i8* @be32_to_cpu(i32 %160)
  store i8* %161, i8** %21, align 8
  br label %162

162:                                              ; preds = %150, %119
  %163 = load %struct.port_info*, %struct.port_info** %8, align 8
  %164 = getelementptr inbounds %struct.port_info, %struct.port_info* %163, i32 0, i32 10
  %165 = load %struct.adapter*, %struct.adapter** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %12, align 4
  %170 = load i8**, i8*** %13, align 8
  %171 = call i32 @t4_alloc_vi(%struct.adapter* %165, i32 %166, i32 %167, i32 %168, i32 %169, i32 1, i8** %170, i32* %17, i8** %22, i8** %23)
  store i32 %171, i32* %24, align 4
  %172 = load i32, i32* %24, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %162
  %175 = load i32, i32* %24, align 4
  store i32 %175, i32* %7, align 4
  br label %236

176:                                              ; preds = %162
  %177 = load i32, i32* %24, align 4
  %178 = load %struct.port_info*, %struct.port_info** %8, align 8
  %179 = getelementptr inbounds %struct.port_info, %struct.port_info* %178, i32 0, i32 0
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* %10, align 4
  %181 = load %struct.port_info*, %struct.port_info** %8, align 8
  %182 = getelementptr inbounds %struct.port_info, %struct.port_info* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.port_info*, %struct.port_info** %8, align 8
  %185 = getelementptr inbounds %struct.port_info, %struct.port_info* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load i32, i32* %17, align 4
  %187 = load %struct.port_info*, %struct.port_info** %8, align 8
  %188 = getelementptr inbounds %struct.port_info, %struct.port_info* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  %189 = load %struct.port_info*, %struct.port_info** %8, align 8
  %190 = getelementptr inbounds %struct.port_info, %struct.port_info* %189, i32 0, i32 10
  %191 = load %struct.adapter*, %struct.adapter** %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @t4_get_tp_e2c_map(%struct.adapter* %191, i32 %192)
  %194 = load %struct.port_info*, %struct.port_info** %8, align 8
  %195 = getelementptr inbounds %struct.port_info, %struct.port_info* %194, i32 0, i32 11
  store i32 %193, i32* %195, align 8
  %196 = load %struct.adapter*, %struct.adapter** %14, align 8
  %197 = getelementptr inbounds %struct.adapter, %struct.adapter* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %176
  %202 = load i8*, i8** %22, align 8
  %203 = load %struct.port_info*, %struct.port_info** %8, align 8
  %204 = getelementptr inbounds %struct.port_info, %struct.port_info* %203, i32 0, i32 9
  store i8* %202, i8** %204, align 8
  %205 = load i8*, i8** %23, align 8
  %206 = load %struct.port_info*, %struct.port_info** %8, align 8
  %207 = getelementptr inbounds %struct.port_info, %struct.port_info* %206, i32 0, i32 8
  store i8* %205, i8** %207, align 8
  br label %221

208:                                              ; preds = %176
  %209 = load %struct.port_info*, %struct.port_info** %8, align 8
  %210 = getelementptr inbounds %struct.port_info, %struct.port_info* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i8* @FW_VIID_VIVLD_G(i32 %211)
  %213 = load %struct.port_info*, %struct.port_info** %8, align 8
  %214 = getelementptr inbounds %struct.port_info, %struct.port_info* %213, i32 0, i32 9
  store i8* %212, i8** %214, align 8
  %215 = load %struct.port_info*, %struct.port_info** %8, align 8
  %216 = getelementptr inbounds %struct.port_info, %struct.port_info* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i8* @FW_VIID_VIN_G(i32 %217)
  %219 = load %struct.port_info*, %struct.port_info** %8, align 8
  %220 = getelementptr inbounds %struct.port_info, %struct.port_info* %219, i32 0, i32 8
  store i8* %218, i8** %220, align 8
  br label %221

221:                                              ; preds = %208, %201
  %222 = load i32, i32* %18, align 4
  %223 = load %struct.port_info*, %struct.port_info** %8, align 8
  %224 = getelementptr inbounds %struct.port_info, %struct.port_info* %223, i32 0, i32 4
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* %19, align 4
  %226 = load %struct.port_info*, %struct.port_info** %8, align 8
  %227 = getelementptr inbounds %struct.port_info, %struct.port_info* %226, i32 0, i32 5
  store i32 %225, i32* %227, align 4
  %228 = load i32, i32* @FW_PORT_MOD_TYPE_NA, align 4
  %229 = load %struct.port_info*, %struct.port_info** %8, align 8
  %230 = getelementptr inbounds %struct.port_info, %struct.port_info* %229, i32 0, i32 7
  store i32 %228, i32* %230, align 4
  %231 = load %struct.port_info*, %struct.port_info** %8, align 8
  %232 = getelementptr inbounds %struct.port_info, %struct.port_info* %231, i32 0, i32 6
  %233 = load i8*, i8** %20, align 8
  %234 = load i8*, i8** %21, align 8
  %235 = call i32 @init_link_config(i32* %232, i8* %233, i8* %234)
  store i32 0, i32* %7, align 4
  br label %236

236:                                              ; preds = %221, %174, %96
  %237 = load i32, i32* %7, align 4
  ret i32 %237
}

declare dso_local i32 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_X_V(i32) #1

declare dso_local i32 @t4_set_params(%struct.adapter*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @memset(%struct.fw_port_cmd*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @FW_CMD_OP_V(i32) #1

declare dso_local i32 @FW_PORT_CMD_PORTID_V(i32) #1

declare dso_local i32 @FW_PORT_CMD_ACTION_V(i32) #1

declare dso_local i32 @FW_LEN16(%struct.fw_port_cmd* byval(%struct.fw_port_cmd) align 8) #1

declare dso_local i32 @t4_wr_mbox(%struct.adapter*, i32, %struct.fw_port_cmd*, i32, %struct.fw_port_cmd*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @FW_PORT_CMD_PTYPE_G(i32) #1

declare dso_local i32 @FW_PORT_CMD_MDIOADDR_G(i32) #1

declare dso_local i8* @fwcaps16_to_caps32(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @FW_PORT_CMD_PORTTYPE32_G(i32) #1

declare dso_local i32 @FW_PORT_CMD_MDIOADDR32_G(i32) #1

declare dso_local i32 @t4_alloc_vi(%struct.adapter*, i32, i32, i32, i32, i32, i8**, i32*, i8**, i8**) #1

declare dso_local i32 @t4_get_tp_e2c_map(%struct.adapter*, i32) #1

declare dso_local i8* @FW_VIID_VIVLD_G(i32) #1

declare dso_local i8* @FW_VIID_VIN_G(i32) #1

declare dso_local i32 @init_link_config(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
