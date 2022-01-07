; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_tcamkey_from_ip4fs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_tcamkey_from_ip4fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_rx_flow_spec = type { i32, %struct.TYPE_16__, %struct.TYPE_14__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i64, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i32, i32 }
%struct.niu_tcam_entry = type { i32*, i32* }

@TCAM_V4KEY0_CLASS_CODE_SHIFT = common dso_local global i32 0, align 4
@TCAM_V4KEY0_CLASS_CODE = common dso_local global i32 0, align 4
@TCAM_V4KEY1_L2RDCNUM_SHIFT = common dso_local global i32 0, align 4
@TCAM_V4KEY1_L2RDCNUM = common dso_local global i32 0, align 4
@TCAM_V4KEY3_SADDR_SHIFT = common dso_local global i32 0, align 4
@TCAM_V4KEY2_TOS_SHIFT = common dso_local global i32 0, align 4
@TCAM_V4KEY2_PROTO_SHIFT = common dso_local global i32 0, align 4
@TCAM_V4KEY2_PROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ethtool_rx_flow_spec*, %struct.niu_tcam_entry*, i32, i32)* @niu_get_tcamkey_from_ip4fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_get_tcamkey_from_ip4fs(%struct.ethtool_rx_flow_spec* %0, %struct.niu_tcam_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %6 = alloca %struct.niu_tcam_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ethtool_rx_flow_spec* %0, %struct.ethtool_rx_flow_spec** %5, align 8
  store %struct.niu_tcam_entry* %1, %struct.niu_tcam_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  %20 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @be32_to_cpu(i32 %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @be32_to_cpu(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %39 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @be32_to_cpu(i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @TCAM_V4KEY0_CLASS_CODE_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %48 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @TCAM_V4KEY0_CLASS_CODE, align 4
  %52 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %53 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @TCAM_V4KEY1_L2RDCNUM_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %60 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* @TCAM_V4KEY1_L2RDCNUM, align 4
  %64 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %65 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %63, i32* %67, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* @TCAM_V4KEY3_SADDR_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %72 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %77 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %75
  store i32 %81, i32* %79, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @TCAM_V4KEY3_SADDR_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %86 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %91 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 3
  %94 = load i32, i32* %93, align 4
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 4
  %96 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32, i32* @TCAM_V4KEY2_TOS_SHIFT, align 4
  %103 = shl i32 %101, %102
  %104 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %105 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %103
  store i32 %109, i32* %107, align 4
  %110 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %111 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i32, i32* @TCAM_V4KEY2_TOS_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %119 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 2
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %117
  store i32 %123, i32* %121, align 4
  %124 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %125 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  switch i32 %126, label %239 [
    i32 129, label %127
    i32 128, label %127
    i32 130, label %127
    i32 133, label %176
    i32 132, label %176
    i32 131, label %207
  ]

127:                                              ; preds = %4, %4, %4
  %128 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %129 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @be16_to_cpu(i32 %132)
  store i32 %133, i32* %16, align 4
  %134 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %135 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @be16_to_cpu(i32 %138)
  store i32 %139, i32* %18, align 4
  %140 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %141 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @be16_to_cpu(i32 %144)
  store i32 %145, i32* %17, align 4
  %146 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %147 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @be16_to_cpu(i32 %150)
  store i32 %151, i32* %19, align 4
  %152 = load i32, i32* %16, align 4
  %153 = shl i32 %152, 16
  %154 = load i32, i32* %17, align 4
  %155 = or i32 %153, %154
  %156 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %157 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 2
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %155
  store i32 %161, i32* %159, align 4
  %162 = load i32, i32* %18, align 4
  %163 = shl i32 %162, 16
  %164 = load i32, i32* %19, align 4
  %165 = or i32 %163, %164
  %166 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %167 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 2
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %165
  store i32 %171, i32* %169, align 4
  %172 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %173 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @niu_ethflow_to_l3proto(i32 %174, i64* %9)
  br label %240

176:                                              ; preds = %4, %4
  %177 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %178 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @be32_to_cpu(i32 %181)
  store i32 %182, i32* %14, align 4
  %183 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %184 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @be32_to_cpu(i32 %187)
  store i32 %188, i32* %15, align 4
  %189 = load i32, i32* %14, align 4
  %190 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %191 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %189
  store i32 %195, i32* %193, align 4
  %196 = load i32, i32* %15, align 4
  %197 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %198 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %196
  store i32 %202, i32* %200, align 4
  %203 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %204 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @niu_ethflow_to_l3proto(i32 %205, i64* %9)
  br label %240

207:                                              ; preds = %4
  %208 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %209 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @be32_to_cpu(i32 %212)
  store i32 %213, i32* %14, align 4
  %214 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %215 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @be32_to_cpu(i32 %218)
  store i32 %219, i32* %15, align 4
  %220 = load i32, i32* %14, align 4
  %221 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %222 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 2
  %225 = load i32, i32* %224, align 4
  %226 = or i32 %225, %220
  store i32 %226, i32* %224, align 4
  %227 = load i32, i32* %15, align 4
  %228 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %229 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 2
  %232 = load i32, i32* %231, align 4
  %233 = or i32 %232, %227
  store i32 %233, i32* %231, align 4
  %234 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %5, align 8
  %235 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %234, i32 0, i32 1
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  store i64 %238, i64* %9, align 8
  br label %240

239:                                              ; preds = %4
  br label %240

240:                                              ; preds = %239, %207, %176, %127
  %241 = load i64, i64* %9, align 8
  %242 = trunc i64 %241 to i32
  %243 = load i32, i32* @TCAM_V4KEY2_PROTO_SHIFT, align 4
  %244 = shl i32 %242, %243
  %245 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %246 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 2
  %249 = load i32, i32* %248, align 4
  %250 = or i32 %249, %244
  store i32 %250, i32* %248, align 4
  %251 = load i64, i64* %9, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %261

253:                                              ; preds = %240
  %254 = load i32, i32* @TCAM_V4KEY2_PROTO, align 4
  %255 = load %struct.niu_tcam_entry*, %struct.niu_tcam_entry** %6, align 8
  %256 = getelementptr inbounds %struct.niu_tcam_entry, %struct.niu_tcam_entry* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 2
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %259, %254
  store i32 %260, i32* %258, align 4
  br label %261

261:                                              ; preds = %253, %240
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @niu_ethflow_to_l3proto(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
