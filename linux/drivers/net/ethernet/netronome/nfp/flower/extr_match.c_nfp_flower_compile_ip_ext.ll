; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_ip_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_ip_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_flower_ip_ext = type { i32, i32, i32, i32 }
%struct.flow_cls_offload = type { i32 }
%struct.flow_rule = type { i32 }
%struct.flow_match_basic = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.flow_match_ip = type { %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.flow_match_tcp = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.flow_match_control = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@FLOW_DISSECTOR_KEY_BASIC = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_IP = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_TCP = common dso_local global i32 0, align 4
@TCPHDR_FIN = common dso_local global i32 0, align 4
@NFP_FL_TCP_FLAG_FIN = common dso_local global i32 0, align 4
@TCPHDR_SYN = common dso_local global i32 0, align 4
@NFP_FL_TCP_FLAG_SYN = common dso_local global i32 0, align 4
@TCPHDR_RST = common dso_local global i32 0, align 4
@NFP_FL_TCP_FLAG_RST = common dso_local global i32 0, align 4
@TCPHDR_PSH = common dso_local global i32 0, align 4
@NFP_FL_TCP_FLAG_PSH = common dso_local global i32 0, align 4
@TCPHDR_URG = common dso_local global i32 0, align 4
@NFP_FL_TCP_FLAG_URG = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_CONTROL = common dso_local global i32 0, align 4
@FLOW_DIS_IS_FRAGMENT = common dso_local global i32 0, align 4
@NFP_FL_IP_FRAGMENTED = common dso_local global i32 0, align 4
@FLOW_DIS_FIRST_FRAG = common dso_local global i32 0, align 4
@NFP_FL_IP_FRAG_FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext*, %struct.flow_cls_offload*)* @nfp_flower_compile_ip_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_compile_ip_ext(%struct.nfp_flower_ip_ext* %0, %struct.nfp_flower_ip_ext* %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca %struct.nfp_flower_ip_ext*, align 8
  %5 = alloca %struct.nfp_flower_ip_ext*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca %struct.flow_rule*, align 8
  %8 = alloca %struct.flow_match_basic, align 8
  %9 = alloca %struct.flow_match_ip, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.flow_match_tcp, align 8
  %13 = alloca %struct.flow_match_control, align 8
  store %struct.nfp_flower_ip_ext* %0, %struct.nfp_flower_ip_ext** %4, align 8
  store %struct.nfp_flower_ip_ext* %1, %struct.nfp_flower_ip_ext** %5, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %6, align 8
  %14 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %15 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %14)
  store %struct.flow_rule* %15, %struct.flow_rule** %7, align 8
  %16 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %17 = load i32, i32* @FLOW_DISSECTOR_KEY_BASIC, align 4
  %18 = call i64 @flow_rule_match_key(%struct.flow_rule* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %3
  %21 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %22 = call i32 @flow_rule_match_basic(%struct.flow_rule* %21, %struct.flow_match_basic* %8)
  %23 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %8, i32 0, i32 1
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %4, align 8
  %28 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = getelementptr inbounds %struct.flow_match_basic, %struct.flow_match_basic* %8, i32 0, i32 0
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %5, align 8
  %34 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  br label %35

35:                                               ; preds = %20, %3
  %36 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %37 = load i32, i32* @FLOW_DISSECTOR_KEY_IP, align 4
  %38 = call i64 @flow_rule_match_key(%struct.flow_rule* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %35
  %41 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %42 = call i32 @flow_rule_match_ip(%struct.flow_rule* %41, %struct.flow_match_ip* %9)
  %43 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %9, i32 0, i32 1
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %4, align 8
  %48 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %9, i32 0, i32 1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %4, align 8
  %54 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %9, i32 0, i32 0
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %5, align 8
  %60 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  %61 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %9, i32 0, i32 0
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %5, align 8
  %66 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %40, %35
  %68 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %69 = load i32, i32* @FLOW_DISSECTOR_KEY_TCP, align 4
  %70 = call i64 @flow_rule_match_key(%struct.flow_rule* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %195

72:                                               ; preds = %67
  %73 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %74 = call i32 @flow_rule_match_tcp(%struct.flow_rule* %73, %struct.flow_match_tcp* %12)
  %75 = getelementptr inbounds %struct.flow_match_tcp, %struct.flow_match_tcp* %12, i32 0, i32 1
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @be16_to_cpu(i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = getelementptr inbounds %struct.flow_match_tcp, %struct.flow_match_tcp* %12, i32 0, i32 0
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @be16_to_cpu(i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* @TCPHDR_FIN, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %72
  %90 = load i32, i32* @NFP_FL_TCP_FLAG_FIN, align 4
  %91 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %4, align 8
  %92 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %89, %72
  %96 = load i32, i32* %11, align 4
  %97 = load i32, i32* @TCPHDR_FIN, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32, i32* @NFP_FL_TCP_FLAG_FIN, align 4
  %102 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %5, align 8
  %103 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %95
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @TCPHDR_SYN, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = load i32, i32* @NFP_FL_TCP_FLAG_SYN, align 4
  %113 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %4, align 8
  %114 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %111, %106
  %118 = load i32, i32* %11, align 4
  %119 = load i32, i32* @TCPHDR_SYN, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %117
  %123 = load i32, i32* @NFP_FL_TCP_FLAG_SYN, align 4
  %124 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %5, align 8
  %125 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %122, %117
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* @TCPHDR_RST, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %128
  %134 = load i32, i32* @NFP_FL_TCP_FLAG_RST, align 4
  %135 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %4, align 8
  %136 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %128
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @TCPHDR_RST, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  %145 = load i32, i32* @NFP_FL_TCP_FLAG_RST, align 4
  %146 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %5, align 8
  %147 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  br label %150

150:                                              ; preds = %144, %139
  %151 = load i32, i32* %10, align 4
  %152 = load i32, i32* @TCPHDR_PSH, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %150
  %156 = load i32, i32* @NFP_FL_TCP_FLAG_PSH, align 4
  %157 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %4, align 8
  %158 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %155, %150
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* @TCPHDR_PSH, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load i32, i32* @NFP_FL_TCP_FLAG_PSH, align 4
  %168 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %5, align 8
  %169 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166, %161
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @TCPHDR_URG, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load i32, i32* @NFP_FL_TCP_FLAG_URG, align 4
  %179 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %4, align 8
  %180 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 4
  br label %183

183:                                              ; preds = %177, %172
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* @TCPHDR_URG, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %194

188:                                              ; preds = %183
  %189 = load i32, i32* @NFP_FL_TCP_FLAG_URG, align 4
  %190 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %5, align 8
  %191 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %189
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %188, %183
  br label %195

195:                                              ; preds = %194, %67
  %196 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %197 = load i32, i32* @FLOW_DISSECTOR_KEY_CONTROL, align 4
  %198 = call i64 @flow_rule_match_key(%struct.flow_rule* %196, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %259

200:                                              ; preds = %195
  %201 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %202 = call i32 @flow_rule_match_control(%struct.flow_rule* %201, %struct.flow_match_control* %13)
  %203 = getelementptr inbounds %struct.flow_match_control, %struct.flow_match_control* %13, i32 0, i32 1
  %204 = load %struct.TYPE_15__*, %struct.TYPE_15__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @FLOW_DIS_IS_FRAGMENT, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %200
  %211 = load i32, i32* @NFP_FL_IP_FRAGMENTED, align 4
  %212 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %4, align 8
  %213 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %211
  store i32 %215, i32* %213, align 4
  br label %216

216:                                              ; preds = %210, %200
  %217 = getelementptr inbounds %struct.flow_match_control, %struct.flow_match_control* %13, i32 0, i32 0
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @FLOW_DIS_IS_FRAGMENT, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %216
  %225 = load i32, i32* @NFP_FL_IP_FRAGMENTED, align 4
  %226 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %5, align 8
  %227 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %225
  store i32 %229, i32* %227, align 4
  br label %230

230:                                              ; preds = %224, %216
  %231 = getelementptr inbounds %struct.flow_match_control, %struct.flow_match_control* %13, i32 0, i32 1
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @FLOW_DIS_FIRST_FRAG, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %230
  %239 = load i32, i32* @NFP_FL_IP_FRAG_FIRST, align 4
  %240 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %4, align 8
  %241 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 4
  br label %244

244:                                              ; preds = %238, %230
  %245 = getelementptr inbounds %struct.flow_match_control, %struct.flow_match_control* %13, i32 0, i32 0
  %246 = load %struct.TYPE_16__*, %struct.TYPE_16__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @FLOW_DIS_FIRST_FRAG, align 4
  %250 = and i32 %248, %249
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %258

252:                                              ; preds = %244
  %253 = load i32, i32* @NFP_FL_IP_FRAG_FIRST, align 4
  %254 = load %struct.nfp_flower_ip_ext*, %struct.nfp_flower_ip_ext** %5, align 8
  %255 = getelementptr inbounds %struct.nfp_flower_ip_ext, %struct.nfp_flower_ip_ext* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 4
  br label %258

258:                                              ; preds = %252, %244
  br label %259

259:                                              ; preds = %258, %195
  ret void
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_basic(%struct.flow_rule*, %struct.flow_match_basic*) #1

declare dso_local i32 @flow_rule_match_ip(%struct.flow_rule*, %struct.flow_match_ip*) #1

declare dso_local i32 @flow_rule_match_tcp(%struct.flow_rule*, %struct.flow_match_tcp*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @flow_rule_match_control(%struct.flow_rule*, %struct.flow_match_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
