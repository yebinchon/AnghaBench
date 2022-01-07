; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_validate_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_validate_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ch_filter_specification = type { i64, i64, i64, %struct.TYPE_7__, %struct.TYPE_6__, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.adapter = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@FCOE_F = common dso_local global i32 0, align 4
@PORT_F = common dso_local global i32 0, align 4
@TOS_F = common dso_local global i32 0, align 4
@ETHERTYPE_F = common dso_local global i32 0, align 4
@MACMATCH_F = common dso_local global i32 0, align 4
@MPSHITTYPE_F = common dso_local global i32 0, align 4
@FRAGMENTATION_F = common dso_local global i32 0, align 4
@PROTOCOL_F = common dso_local global i32 0, align 4
@VNIC_ID_F = common dso_local global i32 0, align 4
@VLAN_F = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VNIC_F = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@FILTER_SWITCH = common dso_local global i64 0, align 8
@VLAN_REMOVE = common dso_local global i64 0, align 8
@VLAN_REWRITE = common dso_local global i64 0, align 8
@CHELSIO_T6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ch_filter_specification*)* @validate_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_filter(%struct.net_device* %0, %struct.ch_filter_specification* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ch_filter_specification*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ch_filter_specification* %1, %struct.ch_filter_specification** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.adapter* @netdev2adap(%struct.net_device* %9)
  store %struct.adapter* %10, %struct.adapter** %6, align 8
  %11 = load %struct.adapter*, %struct.adapter** %6, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %17 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.adapter*, %struct.adapter** %6, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  br label %32

26:                                               ; preds = %2
  %27 = load %struct.adapter*, %struct.adapter** %6, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  br label %32

32:                                               ; preds = %26, %20
  %33 = phi i32 [ %25, %20 ], [ %31, %26 ]
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @FCOE_F, align 4
  %36 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %37 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %41 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 13
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @unsupported(i32 %34, i32 %35, i64 %39, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %189, label %46

46:                                               ; preds = %32
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @PORT_F, align 4
  %49 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %50 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %54 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 12
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @unsupported(i32 %47, i32 %48, i64 %52, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %189, label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @TOS_F, align 4
  %62 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %63 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %67 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 11
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @unsupported(i32 %60, i32 %61, i64 %65, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %189, label %72

72:                                               ; preds = %59
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @ETHERTYPE_F, align 4
  %75 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %76 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %80 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @unsupported(i32 %73, i32 %74, i64 %78, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %189, label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @MACMATCH_F, align 4
  %88 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %89 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %93 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 9
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @unsupported(i32 %86, i32 %87, i64 %91, i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %189, label %98

98:                                               ; preds = %85
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @MPSHITTYPE_F, align 4
  %101 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %102 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %106 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @unsupported(i32 %99, i32 %100, i64 %104, i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %189, label %111

111:                                              ; preds = %98
  %112 = load i32, i32* %7, align 4
  %113 = load i32, i32* @FRAGMENTATION_F, align 4
  %114 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %115 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %114, i32 0, i32 3
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %119 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @unsupported(i32 %112, i32 %113, i64 %117, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %189, label %124

124:                                              ; preds = %111
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @PROTOCOL_F, align 4
  %127 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %128 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 7
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %132 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @unsupported(i32 %125, i32 %126, i64 %130, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %189, label %137

137:                                              ; preds = %124
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @VNIC_ID_F, align 4
  %140 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %141 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 8
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %145 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %144, i32 0, i32 4
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i64 @unsupported(i32 %138, i32 %139, i64 %143, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %189, label %150

150:                                              ; preds = %137
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @VNIC_ID_F, align 4
  %153 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %154 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 9
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %158 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @unsupported(i32 %151, i32 %152, i64 %156, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %189, label %163

163:                                              ; preds = %150
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @VNIC_ID_F, align 4
  %166 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %167 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %166, i32 0, i32 3
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 10
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %171 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 4
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @unsupported(i32 %164, i32 %165, i64 %169, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %189, label %176

176:                                              ; preds = %163
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @VLAN_F, align 4
  %179 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %180 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %179, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 11
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %184 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @unsupported(i32 %177, i32 %178, i64 %182, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %176, %163, %150, %137, %124, %111, %98, %85, %72, %59, %46, %32
  %190 = load i32, i32* @EOPNOTSUPP, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %3, align 4
  br label %395

192:                                              ; preds = %176
  %193 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %194 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 8
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %198 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = call i64 @is_field_set(i64 %196, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %192
  %204 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %205 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 9
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %209 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = call i64 @is_field_set(i64 %207, i32 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %258, label %214

214:                                              ; preds = %203, %192
  %215 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %216 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 8
  %218 = load i64, i64* %217, align 8
  %219 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %220 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %219, i32 0, i32 4
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @is_field_set(i64 %218, i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %236

225:                                              ; preds = %214
  %226 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %227 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %226, i32 0, i32 3
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 10
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %231 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = call i64 @is_field_set(i64 %229, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %258, label %236

236:                                              ; preds = %225, %214
  %237 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %238 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 9
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %242 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %241, i32 0, i32 4
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = call i64 @is_field_set(i64 %240, i32 %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %261

247:                                              ; preds = %236
  %248 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %249 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 10
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %253 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %252, i32 0, i32 4
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = call i64 @is_field_set(i64 %251, i32 %255)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %247, %225, %203
  %259 = load i32, i32* @EOPNOTSUPP, align 4
  %260 = sub nsw i32 0, %259
  store i32 %260, i32* %3, align 4
  br label %395

261:                                              ; preds = %247, %236
  %262 = load i32, i32* %8, align 4
  %263 = load i32, i32* @VNIC_F, align 4
  %264 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %265 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 8
  %267 = load i64, i64* %266, align 8
  %268 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %269 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %268, i32 0, i32 4
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = call i64 @unsupported(i32 %262, i32 %263, i64 %267, i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %290, label %274

274:                                              ; preds = %261
  %275 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %276 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %275, i32 0, i32 3
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 9
  %278 = load i64, i64* %277, align 8
  %279 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %280 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %279, i32 0, i32 4
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = call i64 @is_field_set(i64 %278, i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %274
  %286 = load i32, i32* %8, align 4
  %287 = load i32, i32* @VNIC_F, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %285, %261
  %291 = load i32, i32* @EOPNOTSUPP, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %3, align 4
  br label %395

293:                                              ; preds = %285, %274
  %294 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %295 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 12
  %297 = load i32, i32* %296, align 8
  %298 = icmp sgt i32 %297, 7
  br i1 %298, label %305, label %299

299:                                              ; preds = %293
  %300 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %301 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %300, i32 0, i32 3
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 13
  %303 = load i32, i32* %302, align 4
  %304 = icmp sgt i32 %303, 127
  br i1 %304, label %305, label %308

305:                                              ; preds = %299, %293
  %306 = load i32, i32* @ERANGE, align 4
  %307 = sub nsw i32 0, %306
  store i32 %307, i32* %3, align 4
  br label %395

308:                                              ; preds = %299
  %309 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %310 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %309, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = and i32 %312, 7
  store i32 %313, i32* %311, align 8
  %314 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %315 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %314, i32 0, i32 4
  %316 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = and i32 %317, 127
  store i32 %318, i32* %316, align 4
  %319 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %320 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @FILTER_SWITCH, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %336

324:                                              ; preds = %308
  %325 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %326 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %325, i32 0, i32 1
  %327 = load i64, i64* %326, align 8
  %328 = load %struct.adapter*, %struct.adapter** %6, align 8
  %329 = getelementptr inbounds %struct.adapter, %struct.adapter* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = icmp sge i64 %327, %331
  br i1 %332, label %333, label %336

333:                                              ; preds = %324
  %334 = load i32, i32* @ERANGE, align 4
  %335 = sub nsw i32 0, %334
  store i32 %335, i32* %3, align 4
  br label %395

336:                                              ; preds = %324, %308
  %337 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %338 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i32 0, i32 1
  %340 = load i64, i64* %339, align 8
  %341 = load %struct.adapter*, %struct.adapter** %6, align 8
  %342 = getelementptr inbounds %struct.adapter, %struct.adapter* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = icmp sge i64 %340, %344
  br i1 %345, label %346, label %349

346:                                              ; preds = %336
  %347 = load i32, i32* @ERANGE, align 4
  %348 = sub nsw i32 0, %347
  store i32 %348, i32* %3, align 4
  br label %395

349:                                              ; preds = %336
  %350 = load %struct.adapter*, %struct.adapter** %6, align 8
  %351 = getelementptr inbounds %struct.adapter, %struct.adapter* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 1
  %353 = load i32, i32* %352, align 8
  %354 = call i64 @is_t4(i32 %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %377

356:                                              ; preds = %349
  %357 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %358 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @FILTER_SWITCH, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %377

362:                                              ; preds = %356
  %363 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %364 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %363, i32 0, i32 2
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @VLAN_REMOVE, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %374, label %368

368:                                              ; preds = %362
  %369 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %370 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %369, i32 0, i32 2
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @VLAN_REWRITE, align 8
  %373 = icmp eq i64 %371, %372
  br i1 %373, label %374, label %377

374:                                              ; preds = %368, %362
  %375 = load i32, i32* @EOPNOTSUPP, align 4
  %376 = sub nsw i32 0, %375
  store i32 %376, i32* %3, align 4
  br label %395

377:                                              ; preds = %368, %356, %349
  %378 = load %struct.ch_filter_specification*, %struct.ch_filter_specification** %5, align 8
  %379 = getelementptr inbounds %struct.ch_filter_specification, %struct.ch_filter_specification* %378, i32 0, i32 3
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 10
  %381 = load i64, i64* %380, align 8
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %394

383:                                              ; preds = %377
  %384 = load %struct.adapter*, %struct.adapter** %6, align 8
  %385 = getelementptr inbounds %struct.adapter, %struct.adapter* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %385, i32 0, i32 1
  %387 = load i32, i32* %386, align 8
  %388 = call i64 @CHELSIO_CHIP_VERSION(i32 %387)
  %389 = load i64, i64* @CHELSIO_T6, align 8
  %390 = icmp slt i64 %388, %389
  br i1 %390, label %391, label %394

391:                                              ; preds = %383
  %392 = load i32, i32* @EOPNOTSUPP, align 4
  %393 = sub nsw i32 0, %392
  store i32 %393, i32* %3, align 4
  br label %395

394:                                              ; preds = %383, %377
  store i32 0, i32* %3, align 4
  br label %395

395:                                              ; preds = %394, %391, %374, %346, %333, %305, %290, %258, %189
  %396 = load i32, i32* %3, align 4
  ret i32 %396
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i64 @unsupported(i32, i32, i64, i32) #1

declare dso_local i64 @is_field_set(i64, i32) #1

declare dso_local i64 @is_t4(i32) #1

declare dso_local i64 @CHELSIO_CHIP_VERSION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
