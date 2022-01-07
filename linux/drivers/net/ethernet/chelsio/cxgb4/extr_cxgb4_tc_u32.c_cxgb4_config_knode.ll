; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_u32.c_cxgb4_config_knode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_tc_u32.c_cxgb4_config_knode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgb4_match_field = type { i32 }
%struct.cxgb4_next_header = type { i64, i64, i64, i64, i32, i32, i32, %struct.cxgb4_match_field* }
%struct.net_device = type { i32 }
%struct.tc_cls_u32_offload = type { %struct.TYPE_15__, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i32, i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.adapter = type { i32, %struct.cxgb4_tc_u32_table*, %struct.TYPE_12__ }
%struct.cxgb4_tc_u32_table = type { i32, %struct.cxgb4_link* }
%struct.cxgb4_link = type { i32, i32, %struct.ch_filter_specification, %struct.cxgb4_match_field* }
%struct.ch_filter_specification = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Location %d out of range for insertion. Max: %d\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@cxgb4_ipv6_fields = common dso_local global %struct.cxgb4_match_field* null, align 8
@cxgb4_ipv4_fields = common dso_local global %struct.cxgb4_match_field* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Link handle exists for: 0x%x\0A\00", align 1
@cxgb4_ipv6_jumps = common dso_local global %struct.cxgb4_next_header* null, align 8
@cxgb4_ipv4_jumps = common dso_local global %struct.cxgb4_next_header* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_config_knode(%struct.net_device* %0, %struct.tc_cls_u32_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.tc_cls_u32_offload*, align 8
  %6 = alloca %struct.cxgb4_match_field*, align 8
  %7 = alloca %struct.cxgb4_match_field*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ch_filter_specification, align 4
  %11 = alloca %struct.cxgb4_tc_u32_table*, align 8
  %12 = alloca %struct.cxgb4_link*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.cxgb4_next_header*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.tc_cls_u32_offload* %1, %struct.tc_cls_u32_offload** %5, align 8
  store %struct.cxgb4_match_field* null, %struct.cxgb4_match_field** %7, align 8
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = call %struct.adapter* @netdev2adap(%struct.net_device* %25)
  store %struct.adapter* %26, %struct.adapter** %8, align 8
  %27 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %28 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  store i32 0, i32* %16, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @can_tc_u32_offload(%struct.net_device* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %466

37:                                               ; preds = %2
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* @ETH_P_IP, align 4
  %40 = call i64 @htons(i32 %39)
  %41 = icmp ne i64 %38, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* @ETH_P_IPV6, align 4
  %45 = call i64 @htons(i32 %44)
  %46 = icmp ne i64 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %466

50:                                               ; preds = %42, %37
  %51 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %52 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = and i32 %54, 1048575
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.adapter*, %struct.adapter** %8, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ugt i32 %56, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %50
  %63 = load %struct.adapter*, %struct.adapter** %8, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load %struct.adapter*, %struct.adapter** %8, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %65, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %70)
  %72 = load i32, i32* @ERANGE, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %466

74:                                               ; preds = %50
  %75 = load %struct.adapter*, %struct.adapter** %8, align 8
  %76 = getelementptr inbounds %struct.adapter, %struct.adapter* %75, i32 0, i32 1
  %77 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %76, align 8
  store %struct.cxgb4_tc_u32_table* %77, %struct.cxgb4_tc_u32_table** %11, align 8
  %78 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %79 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @TC_U32_USERHTID(i32 %81)
  store i32 %82, i32* %14, align 4
  %83 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %84 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @TC_U32_USERHTID(i32 %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 2048
  br i1 %89, label %90, label %99

90:                                               ; preds = %74
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %11, align 8
  %93 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sge i32 %91, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %466

99:                                               ; preds = %90, %74
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %11, align 8
  %102 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp sge i32 %100, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32, i32* @EINVAL, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %466

108:                                              ; preds = %99
  %109 = call i32 @memset(%struct.ch_filter_specification* %10, i32 0, i32 16)
  %110 = load i64, i64* %9, align 8
  %111 = load i32, i32* @ETH_P_IPV6, align 4
  %112 = call i64 @htons(i32 %111)
  %113 = icmp eq i64 %110, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %108
  %115 = load %struct.cxgb4_match_field*, %struct.cxgb4_match_field** @cxgb4_ipv6_fields, align 8
  store %struct.cxgb4_match_field* %115, %struct.cxgb4_match_field** %6, align 8
  store i32 1, i32* %16, align 4
  br label %118

116:                                              ; preds = %108
  %117 = load %struct.cxgb4_match_field*, %struct.cxgb4_match_field** @cxgb4_ipv4_fields, align 8
  store %struct.cxgb4_match_field* %117, %struct.cxgb4_match_field** %6, align 8
  store i32 0, i32* %16, align 4
  br label %118

118:                                              ; preds = %116, %114
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 2048
  br i1 %120, label %121, label %151

121:                                              ; preds = %118
  %122 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %11, align 8
  %123 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %122, i32 0, i32 1
  %124 = load %struct.cxgb4_link*, %struct.cxgb4_link** %123, align 8
  %125 = load i32, i32* %14, align 4
  %126 = sub nsw i32 %125, 1
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %124, i64 %127
  %129 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %121
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %3, align 4
  br label %466

135:                                              ; preds = %121
  %136 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %11, align 8
  %137 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %136, i32 0, i32 1
  %138 = load %struct.cxgb4_link*, %struct.cxgb4_link** %137, align 8
  %139 = load i32, i32* %14, align 4
  %140 = sub nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %138, i64 %141
  %143 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %142, i32 0, i32 3
  %144 = load %struct.cxgb4_match_field*, %struct.cxgb4_match_field** %143, align 8
  store %struct.cxgb4_match_field* %144, %struct.cxgb4_match_field** %7, align 8
  %145 = load %struct.cxgb4_match_field*, %struct.cxgb4_match_field** %7, align 8
  %146 = icmp ne %struct.cxgb4_match_field* %145, null
  br i1 %146, label %150, label %147

147:                                              ; preds = %135
  %148 = load i32, i32* @EINVAL, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %3, align 4
  br label %466

150:                                              ; preds = %135
  br label %151

151:                                              ; preds = %150, %118
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %369

154:                                              ; preds = %151
  store i32 0, i32* %19, align 4
  %155 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %11, align 8
  %156 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %155, i32 0, i32 1
  %157 = load %struct.cxgb4_link*, %struct.cxgb4_link** %156, align 8
  %158 = load i32, i32* %15, align 4
  %159 = sub nsw i32 %158, 1
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %157, i64 %160
  %162 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %154
  %166 = load %struct.adapter*, %struct.adapter** %8, align 8
  %167 = getelementptr inbounds %struct.adapter, %struct.adapter* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* %15, align 4
  %170 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %168, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %169)
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %3, align 4
  br label %466

173:                                              ; preds = %154
  %174 = load i32, i32* %16, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = load %struct.cxgb4_next_header*, %struct.cxgb4_next_header** @cxgb4_ipv6_jumps, align 8
  br label %180

178:                                              ; preds = %173
  %179 = load %struct.cxgb4_next_header*, %struct.cxgb4_next_header** @cxgb4_ipv4_jumps, align 8
  br label %180

180:                                              ; preds = %178, %176
  %181 = phi %struct.cxgb4_next_header* [ %177, %176 ], [ %179, %178 ]
  store %struct.cxgb4_next_header* %181, %struct.cxgb4_next_header** %18, align 8
  store i32 0, i32* %20, align 4
  br label %182

182:                                              ; preds = %359, %180
  %183 = load %struct.cxgb4_next_header*, %struct.cxgb4_next_header** %18, align 8
  %184 = load i32, i32* %20, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %183, i64 %185
  %187 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %186, i32 0, i32 7
  %188 = load %struct.cxgb4_match_field*, %struct.cxgb4_match_field** %187, align 8
  %189 = icmp ne %struct.cxgb4_match_field* %188, null
  br i1 %189, label %190, label %362

190:                                              ; preds = %182
  %191 = load %struct.cxgb4_next_header*, %struct.cxgb4_next_header** %18, align 8
  %192 = load i32, i32* %20, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %191, i64 %193
  %195 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %198 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = icmp ne i64 %196, %202
  br i1 %203, label %246, label %204

204:                                              ; preds = %190
  %205 = load %struct.cxgb4_next_header*, %struct.cxgb4_next_header** %18, align 8
  %206 = load i32, i32* %20, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %205, i64 %207
  %209 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %212 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %210, %216
  br i1 %217, label %246, label %218

218:                                              ; preds = %204
  %219 = load %struct.cxgb4_next_header*, %struct.cxgb4_next_header** %18, align 8
  %220 = load i32, i32* %20, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %219, i64 %221
  %223 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %226 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %224, %230
  br i1 %231, label %246, label %232

232:                                              ; preds = %218
  %233 = load %struct.cxgb4_next_header*, %struct.cxgb4_next_header** %18, align 8
  %234 = load i32, i32* %20, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %233, i64 %235
  %237 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %240 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %240, i32 0, i32 2
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %238, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %232, %218, %204, %190
  br label %359

247:                                              ; preds = %232
  store i32 0, i32* %21, align 4
  br label %248

248:                                              ; preds = %319, %247
  %249 = load i32, i32* %21, align 4
  %250 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %251 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %251, i32 0, i32 2
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = icmp ult i32 %249, %255
  br i1 %256, label %257, label %322

257:                                              ; preds = %248
  %258 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %259 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 5
  %263 = load %struct.TYPE_13__*, %struct.TYPE_13__** %262, align 8
  %264 = load i32, i32* %21, align 4
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %263, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %24, align 4
  %269 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %270 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %270, i32 0, i32 2
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 5
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %273, align 8
  %275 = load i32, i32* %21, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  store i32 %279, i32* %22, align 4
  %280 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %281 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_14__*, %struct.TYPE_14__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %283, i32 0, i32 5
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %284, align 8
  %286 = load i32, i32* %21, align 4
  %287 = zext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 4
  store i32 %290, i32* %23, align 4
  %291 = load %struct.cxgb4_next_header*, %struct.cxgb4_next_header** %18, align 8
  %292 = load i32, i32* %20, align 4
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %291, i64 %293
  %295 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %294, i32 0, i32 4
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* %24, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %318

299:                                              ; preds = %257
  %300 = load %struct.cxgb4_next_header*, %struct.cxgb4_next_header** %18, align 8
  %301 = load i32, i32* %20, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %300, i64 %302
  %304 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* %22, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %318

308:                                              ; preds = %299
  %309 = load %struct.cxgb4_next_header*, %struct.cxgb4_next_header** %18, align 8
  %310 = load i32, i32* %20, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %309, i64 %311
  %313 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %312, i32 0, i32 6
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* %23, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %318

317:                                              ; preds = %308
  store i32 1, i32* %19, align 4
  br label %322

318:                                              ; preds = %308, %299, %257
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %21, align 4
  %321 = add i32 %320, 1
  store i32 %321, i32* %21, align 4
  br label %248

322:                                              ; preds = %317, %248
  %323 = load i32, i32* %19, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %326, label %325

325:                                              ; preds = %322
  br label %359

326:                                              ; preds = %322
  %327 = load %struct.adapter*, %struct.adapter** %8, align 8
  %328 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %329 = load %struct.cxgb4_match_field*, %struct.cxgb4_match_field** %6, align 8
  %330 = call i32 @fill_match_fields(%struct.adapter* %327, %struct.ch_filter_specification* %10, %struct.tc_cls_u32_offload* %328, %struct.cxgb4_match_field* %329, i32 0)
  store i32 %330, i32* %17, align 4
  %331 = load i32, i32* %17, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %326
  br label %464

334:                                              ; preds = %326
  %335 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %11, align 8
  %336 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %335, i32 0, i32 1
  %337 = load %struct.cxgb4_link*, %struct.cxgb4_link** %336, align 8
  %338 = load i32, i32* %15, align 4
  %339 = sub nsw i32 %338, 1
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %337, i64 %340
  store %struct.cxgb4_link* %341, %struct.cxgb4_link** %12, align 8
  %342 = load %struct.cxgb4_next_header*, %struct.cxgb4_next_header** %18, align 8
  %343 = load i32, i32* %20, align 4
  %344 = zext i32 %343 to i64
  %345 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %342, i64 %344
  %346 = getelementptr inbounds %struct.cxgb4_next_header, %struct.cxgb4_next_header* %345, i32 0, i32 7
  %347 = load %struct.cxgb4_match_field*, %struct.cxgb4_match_field** %346, align 8
  %348 = load %struct.cxgb4_link*, %struct.cxgb4_link** %12, align 8
  %349 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %348, i32 0, i32 3
  store %struct.cxgb4_match_field* %347, %struct.cxgb4_match_field** %349, align 8
  %350 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %351 = getelementptr inbounds %struct.tc_cls_u32_offload, %struct.tc_cls_u32_offload* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = load %struct.cxgb4_link*, %struct.cxgb4_link** %12, align 8
  %355 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %354, i32 0, i32 0
  store i32 %353, i32* %355, align 8
  %356 = load %struct.cxgb4_link*, %struct.cxgb4_link** %12, align 8
  %357 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %356, i32 0, i32 2
  %358 = call i32 @memcpy(%struct.ch_filter_specification* %357, %struct.ch_filter_specification* %10, i32 16)
  br label %362

359:                                              ; preds = %325, %246
  %360 = load i32, i32* %20, align 4
  %361 = add i32 %360, 1
  store i32 %361, i32* %20, align 4
  br label %182

362:                                              ; preds = %334, %182
  %363 = load i32, i32* %19, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %368, label %365

365:                                              ; preds = %362
  %366 = load i32, i32* @EINVAL, align 4
  %367 = sub nsw i32 0, %366
  store i32 %367, i32* %3, align 4
  br label %466

368:                                              ; preds = %362
  store i32 0, i32* %3, align 4
  br label %466

369:                                              ; preds = %151
  %370 = load i32, i32* %14, align 4
  %371 = icmp ne i32 %370, 2048
  br i1 %371, label %372, label %401

372:                                              ; preds = %369
  %373 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %11, align 8
  %374 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %373, i32 0, i32 1
  %375 = load %struct.cxgb4_link*, %struct.cxgb4_link** %374, align 8
  %376 = load i32, i32* %14, align 4
  %377 = sub nsw i32 %376, 1
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %375, i64 %378
  %380 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %401

383:                                              ; preds = %372
  %384 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %11, align 8
  %385 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %384, i32 0, i32 1
  %386 = load %struct.cxgb4_link*, %struct.cxgb4_link** %385, align 8
  %387 = load i32, i32* %14, align 4
  %388 = sub nsw i32 %387, 1
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %386, i64 %389
  %391 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %390, i32 0, i32 2
  %392 = call i32 @memcpy(%struct.ch_filter_specification* %10, %struct.ch_filter_specification* %391, i32 16)
  %393 = load %struct.adapter*, %struct.adapter** %8, align 8
  %394 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %395 = load %struct.cxgb4_match_field*, %struct.cxgb4_match_field** %7, align 8
  %396 = call i32 @fill_match_fields(%struct.adapter* %393, %struct.ch_filter_specification* %10, %struct.tc_cls_u32_offload* %394, %struct.cxgb4_match_field* %395, i32 1)
  store i32 %396, i32* %17, align 4
  %397 = load i32, i32* %17, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %383
  br label %464

400:                                              ; preds = %383
  br label %401

401:                                              ; preds = %400, %372, %369
  %402 = load %struct.adapter*, %struct.adapter** %8, align 8
  %403 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %404 = load %struct.cxgb4_match_field*, %struct.cxgb4_match_field** %6, align 8
  %405 = call i32 @fill_match_fields(%struct.adapter* %402, %struct.ch_filter_specification* %10, %struct.tc_cls_u32_offload* %403, %struct.cxgb4_match_field* %404, i32 0)
  store i32 %405, i32* %17, align 4
  %406 = load i32, i32* %17, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %409

408:                                              ; preds = %401
  br label %464

409:                                              ; preds = %401
  %410 = load %struct.adapter*, %struct.adapter** %8, align 8
  %411 = load %struct.tc_cls_u32_offload*, %struct.tc_cls_u32_offload** %5, align 8
  %412 = call i32 @fill_action_fields(%struct.adapter* %410, %struct.ch_filter_specification* %10, %struct.tc_cls_u32_offload* %411)
  store i32 %412, i32* %17, align 4
  %413 = load i32, i32* %17, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %416

415:                                              ; preds = %409
  br label %464

416:                                              ; preds = %409
  %417 = load %struct.net_device*, %struct.net_device** %4, align 8
  %418 = call %struct.TYPE_16__* @netdev2pinfo(%struct.net_device* %417)
  %419 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %10, i32 0, i32 3
  %422 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %421, i32 0, i32 0
  store i32 %420, i32* %422, align 4
  %423 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %10, i32 0, i32 2
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 0
  store i32 -1, i32* %424, align 4
  %425 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %10, i32 0, i32 0
  store i32 1, i32* %425, align 4
  %426 = load i32, i32* %16, align 4
  %427 = icmp ne i32 %426, 0
  %428 = zext i1 %427 to i64
  %429 = select i1 %427, i32 1, i32 0
  %430 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %10, i32 0, i32 1
  store i32 %429, i32* %430, align 4
  %431 = load %struct.net_device*, %struct.net_device** %4, align 8
  %432 = load i32, i32* %13, align 4
  %433 = call i32 @cxgb4_set_filter(%struct.net_device* %431, i32 %432, %struct.ch_filter_specification* %10)
  store i32 %433, i32* %17, align 4
  %434 = load i32, i32* %17, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %436, label %437

436:                                              ; preds = %416
  br label %464

437:                                              ; preds = %416
  %438 = load i32, i32* %14, align 4
  %439 = icmp ne i32 %438, 2048
  br i1 %439, label %440, label %463

440:                                              ; preds = %437
  %441 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %11, align 8
  %442 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %441, i32 0, i32 1
  %443 = load %struct.cxgb4_link*, %struct.cxgb4_link** %442, align 8
  %444 = load i32, i32* %14, align 4
  %445 = sub nsw i32 %444, 1
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %443, i64 %446
  %448 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %463

451:                                              ; preds = %440
  %452 = load i32, i32* %13, align 4
  %453 = load %struct.cxgb4_tc_u32_table*, %struct.cxgb4_tc_u32_table** %11, align 8
  %454 = getelementptr inbounds %struct.cxgb4_tc_u32_table, %struct.cxgb4_tc_u32_table* %453, i32 0, i32 1
  %455 = load %struct.cxgb4_link*, %struct.cxgb4_link** %454, align 8
  %456 = load i32, i32* %14, align 4
  %457 = sub nsw i32 %456, 1
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %455, i64 %458
  %460 = getelementptr inbounds %struct.cxgb4_link, %struct.cxgb4_link* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = call i32 @set_bit(i32 %452, i32 %461)
  br label %463

463:                                              ; preds = %451, %440, %437
  br label %464

464:                                              ; preds = %463, %436, %415, %408, %399, %333
  %465 = load i32, i32* %17, align 4
  store i32 %465, i32* %3, align 4
  br label %466

466:                                              ; preds = %464, %368, %365, %165, %147, %132, %105, %96, %62, %47, %34
  %467 = load i32, i32* %3, align 4
  ret i32 %467
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @can_tc_u32_offload(%struct.net_device*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @TC_U32_USERHTID(i32) #1

declare dso_local i32 @memset(%struct.ch_filter_specification*, i32, i32) #1

declare dso_local i32 @fill_match_fields(%struct.adapter*, %struct.ch_filter_specification*, %struct.tc_cls_u32_offload*, %struct.cxgb4_match_field*, i32) #1

declare dso_local i32 @memcpy(%struct.ch_filter_specification*, %struct.ch_filter_specification*, i32) #1

declare dso_local i32 @fill_action_fields(%struct.adapter*, %struct.ch_filter_specification*, %struct.tc_cls_u32_offload*) #1

declare dso_local %struct.TYPE_16__* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i32 @cxgb4_set_filter(%struct.net_device*, i32, %struct.ch_filter_specification*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
