; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.s2io_nic = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.stat_block* }
%struct.stat_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.xpakStat, %struct.swStat }
%struct.xpakStat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.swStat = type { i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@XFRAME_II_DEVICE = common dso_local global i64 0, align 8
@MAX_RX_RINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @s2io_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2io_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.s2io_nic*, align 8
  %10 = alloca %struct.stat_block*, align 8
  %11 = alloca %struct.swStat*, align 8
  %12 = alloca %struct.xpakStat*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.s2io_nic* @netdev_priv(%struct.net_device* %15)
  store %struct.s2io_nic* %16, %struct.s2io_nic** %9, align 8
  %17 = load %struct.s2io_nic*, %struct.s2io_nic** %9, align 8
  %18 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.stat_block*, %struct.stat_block** %19, align 8
  store %struct.stat_block* %20, %struct.stat_block** %10, align 8
  %21 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %22 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %21, i32 0, i32 144
  store %struct.swStat* %22, %struct.swStat** %11, align 8
  %23 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %24 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %23, i32 0, i32 143
  store %struct.xpakStat* %24, %struct.xpakStat** %12, align 8
  %25 = load %struct.s2io_nic*, %struct.s2io_nic** %9, align 8
  %26 = call i32 @s2io_updt_stats(%struct.s2io_nic* %25)
  %27 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %28 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %27, i32 0, i32 142
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = shl i32 %30, 32
  %32 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %33 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %32, i32 0, i32 141
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = or i32 %31, %35
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  %40 = sext i32 %38 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32 %36, i32* %41, align 4
  %42 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %43 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %42, i32 0, i32 140
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = shl i32 %45, 32
  %47 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %48 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %47, i32 0, i32 139
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  %51 = or i32 %46, %50
  %52 = load i32*, i32** %6, align 8
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  store i32 %51, i32* %56, align 4
  %57 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %58 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %57, i32 0, i32 138
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @le64_to_cpu(i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 %60, i32* %65, align 4
  %66 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %67 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %66, i32 0, i32 137
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le32_to_cpu(i32 %68)
  %70 = shl i32 %69, 32
  %71 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %72 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %71, i32 0, i32 136
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @le32_to_cpu(i32 %73)
  %75 = or i32 %70, %74
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  %79 = sext i32 %77 to i64
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  store i32 %75, i32* %80, align 4
  %81 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %82 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %81, i32 0, i32 135
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le32_to_cpu(i32 %83)
  %85 = shl i32 %84, 32
  %86 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %87 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %86, i32 0, i32 134
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @le32_to_cpu(i32 %88)
  %90 = or i32 %85, %89
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %90, i32* %95, align 4
  %96 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %97 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %96, i32 0, i32 133
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le64_to_cpu(i32 %98)
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32 %99, i32* %104, align 4
  %105 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %106 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %105, i32 0, i32 132
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @le32_to_cpu(i32 %107)
  %109 = shl i32 %108, 32
  %110 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %111 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %110, i32 0, i32 131
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le32_to_cpu(i32 %112)
  %114 = or i32 %109, %113
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  %118 = sext i32 %116 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  store i32 %114, i32* %119, align 4
  %120 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %121 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %120, i32 0, i32 130
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @le32_to_cpu(i32 %122)
  %124 = shl i32 %123, 32
  %125 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %126 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %125, i32 0, i32 129
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le32_to_cpu(i32 %127)
  %129 = or i32 %124, %128
  %130 = load i32*, i32** %6, align 8
  %131 = load i32, i32* %7, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %7, align 4
  %133 = sext i32 %131 to i64
  %134 = getelementptr inbounds i32, i32* %130, i64 %133
  store i32 %129, i32* %134, align 4
  %135 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %136 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %135, i32 0, i32 128
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @le32_to_cpu(i32 %137)
  %139 = shl i32 %138, 32
  %140 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %141 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %140, i32 0, i32 127
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @le32_to_cpu(i32 %142)
  %144 = or i32 %139, %143
  %145 = load i32*, i32** %6, align 8
  %146 = load i32, i32* %7, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %7, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  store i32 %144, i32* %149, align 4
  %150 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %151 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %150, i32 0, i32 126
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @le32_to_cpu(i32 %152)
  %154 = shl i32 %153, 32
  %155 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %156 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %155, i32 0, i32 125
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le32_to_cpu(i32 %157)
  %159 = or i32 %154, %158
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  store i32 %159, i32* %164, align 4
  %165 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %166 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %165, i32 0, i32 124
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @le64_to_cpu(i32 %167)
  %169 = load i32*, i32** %6, align 8
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  store i32 %168, i32* %173, align 4
  %174 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %175 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %174, i32 0, i32 123
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @le64_to_cpu(i32 %176)
  %178 = load i32*, i32** %6, align 8
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %7, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  store i32 %177, i32* %182, align 4
  %183 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %184 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %183, i32 0, i32 122
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @le32_to_cpu(i32 %185)
  %187 = shl i32 %186, 32
  %188 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %189 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %188, i32 0, i32 121
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @le32_to_cpu(i32 %190)
  %192 = or i32 %187, %191
  %193 = load i32*, i32** %6, align 8
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %7, align 4
  %196 = sext i32 %194 to i64
  %197 = getelementptr inbounds i32, i32* %193, i64 %196
  store i32 %192, i32* %197, align 4
  %198 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %199 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %198, i32 0, i32 120
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @le32_to_cpu(i32 %200)
  %202 = shl i32 %201, 32
  %203 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %204 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %203, i32 0, i32 119
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @le32_to_cpu(i32 %205)
  %207 = or i32 %202, %206
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %7, align 4
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  store i32 %207, i32* %212, align 4
  %213 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %214 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %213, i32 0, i32 118
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @le32_to_cpu(i32 %215)
  %217 = shl i32 %216, 32
  %218 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %219 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %218, i32 0, i32 117
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @le32_to_cpu(i32 %220)
  %222 = or i32 %217, %221
  %223 = load i32*, i32** %6, align 8
  %224 = load i32, i32* %7, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %7, align 4
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  store i32 %222, i32* %227, align 4
  %228 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %229 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %228, i32 0, i32 116
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @le32_to_cpu(i32 %230)
  %232 = shl i32 %231, 32
  %233 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %234 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %233, i32 0, i32 115
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @le32_to_cpu(i32 %235)
  %237 = or i32 %232, %236
  %238 = load i32*, i32** %6, align 8
  %239 = load i32, i32* %7, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %7, align 4
  %241 = sext i32 %239 to i64
  %242 = getelementptr inbounds i32, i32* %238, i64 %241
  store i32 %237, i32* %242, align 4
  %243 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %244 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %243, i32 0, i32 114
  %245 = load i32, i32* %244, align 8
  %246 = call i32 @le64_to_cpu(i32 %245)
  %247 = load i32*, i32** %6, align 8
  %248 = load i32, i32* %7, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %7, align 4
  %250 = sext i32 %248 to i64
  %251 = getelementptr inbounds i32, i32* %247, i64 %250
  store i32 %246, i32* %251, align 4
  %252 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %253 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %252, i32 0, i32 113
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @le32_to_cpu(i32 %254)
  %256 = shl i32 %255, 32
  %257 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %258 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %257, i32 0, i32 112
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @le32_to_cpu(i32 %259)
  %261 = or i32 %256, %260
  %262 = load i32*, i32** %6, align 8
  %263 = load i32, i32* %7, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %7, align 4
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds i32, i32* %262, i64 %265
  store i32 %261, i32* %266, align 4
  %267 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %268 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %267, i32 0, i32 111
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @le32_to_cpu(i32 %269)
  %271 = shl i32 %270, 32
  %272 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %273 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %272, i32 0, i32 110
  %274 = load i32, i32* %273, align 8
  %275 = call i32 @le32_to_cpu(i32 %274)
  %276 = or i32 %271, %275
  %277 = load i32*, i32** %6, align 8
  %278 = load i32, i32* %7, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %7, align 4
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i32, i32* %277, i64 %280
  store i32 %276, i32* %281, align 4
  %282 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %283 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %282, i32 0, i32 109
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @le32_to_cpu(i32 %284)
  %286 = shl i32 %285, 32
  %287 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %288 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %287, i32 0, i32 108
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @le32_to_cpu(i32 %289)
  %291 = or i32 %286, %290
  %292 = load i32*, i32** %6, align 8
  %293 = load i32, i32* %7, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %7, align 4
  %295 = sext i32 %293 to i64
  %296 = getelementptr inbounds i32, i32* %292, i64 %295
  store i32 %291, i32* %296, align 4
  %297 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %298 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %297, i32 0, i32 107
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @le64_to_cpu(i32 %299)
  %301 = load i32*, i32** %6, align 8
  %302 = load i32, i32* %7, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %7, align 4
  %304 = sext i32 %302 to i64
  %305 = getelementptr inbounds i32, i32* %301, i64 %304
  store i32 %300, i32* %305, align 4
  %306 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %307 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %306, i32 0, i32 106
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @le64_to_cpu(i32 %308)
  %310 = load i32*, i32** %6, align 8
  %311 = load i32, i32* %7, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %7, align 4
  %313 = sext i32 %311 to i64
  %314 = getelementptr inbounds i32, i32* %310, i64 %313
  store i32 %309, i32* %314, align 4
  %315 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %316 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %315, i32 0, i32 105
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @le32_to_cpu(i32 %317)
  %319 = shl i32 %318, 32
  %320 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %321 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %320, i32 0, i32 104
  %322 = load i32, i32* %321, align 8
  %323 = call i32 @le32_to_cpu(i32 %322)
  %324 = or i32 %319, %323
  %325 = load i32*, i32** %6, align 8
  %326 = load i32, i32* %7, align 4
  %327 = add nsw i32 %326, 1
  store i32 %327, i32* %7, align 4
  %328 = sext i32 %326 to i64
  %329 = getelementptr inbounds i32, i32* %325, i64 %328
  store i32 %324, i32* %329, align 4
  %330 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %331 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %330, i32 0, i32 103
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @le32_to_cpu(i32 %332)
  %334 = shl i32 %333, 32
  %335 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %336 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %335, i32 0, i32 102
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @le32_to_cpu(i32 %337)
  %339 = or i32 %334, %338
  %340 = load i32*, i32** %6, align 8
  %341 = load i32, i32* %7, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %7, align 4
  %343 = sext i32 %341 to i64
  %344 = getelementptr inbounds i32, i32* %340, i64 %343
  store i32 %339, i32* %344, align 4
  %345 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %346 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %345, i32 0, i32 101
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @le32_to_cpu(i32 %347)
  %349 = load i32*, i32** %6, align 8
  %350 = load i32, i32* %7, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %7, align 4
  %352 = sext i32 %350 to i64
  %353 = getelementptr inbounds i32, i32* %349, i64 %352
  store i32 %348, i32* %353, align 4
  %354 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %355 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %354, i32 0, i32 100
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @le32_to_cpu(i32 %356)
  %358 = load i32*, i32** %6, align 8
  %359 = load i32, i32* %7, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %7, align 4
  %361 = sext i32 %359 to i64
  %362 = getelementptr inbounds i32, i32* %358, i64 %361
  store i32 %357, i32* %362, align 4
  %363 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %364 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %363, i32 0, i32 99
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @le64_to_cpu(i32 %365)
  %367 = load i32*, i32** %6, align 8
  %368 = load i32, i32* %7, align 4
  %369 = add nsw i32 %368, 1
  store i32 %369, i32* %7, align 4
  %370 = sext i32 %368 to i64
  %371 = getelementptr inbounds i32, i32* %367, i64 %370
  store i32 %366, i32* %371, align 4
  %372 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %373 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %372, i32 0, i32 98
  %374 = load i32, i32* %373, align 8
  %375 = call i32 @le64_to_cpu(i32 %374)
  %376 = load i32*, i32** %6, align 8
  %377 = load i32, i32* %7, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %7, align 4
  %379 = sext i32 %377 to i64
  %380 = getelementptr inbounds i32, i32* %376, i64 %379
  store i32 %375, i32* %380, align 4
  %381 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %382 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %381, i32 0, i32 97
  %383 = load i32, i32* %382, align 4
  %384 = call i32 @le64_to_cpu(i32 %383)
  %385 = load i32*, i32** %6, align 8
  %386 = load i32, i32* %7, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %7, align 4
  %388 = sext i32 %386 to i64
  %389 = getelementptr inbounds i32, i32* %385, i64 %388
  store i32 %384, i32* %389, align 4
  %390 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %391 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %390, i32 0, i32 96
  %392 = load i32, i32* %391, align 8
  %393 = call i32 @le32_to_cpu(i32 %392)
  %394 = shl i32 %393, 32
  %395 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %396 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %395, i32 0, i32 95
  %397 = load i32, i32* %396, align 4
  %398 = call i32 @le32_to_cpu(i32 %397)
  %399 = or i32 %394, %398
  %400 = load i32*, i32** %6, align 8
  %401 = load i32, i32* %7, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %7, align 4
  %403 = sext i32 %401 to i64
  %404 = getelementptr inbounds i32, i32* %400, i64 %403
  store i32 %399, i32* %404, align 4
  %405 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %406 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %405, i32 0, i32 94
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @le32_to_cpu(i32 %407)
  %409 = shl i32 %408, 32
  %410 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %411 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %410, i32 0, i32 93
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @le32_to_cpu(i32 %412)
  %414 = or i32 %409, %413
  %415 = load i32*, i32** %6, align 8
  %416 = load i32, i32* %7, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %7, align 4
  %418 = sext i32 %416 to i64
  %419 = getelementptr inbounds i32, i32* %415, i64 %418
  store i32 %414, i32* %419, align 4
  %420 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %421 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %420, i32 0, i32 92
  %422 = load i32, i32* %421, align 8
  %423 = call i32 @le32_to_cpu(i32 %422)
  %424 = shl i32 %423, 32
  %425 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %426 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %425, i32 0, i32 91
  %427 = load i32, i32* %426, align 4
  %428 = call i32 @le32_to_cpu(i32 %427)
  %429 = or i32 %424, %428
  %430 = load i32*, i32** %6, align 8
  %431 = load i32, i32* %7, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %7, align 4
  %433 = sext i32 %431 to i64
  %434 = getelementptr inbounds i32, i32* %430, i64 %433
  store i32 %429, i32* %434, align 4
  %435 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %436 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %435, i32 0, i32 90
  %437 = load i32, i32* %436, align 8
  %438 = call i32 @le32_to_cpu(i32 %437)
  %439 = shl i32 %438, 32
  %440 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %441 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %440, i32 0, i32 89
  %442 = load i32, i32* %441, align 4
  %443 = call i32 @le32_to_cpu(i32 %442)
  %444 = or i32 %439, %443
  %445 = load i32*, i32** %6, align 8
  %446 = load i32, i32* %7, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %7, align 4
  %448 = sext i32 %446 to i64
  %449 = getelementptr inbounds i32, i32* %445, i64 %448
  store i32 %444, i32* %449, align 4
  %450 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %451 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %450, i32 0, i32 88
  %452 = load i32, i32* %451, align 8
  %453 = call i32 @le32_to_cpu(i32 %452)
  %454 = shl i32 %453, 32
  %455 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %456 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %455, i32 0, i32 87
  %457 = load i32, i32* %456, align 4
  %458 = call i32 @le32_to_cpu(i32 %457)
  %459 = or i32 %454, %458
  %460 = load i32*, i32** %6, align 8
  %461 = load i32, i32* %7, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %7, align 4
  %463 = sext i32 %461 to i64
  %464 = getelementptr inbounds i32, i32* %460, i64 %463
  store i32 %459, i32* %464, align 4
  %465 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %466 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %465, i32 0, i32 86
  %467 = load i32, i32* %466, align 8
  %468 = call i32 @le64_to_cpu(i32 %467)
  %469 = load i32*, i32** %6, align 8
  %470 = load i32, i32* %7, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %7, align 4
  %472 = sext i32 %470 to i64
  %473 = getelementptr inbounds i32, i32* %469, i64 %472
  store i32 %468, i32* %473, align 4
  %474 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %475 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %474, i32 0, i32 85
  %476 = load i32, i32* %475, align 4
  %477 = call i32 @le64_to_cpu(i32 %476)
  %478 = load i32*, i32** %6, align 8
  %479 = load i32, i32* %7, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %7, align 4
  %481 = sext i32 %479 to i64
  %482 = getelementptr inbounds i32, i32* %478, i64 %481
  store i32 %477, i32* %482, align 4
  %483 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %484 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %483, i32 0, i32 84
  %485 = load i32, i32* %484, align 8
  %486 = call i32 @le32_to_cpu(i32 %485)
  %487 = shl i32 %486, 32
  %488 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %489 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %488, i32 0, i32 83
  %490 = load i32, i32* %489, align 4
  %491 = call i32 @le32_to_cpu(i32 %490)
  %492 = or i32 %487, %491
  %493 = load i32*, i32** %6, align 8
  %494 = load i32, i32* %7, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %7, align 4
  %496 = sext i32 %494 to i64
  %497 = getelementptr inbounds i32, i32* %493, i64 %496
  store i32 %492, i32* %497, align 4
  %498 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %499 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %498, i32 0, i32 82
  %500 = load i32, i32* %499, align 8
  %501 = call i32 @le32_to_cpu(i32 %500)
  %502 = shl i32 %501, 32
  %503 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %504 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %503, i32 0, i32 81
  %505 = load i32, i32* %504, align 4
  %506 = call i32 @le32_to_cpu(i32 %505)
  %507 = or i32 %502, %506
  %508 = load i32*, i32** %6, align 8
  %509 = load i32, i32* %7, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %7, align 4
  %511 = sext i32 %509 to i64
  %512 = getelementptr inbounds i32, i32* %508, i64 %511
  store i32 %507, i32* %512, align 4
  %513 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %514 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %513, i32 0, i32 80
  %515 = load i32, i32* %514, align 8
  %516 = call i32 @le32_to_cpu(i32 %515)
  %517 = shl i32 %516, 32
  %518 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %519 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %518, i32 0, i32 79
  %520 = load i32, i32* %519, align 4
  %521 = call i32 @le32_to_cpu(i32 %520)
  %522 = or i32 %517, %521
  %523 = load i32*, i32** %6, align 8
  %524 = load i32, i32* %7, align 4
  %525 = add nsw i32 %524, 1
  store i32 %525, i32* %7, align 4
  %526 = sext i32 %524 to i64
  %527 = getelementptr inbounds i32, i32* %523, i64 %526
  store i32 %522, i32* %527, align 4
  %528 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %529 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %528, i32 0, i32 78
  %530 = load i32, i32* %529, align 8
  %531 = call i32 @le32_to_cpu(i32 %530)
  %532 = shl i32 %531, 32
  %533 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %534 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %533, i32 0, i32 77
  %535 = load i32, i32* %534, align 4
  %536 = call i32 @le32_to_cpu(i32 %535)
  %537 = or i32 %532, %536
  %538 = load i32*, i32** %6, align 8
  %539 = load i32, i32* %7, align 4
  %540 = add nsw i32 %539, 1
  store i32 %540, i32* %7, align 4
  %541 = sext i32 %539 to i64
  %542 = getelementptr inbounds i32, i32* %538, i64 %541
  store i32 %537, i32* %542, align 4
  %543 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %544 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %543, i32 0, i32 76
  %545 = load i32, i32* %544, align 8
  %546 = call i32 @le64_to_cpu(i32 %545)
  %547 = load i32*, i32** %6, align 8
  %548 = load i32, i32* %7, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %7, align 4
  %550 = sext i32 %548 to i64
  %551 = getelementptr inbounds i32, i32* %547, i64 %550
  store i32 %546, i32* %551, align 4
  %552 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %553 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %552, i32 0, i32 75
  %554 = load i32, i32* %553, align 4
  %555 = call i32 @le64_to_cpu(i32 %554)
  %556 = load i32*, i32** %6, align 8
  %557 = load i32, i32* %7, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %7, align 4
  %559 = sext i32 %557 to i64
  %560 = getelementptr inbounds i32, i32* %556, i64 %559
  store i32 %555, i32* %560, align 4
  %561 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %562 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %561, i32 0, i32 74
  %563 = load i32, i32* %562, align 8
  %564 = call i32 @le64_to_cpu(i32 %563)
  %565 = load i32*, i32** %6, align 8
  %566 = load i32, i32* %7, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %7, align 4
  %568 = sext i32 %566 to i64
  %569 = getelementptr inbounds i32, i32* %565, i64 %568
  store i32 %564, i32* %569, align 4
  %570 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %571 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %570, i32 0, i32 73
  %572 = load i32, i32* %571, align 4
  %573 = call i32 @le64_to_cpu(i32 %572)
  %574 = load i32*, i32** %6, align 8
  %575 = load i32, i32* %7, align 4
  %576 = add nsw i32 %575, 1
  store i32 %576, i32* %7, align 4
  %577 = sext i32 %575 to i64
  %578 = getelementptr inbounds i32, i32* %574, i64 %577
  store i32 %573, i32* %578, align 4
  %579 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %580 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %579, i32 0, i32 72
  %581 = load i32, i32* %580, align 8
  %582 = call i32 @le64_to_cpu(i32 %581)
  %583 = load i32*, i32** %6, align 8
  %584 = load i32, i32* %7, align 4
  %585 = add nsw i32 %584, 1
  store i32 %585, i32* %7, align 4
  %586 = sext i32 %584 to i64
  %587 = getelementptr inbounds i32, i32* %583, i64 %586
  store i32 %582, i32* %587, align 4
  %588 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %589 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %588, i32 0, i32 71
  %590 = load i32, i32* %589, align 4
  %591 = call i32 @le64_to_cpu(i32 %590)
  %592 = load i32*, i32** %6, align 8
  %593 = load i32, i32* %7, align 4
  %594 = add nsw i32 %593, 1
  store i32 %594, i32* %7, align 4
  %595 = sext i32 %593 to i64
  %596 = getelementptr inbounds i32, i32* %592, i64 %595
  store i32 %591, i32* %596, align 4
  %597 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %598 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %597, i32 0, i32 70
  %599 = load i32, i32* %598, align 8
  %600 = call i32 @le32_to_cpu(i32 %599)
  %601 = shl i32 %600, 32
  %602 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %603 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %602, i32 0, i32 69
  %604 = load i32, i32* %603, align 4
  %605 = call i32 @le32_to_cpu(i32 %604)
  %606 = or i32 %601, %605
  %607 = load i32*, i32** %6, align 8
  %608 = load i32, i32* %7, align 4
  %609 = add nsw i32 %608, 1
  store i32 %609, i32* %7, align 4
  %610 = sext i32 %608 to i64
  %611 = getelementptr inbounds i32, i32* %607, i64 %610
  store i32 %606, i32* %611, align 4
  %612 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %613 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %612, i32 0, i32 68
  %614 = load i32, i32* %613, align 8
  %615 = call i32 @le64_to_cpu(i32 %614)
  %616 = load i32*, i32** %6, align 8
  %617 = load i32, i32* %7, align 4
  %618 = add nsw i32 %617, 1
  store i32 %618, i32* %7, align 4
  %619 = sext i32 %617 to i64
  %620 = getelementptr inbounds i32, i32* %616, i64 %619
  store i32 %615, i32* %620, align 4
  %621 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %622 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %621, i32 0, i32 67
  %623 = load i32, i32* %622, align 4
  %624 = call i32 @le32_to_cpu(i32 %623)
  %625 = load i32*, i32** %6, align 8
  %626 = load i32, i32* %7, align 4
  %627 = add nsw i32 %626, 1
  store i32 %627, i32* %7, align 4
  %628 = sext i32 %626 to i64
  %629 = getelementptr inbounds i32, i32* %625, i64 %628
  store i32 %624, i32* %629, align 4
  %630 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %631 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %630, i32 0, i32 66
  %632 = load i32, i32* %631, align 8
  %633 = call i32 @le32_to_cpu(i32 %632)
  %634 = shl i32 %633, 32
  %635 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %636 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %635, i32 0, i32 65
  %637 = load i32, i32* %636, align 4
  %638 = call i32 @le32_to_cpu(i32 %637)
  %639 = or i32 %634, %638
  %640 = load i32*, i32** %6, align 8
  %641 = load i32, i32* %7, align 4
  %642 = add nsw i32 %641, 1
  store i32 %642, i32* %7, align 4
  %643 = sext i32 %641 to i64
  %644 = getelementptr inbounds i32, i32* %640, i64 %643
  store i32 %639, i32* %644, align 4
  %645 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %646 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %645, i32 0, i32 64
  %647 = load i32, i32* %646, align 8
  %648 = call i32 @le32_to_cpu(i32 %647)
  %649 = shl i32 %648, 32
  %650 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %651 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %650, i32 0, i32 63
  %652 = load i32, i32* %651, align 4
  %653 = call i32 @le32_to_cpu(i32 %652)
  %654 = or i32 %649, %653
  %655 = load i32*, i32** %6, align 8
  %656 = load i32, i32* %7, align 4
  %657 = add nsw i32 %656, 1
  store i32 %657, i32* %7, align 4
  %658 = sext i32 %656 to i64
  %659 = getelementptr inbounds i32, i32* %655, i64 %658
  store i32 %654, i32* %659, align 4
  %660 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %661 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %660, i32 0, i32 62
  %662 = load i32, i32* %661, align 8
  %663 = call i32 @le64_to_cpu(i32 %662)
  %664 = load i32*, i32** %6, align 8
  %665 = load i32, i32* %7, align 4
  %666 = add nsw i32 %665, 1
  store i32 %666, i32* %7, align 4
  %667 = sext i32 %665 to i64
  %668 = getelementptr inbounds i32, i32* %664, i64 %667
  store i32 %663, i32* %668, align 4
  %669 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %670 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %669, i32 0, i32 61
  %671 = load i32, i32* %670, align 4
  %672 = call i32 @le32_to_cpu(i32 %671)
  %673 = shl i32 %672, 32
  %674 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %675 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %674, i32 0, i32 60
  %676 = load i32, i32* %675, align 8
  %677 = call i32 @le32_to_cpu(i32 %676)
  %678 = or i32 %673, %677
  %679 = load i32*, i32** %6, align 8
  %680 = load i32, i32* %7, align 4
  %681 = add nsw i32 %680, 1
  store i32 %681, i32* %7, align 4
  %682 = sext i32 %680 to i64
  %683 = getelementptr inbounds i32, i32* %679, i64 %682
  store i32 %678, i32* %683, align 4
  %684 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %685 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %684, i32 0, i32 59
  %686 = load i32, i32* %685, align 4
  %687 = call i32 @le32_to_cpu(i32 %686)
  %688 = shl i32 %687, 32
  %689 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %690 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %689, i32 0, i32 58
  %691 = load i32, i32* %690, align 8
  %692 = call i32 @le32_to_cpu(i32 %691)
  %693 = or i32 %688, %692
  %694 = load i32*, i32** %6, align 8
  %695 = load i32, i32* %7, align 4
  %696 = add nsw i32 %695, 1
  store i32 %696, i32* %7, align 4
  %697 = sext i32 %695 to i64
  %698 = getelementptr inbounds i32, i32* %694, i64 %697
  store i32 %693, i32* %698, align 4
  %699 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %700 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %699, i32 0, i32 57
  %701 = load i32, i32* %700, align 4
  %702 = call i32 @le64_to_cpu(i32 %701)
  %703 = load i32*, i32** %6, align 8
  %704 = load i32, i32* %7, align 4
  %705 = add nsw i32 %704, 1
  store i32 %705, i32* %7, align 4
  %706 = sext i32 %704 to i64
  %707 = getelementptr inbounds i32, i32* %703, i64 %706
  store i32 %702, i32* %707, align 4
  %708 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %709 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %708, i32 0, i32 56
  %710 = load i32, i32* %709, align 8
  %711 = call i32 @le64_to_cpu(i32 %710)
  %712 = load i32*, i32** %6, align 8
  %713 = load i32, i32* %7, align 4
  %714 = add nsw i32 %713, 1
  store i32 %714, i32* %7, align 4
  %715 = sext i32 %713 to i64
  %716 = getelementptr inbounds i32, i32* %712, i64 %715
  store i32 %711, i32* %716, align 4
  %717 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %718 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %717, i32 0, i32 55
  %719 = load i32, i32* %718, align 4
  %720 = call i32 @le64_to_cpu(i32 %719)
  %721 = load i32*, i32** %6, align 8
  %722 = load i32, i32* %7, align 4
  %723 = add nsw i32 %722, 1
  store i32 %723, i32* %7, align 4
  %724 = sext i32 %722 to i64
  %725 = getelementptr inbounds i32, i32* %721, i64 %724
  store i32 %720, i32* %725, align 4
  %726 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %727 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %726, i32 0, i32 54
  %728 = load i32, i32* %727, align 8
  %729 = call i32 @le64_to_cpu(i32 %728)
  %730 = load i32*, i32** %6, align 8
  %731 = load i32, i32* %7, align 4
  %732 = add nsw i32 %731, 1
  store i32 %732, i32* %7, align 4
  %733 = sext i32 %731 to i64
  %734 = getelementptr inbounds i32, i32* %730, i64 %733
  store i32 %729, i32* %734, align 4
  %735 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %736 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %735, i32 0, i32 53
  %737 = load i32, i32* %736, align 4
  %738 = call i32 @le64_to_cpu(i32 %737)
  %739 = load i32*, i32** %6, align 8
  %740 = load i32, i32* %7, align 4
  %741 = add nsw i32 %740, 1
  store i32 %741, i32* %7, align 4
  %742 = sext i32 %740 to i64
  %743 = getelementptr inbounds i32, i32* %739, i64 %742
  store i32 %738, i32* %743, align 4
  %744 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %745 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %744, i32 0, i32 52
  %746 = load i32, i32* %745, align 8
  %747 = call i32 @le64_to_cpu(i32 %746)
  %748 = load i32*, i32** %6, align 8
  %749 = load i32, i32* %7, align 4
  %750 = add nsw i32 %749, 1
  store i32 %750, i32* %7, align 4
  %751 = sext i32 %749 to i64
  %752 = getelementptr inbounds i32, i32* %748, i64 %751
  store i32 %747, i32* %752, align 4
  %753 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %754 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %753, i32 0, i32 51
  %755 = load i32, i32* %754, align 4
  %756 = call i32 @le64_to_cpu(i32 %755)
  %757 = load i32*, i32** %6, align 8
  %758 = load i32, i32* %7, align 4
  %759 = add nsw i32 %758, 1
  store i32 %759, i32* %7, align 4
  %760 = sext i32 %758 to i64
  %761 = getelementptr inbounds i32, i32* %757, i64 %760
  store i32 %756, i32* %761, align 4
  %762 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %763 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %762, i32 0, i32 50
  %764 = load i32, i32* %763, align 8
  %765 = call i32 @le64_to_cpu(i32 %764)
  %766 = load i32*, i32** %6, align 8
  %767 = load i32, i32* %7, align 4
  %768 = add nsw i32 %767, 1
  store i32 %768, i32* %7, align 4
  %769 = sext i32 %767 to i64
  %770 = getelementptr inbounds i32, i32* %766, i64 %769
  store i32 %765, i32* %770, align 4
  %771 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %772 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %771, i32 0, i32 49
  %773 = load i32, i32* %772, align 4
  %774 = call i32 @le64_to_cpu(i32 %773)
  %775 = load i32*, i32** %6, align 8
  %776 = load i32, i32* %7, align 4
  %777 = add nsw i32 %776, 1
  store i32 %777, i32* %7, align 4
  %778 = sext i32 %776 to i64
  %779 = getelementptr inbounds i32, i32* %775, i64 %778
  store i32 %774, i32* %779, align 4
  %780 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %781 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %780, i32 0, i32 48
  %782 = load i32, i32* %781, align 8
  %783 = call i32 @le16_to_cpu(i32 %782)
  %784 = load i32*, i32** %6, align 8
  %785 = load i32, i32* %7, align 4
  %786 = add nsw i32 %785, 1
  store i32 %786, i32* %7, align 4
  %787 = sext i32 %785 to i64
  %788 = getelementptr inbounds i32, i32* %784, i64 %787
  store i32 %783, i32* %788, align 4
  %789 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %790 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %789, i32 0, i32 47
  %791 = load i32, i32* %790, align 4
  %792 = call i32 @le16_to_cpu(i32 %791)
  %793 = load i32*, i32** %6, align 8
  %794 = load i32, i32* %7, align 4
  %795 = add nsw i32 %794, 1
  store i32 %795, i32* %7, align 4
  %796 = sext i32 %794 to i64
  %797 = getelementptr inbounds i32, i32* %793, i64 %796
  store i32 %792, i32* %797, align 4
  %798 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %799 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %798, i32 0, i32 46
  %800 = load i32, i32* %799, align 8
  %801 = call i32 @le16_to_cpu(i32 %800)
  %802 = load i32*, i32** %6, align 8
  %803 = load i32, i32* %7, align 4
  %804 = add nsw i32 %803, 1
  store i32 %804, i32* %7, align 4
  %805 = sext i32 %803 to i64
  %806 = getelementptr inbounds i32, i32* %802, i64 %805
  store i32 %801, i32* %806, align 4
  %807 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %808 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %807, i32 0, i32 45
  %809 = load i32, i32* %808, align 4
  %810 = call i32 @le16_to_cpu(i32 %809)
  %811 = load i32*, i32** %6, align 8
  %812 = load i32, i32* %7, align 4
  %813 = add nsw i32 %812, 1
  store i32 %813, i32* %7, align 4
  %814 = sext i32 %812 to i64
  %815 = getelementptr inbounds i32, i32* %811, i64 %814
  store i32 %810, i32* %815, align 4
  %816 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %817 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %816, i32 0, i32 44
  %818 = load i32, i32* %817, align 8
  %819 = call i32 @le16_to_cpu(i32 %818)
  %820 = load i32*, i32** %6, align 8
  %821 = load i32, i32* %7, align 4
  %822 = add nsw i32 %821, 1
  store i32 %822, i32* %7, align 4
  %823 = sext i32 %821 to i64
  %824 = getelementptr inbounds i32, i32* %820, i64 %823
  store i32 %819, i32* %824, align 4
  %825 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %826 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %825, i32 0, i32 43
  %827 = load i32, i32* %826, align 4
  %828 = call i32 @le16_to_cpu(i32 %827)
  %829 = load i32*, i32** %6, align 8
  %830 = load i32, i32* %7, align 4
  %831 = add nsw i32 %830, 1
  store i32 %831, i32* %7, align 4
  %832 = sext i32 %830 to i64
  %833 = getelementptr inbounds i32, i32* %829, i64 %832
  store i32 %828, i32* %833, align 4
  %834 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %835 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %834, i32 0, i32 42
  %836 = load i32, i32* %835, align 8
  %837 = call i32 @le16_to_cpu(i32 %836)
  %838 = load i32*, i32** %6, align 8
  %839 = load i32, i32* %7, align 4
  %840 = add nsw i32 %839, 1
  store i32 %840, i32* %7, align 4
  %841 = sext i32 %839 to i64
  %842 = getelementptr inbounds i32, i32* %838, i64 %841
  store i32 %837, i32* %842, align 4
  %843 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %844 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %843, i32 0, i32 41
  %845 = load i32, i32* %844, align 4
  %846 = call i32 @le16_to_cpu(i32 %845)
  %847 = load i32*, i32** %6, align 8
  %848 = load i32, i32* %7, align 4
  %849 = add nsw i32 %848, 1
  store i32 %849, i32* %7, align 4
  %850 = sext i32 %848 to i64
  %851 = getelementptr inbounds i32, i32* %847, i64 %850
  store i32 %846, i32* %851, align 4
  %852 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %853 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %852, i32 0, i32 40
  %854 = load i32, i32* %853, align 8
  %855 = call i32 @le32_to_cpu(i32 %854)
  %856 = shl i32 %855, 32
  %857 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %858 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %857, i32 0, i32 39
  %859 = load i32, i32* %858, align 4
  %860 = call i32 @le32_to_cpu(i32 %859)
  %861 = or i32 %856, %860
  %862 = load i32*, i32** %6, align 8
  %863 = load i32, i32* %7, align 4
  %864 = add nsw i32 %863, 1
  store i32 %864, i32* %7, align 4
  %865 = sext i32 %863 to i64
  %866 = getelementptr inbounds i32, i32* %862, i64 %865
  store i32 %861, i32* %866, align 4
  %867 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %868 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %867, i32 0, i32 38
  %869 = load i32, i32* %868, align 8
  %870 = call i32 @le64_to_cpu(i32 %869)
  %871 = load i32*, i32** %6, align 8
  %872 = load i32, i32* %7, align 4
  %873 = add nsw i32 %872, 1
  store i32 %873, i32* %7, align 4
  %874 = sext i32 %872 to i64
  %875 = getelementptr inbounds i32, i32* %871, i64 %874
  store i32 %870, i32* %875, align 4
  %876 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %877 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %876, i32 0, i32 37
  %878 = load i32, i32* %877, align 4
  %879 = call i32 @le64_to_cpu(i32 %878)
  %880 = load i32*, i32** %6, align 8
  %881 = load i32, i32* %7, align 4
  %882 = add nsw i32 %881, 1
  store i32 %882, i32* %7, align 4
  %883 = sext i32 %881 to i64
  %884 = getelementptr inbounds i32, i32* %880, i64 %883
  store i32 %879, i32* %884, align 4
  %885 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %886 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %885, i32 0, i32 36
  %887 = load i32, i32* %886, align 8
  %888 = call i32 @le32_to_cpu(i32 %887)
  %889 = shl i32 %888, 32
  %890 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %891 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %890, i32 0, i32 35
  %892 = load i32, i32* %891, align 4
  %893 = call i32 @le32_to_cpu(i32 %892)
  %894 = or i32 %889, %893
  %895 = load i32*, i32** %6, align 8
  %896 = load i32, i32* %7, align 4
  %897 = add nsw i32 %896, 1
  store i32 %897, i32* %7, align 4
  %898 = sext i32 %896 to i64
  %899 = getelementptr inbounds i32, i32* %895, i64 %898
  store i32 %894, i32* %899, align 4
  %900 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %901 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %900, i32 0, i32 34
  %902 = load i32, i32* %901, align 8
  %903 = call i32 @le32_to_cpu(i32 %902)
  %904 = load i32*, i32** %6, align 8
  %905 = load i32, i32* %7, align 4
  %906 = add nsw i32 %905, 1
  store i32 %906, i32* %7, align 4
  %907 = sext i32 %905 to i64
  %908 = getelementptr inbounds i32, i32* %904, i64 %907
  store i32 %903, i32* %908, align 4
  %909 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %910 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %909, i32 0, i32 33
  %911 = load i32, i32* %910, align 4
  %912 = call i32 @le32_to_cpu(i32 %911)
  %913 = load i32*, i32** %6, align 8
  %914 = load i32, i32* %7, align 4
  %915 = add nsw i32 %914, 1
  store i32 %915, i32* %7, align 4
  %916 = sext i32 %914 to i64
  %917 = getelementptr inbounds i32, i32* %913, i64 %916
  store i32 %912, i32* %917, align 4
  %918 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %919 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %918, i32 0, i32 32
  %920 = load i32, i32* %919, align 8
  %921 = call i32 @le32_to_cpu(i32 %920)
  %922 = load i32*, i32** %6, align 8
  %923 = load i32, i32* %7, align 4
  %924 = add nsw i32 %923, 1
  store i32 %924, i32* %7, align 4
  %925 = sext i32 %923 to i64
  %926 = getelementptr inbounds i32, i32* %922, i64 %925
  store i32 %921, i32* %926, align 4
  %927 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %928 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %927, i32 0, i32 31
  %929 = load i32, i32* %928, align 4
  %930 = call i32 @le32_to_cpu(i32 %929)
  %931 = load i32*, i32** %6, align 8
  %932 = load i32, i32* %7, align 4
  %933 = add nsw i32 %932, 1
  store i32 %933, i32* %7, align 4
  %934 = sext i32 %932 to i64
  %935 = getelementptr inbounds i32, i32* %931, i64 %934
  store i32 %930, i32* %935, align 4
  %936 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %937 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %936, i32 0, i32 30
  %938 = load i32, i32* %937, align 8
  %939 = call i32 @le32_to_cpu(i32 %938)
  %940 = load i32*, i32** %6, align 8
  %941 = load i32, i32* %7, align 4
  %942 = add nsw i32 %941, 1
  store i32 %942, i32* %7, align 4
  %943 = sext i32 %941 to i64
  %944 = getelementptr inbounds i32, i32* %940, i64 %943
  store i32 %939, i32* %944, align 4
  %945 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %946 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %945, i32 0, i32 29
  %947 = load i32, i32* %946, align 4
  %948 = call i32 @le32_to_cpu(i32 %947)
  %949 = load i32*, i32** %6, align 8
  %950 = load i32, i32* %7, align 4
  %951 = add nsw i32 %950, 1
  store i32 %951, i32* %7, align 4
  %952 = sext i32 %950 to i64
  %953 = getelementptr inbounds i32, i32* %949, i64 %952
  store i32 %948, i32* %953, align 4
  %954 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %955 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %954, i32 0, i32 28
  %956 = load i32, i32* %955, align 8
  %957 = call i32 @le32_to_cpu(i32 %956)
  %958 = load i32*, i32** %6, align 8
  %959 = load i32, i32* %7, align 4
  %960 = add nsw i32 %959, 1
  store i32 %960, i32* %7, align 4
  %961 = sext i32 %959 to i64
  %962 = getelementptr inbounds i32, i32* %958, i64 %961
  store i32 %957, i32* %962, align 4
  %963 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %964 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %963, i32 0, i32 27
  %965 = load i32, i32* %964, align 4
  %966 = call i32 @le32_to_cpu(i32 %965)
  %967 = load i32*, i32** %6, align 8
  %968 = load i32, i32* %7, align 4
  %969 = add nsw i32 %968, 1
  store i32 %969, i32* %7, align 4
  %970 = sext i32 %968 to i64
  %971 = getelementptr inbounds i32, i32* %967, i64 %970
  store i32 %966, i32* %971, align 4
  %972 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %973 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %972, i32 0, i32 26
  %974 = load i32, i32* %973, align 8
  %975 = call i32 @le32_to_cpu(i32 %974)
  %976 = load i32*, i32** %6, align 8
  %977 = load i32, i32* %7, align 4
  %978 = add nsw i32 %977, 1
  store i32 %978, i32* %7, align 4
  %979 = sext i32 %977 to i64
  %980 = getelementptr inbounds i32, i32* %976, i64 %979
  store i32 %975, i32* %980, align 4
  %981 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %982 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %981, i32 0, i32 25
  %983 = load i32, i32* %982, align 4
  %984 = call i32 @le32_to_cpu(i32 %983)
  %985 = load i32*, i32** %6, align 8
  %986 = load i32, i32* %7, align 4
  %987 = add nsw i32 %986, 1
  store i32 %987, i32* %7, align 4
  %988 = sext i32 %986 to i64
  %989 = getelementptr inbounds i32, i32* %985, i64 %988
  store i32 %984, i32* %989, align 4
  %990 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %991 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %990, i32 0, i32 24
  %992 = load i32, i32* %991, align 8
  %993 = call i32 @le32_to_cpu(i32 %992)
  %994 = load i32*, i32** %6, align 8
  %995 = load i32, i32* %7, align 4
  %996 = add nsw i32 %995, 1
  store i32 %996, i32* %7, align 4
  %997 = sext i32 %995 to i64
  %998 = getelementptr inbounds i32, i32* %994, i64 %997
  store i32 %993, i32* %998, align 4
  %999 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1000 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %999, i32 0, i32 23
  %1001 = load i32, i32* %1000, align 4
  %1002 = call i32 @le32_to_cpu(i32 %1001)
  %1003 = load i32*, i32** %6, align 8
  %1004 = load i32, i32* %7, align 4
  %1005 = add nsw i32 %1004, 1
  store i32 %1005, i32* %7, align 4
  %1006 = sext i32 %1004 to i64
  %1007 = getelementptr inbounds i32, i32* %1003, i64 %1006
  store i32 %1002, i32* %1007, align 4
  %1008 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1009 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1008, i32 0, i32 22
  %1010 = load i32, i32* %1009, align 8
  %1011 = call i32 @le32_to_cpu(i32 %1010)
  %1012 = load i32*, i32** %6, align 8
  %1013 = load i32, i32* %7, align 4
  %1014 = add nsw i32 %1013, 1
  store i32 %1014, i32* %7, align 4
  %1015 = sext i32 %1013 to i64
  %1016 = getelementptr inbounds i32, i32* %1012, i64 %1015
  store i32 %1011, i32* %1016, align 4
  %1017 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1018 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1017, i32 0, i32 21
  %1019 = load i32, i32* %1018, align 4
  %1020 = call i32 @le32_to_cpu(i32 %1019)
  %1021 = load i32*, i32** %6, align 8
  %1022 = load i32, i32* %7, align 4
  %1023 = add nsw i32 %1022, 1
  store i32 %1023, i32* %7, align 4
  %1024 = sext i32 %1022 to i64
  %1025 = getelementptr inbounds i32, i32* %1021, i64 %1024
  store i32 %1020, i32* %1025, align 4
  %1026 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1027 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1026, i32 0, i32 20
  %1028 = load i32, i32* %1027, align 8
  %1029 = call i32 @le32_to_cpu(i32 %1028)
  %1030 = load i32*, i32** %6, align 8
  %1031 = load i32, i32* %7, align 4
  %1032 = add nsw i32 %1031, 1
  store i32 %1032, i32* %7, align 4
  %1033 = sext i32 %1031 to i64
  %1034 = getelementptr inbounds i32, i32* %1030, i64 %1033
  store i32 %1029, i32* %1034, align 4
  %1035 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1036 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1035, i32 0, i32 19
  %1037 = load i32, i32* %1036, align 4
  %1038 = call i32 @le32_to_cpu(i32 %1037)
  %1039 = load i32*, i32** %6, align 8
  %1040 = load i32, i32* %7, align 4
  %1041 = add nsw i32 %1040, 1
  store i32 %1041, i32* %7, align 4
  %1042 = sext i32 %1040 to i64
  %1043 = getelementptr inbounds i32, i32* %1039, i64 %1042
  store i32 %1038, i32* %1043, align 4
  %1044 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1045 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1044, i32 0, i32 18
  %1046 = load i32, i32* %1045, align 8
  %1047 = call i32 @le32_to_cpu(i32 %1046)
  %1048 = load i32*, i32** %6, align 8
  %1049 = load i32, i32* %7, align 4
  %1050 = add nsw i32 %1049, 1
  store i32 %1050, i32* %7, align 4
  %1051 = sext i32 %1049 to i64
  %1052 = getelementptr inbounds i32, i32* %1048, i64 %1051
  store i32 %1047, i32* %1052, align 4
  %1053 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1054 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1053, i32 0, i32 17
  %1055 = load i32, i32* %1054, align 4
  %1056 = call i32 @le32_to_cpu(i32 %1055)
  %1057 = load i32*, i32** %6, align 8
  %1058 = load i32, i32* %7, align 4
  %1059 = add nsw i32 %1058, 1
  store i32 %1059, i32* %7, align 4
  %1060 = sext i32 %1058 to i64
  %1061 = getelementptr inbounds i32, i32* %1057, i64 %1060
  store i32 %1056, i32* %1061, align 4
  %1062 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1063 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1062, i32 0, i32 16
  %1064 = load i32, i32* %1063, align 8
  %1065 = call i32 @le32_to_cpu(i32 %1064)
  %1066 = load i32*, i32** %6, align 8
  %1067 = load i32, i32* %7, align 4
  %1068 = add nsw i32 %1067, 1
  store i32 %1068, i32* %7, align 4
  %1069 = sext i32 %1067 to i64
  %1070 = getelementptr inbounds i32, i32* %1066, i64 %1069
  store i32 %1065, i32* %1070, align 4
  %1071 = load %struct.s2io_nic*, %struct.s2io_nic** %9, align 8
  %1072 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %1071, i32 0, i32 0
  %1073 = load i64, i64* %1072, align 8
  %1074 = load i64, i64* @XFRAME_II_DEVICE, align 8
  %1075 = icmp eq i64 %1073, %1074
  br i1 %1075, label %1076, label %1221

1076:                                             ; preds = %3
  %1077 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1078 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1077, i32 0, i32 15
  %1079 = load i32, i32* %1078, align 4
  %1080 = call i32 @le64_to_cpu(i32 %1079)
  %1081 = load i32*, i32** %6, align 8
  %1082 = load i32, i32* %7, align 4
  %1083 = add nsw i32 %1082, 1
  store i32 %1083, i32* %7, align 4
  %1084 = sext i32 %1082 to i64
  %1085 = getelementptr inbounds i32, i32* %1081, i64 %1084
  store i32 %1080, i32* %1085, align 4
  %1086 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1087 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1086, i32 0, i32 14
  %1088 = load i32, i32* %1087, align 8
  %1089 = call i32 @le64_to_cpu(i32 %1088)
  %1090 = load i32*, i32** %6, align 8
  %1091 = load i32, i32* %7, align 4
  %1092 = add nsw i32 %1091, 1
  store i32 %1092, i32* %7, align 4
  %1093 = sext i32 %1091 to i64
  %1094 = getelementptr inbounds i32, i32* %1090, i64 %1093
  store i32 %1089, i32* %1094, align 4
  %1095 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1096 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1095, i32 0, i32 13
  %1097 = load i32, i32* %1096, align 4
  %1098 = call i32 @le64_to_cpu(i32 %1097)
  %1099 = load i32*, i32** %6, align 8
  %1100 = load i32, i32* %7, align 4
  %1101 = add nsw i32 %1100, 1
  store i32 %1101, i32* %7, align 4
  %1102 = sext i32 %1100 to i64
  %1103 = getelementptr inbounds i32, i32* %1099, i64 %1102
  store i32 %1098, i32* %1103, align 4
  %1104 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1105 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1104, i32 0, i32 12
  %1106 = load i32, i32* %1105, align 8
  %1107 = call i32 @le64_to_cpu(i32 %1106)
  %1108 = load i32*, i32** %6, align 8
  %1109 = load i32, i32* %7, align 4
  %1110 = add nsw i32 %1109, 1
  store i32 %1110, i32* %7, align 4
  %1111 = sext i32 %1109 to i64
  %1112 = getelementptr inbounds i32, i32* %1108, i64 %1111
  store i32 %1107, i32* %1112, align 4
  %1113 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1114 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1113, i32 0, i32 11
  %1115 = load i32, i32* %1114, align 4
  %1116 = call i32 @le64_to_cpu(i32 %1115)
  %1117 = load i32*, i32** %6, align 8
  %1118 = load i32, i32* %7, align 4
  %1119 = add nsw i32 %1118, 1
  store i32 %1119, i32* %7, align 4
  %1120 = sext i32 %1118 to i64
  %1121 = getelementptr inbounds i32, i32* %1117, i64 %1120
  store i32 %1116, i32* %1121, align 4
  %1122 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1123 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1122, i32 0, i32 10
  %1124 = load i32, i32* %1123, align 8
  %1125 = call i32 @le64_to_cpu(i32 %1124)
  %1126 = load i32*, i32** %6, align 8
  %1127 = load i32, i32* %7, align 4
  %1128 = add nsw i32 %1127, 1
  store i32 %1128, i32* %7, align 4
  %1129 = sext i32 %1127 to i64
  %1130 = getelementptr inbounds i32, i32* %1126, i64 %1129
  store i32 %1125, i32* %1130, align 4
  %1131 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1132 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1131, i32 0, i32 9
  %1133 = load i32, i32* %1132, align 4
  %1134 = call i32 @le64_to_cpu(i32 %1133)
  %1135 = load i32*, i32** %6, align 8
  %1136 = load i32, i32* %7, align 4
  %1137 = add nsw i32 %1136, 1
  store i32 %1137, i32* %7, align 4
  %1138 = sext i32 %1136 to i64
  %1139 = getelementptr inbounds i32, i32* %1135, i64 %1138
  store i32 %1134, i32* %1139, align 4
  %1140 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1141 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1140, i32 0, i32 8
  %1142 = load i32, i32* %1141, align 8
  %1143 = call i32 @le64_to_cpu(i32 %1142)
  %1144 = load i32*, i32** %6, align 8
  %1145 = load i32, i32* %7, align 4
  %1146 = add nsw i32 %1145, 1
  store i32 %1146, i32* %7, align 4
  %1147 = sext i32 %1145 to i64
  %1148 = getelementptr inbounds i32, i32* %1144, i64 %1147
  store i32 %1143, i32* %1148, align 4
  %1149 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1150 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1149, i32 0, i32 7
  %1151 = load i32, i32* %1150, align 4
  %1152 = call i32 @le32_to_cpu(i32 %1151)
  %1153 = load i32*, i32** %6, align 8
  %1154 = load i32, i32* %7, align 4
  %1155 = add nsw i32 %1154, 1
  store i32 %1155, i32* %7, align 4
  %1156 = sext i32 %1154 to i64
  %1157 = getelementptr inbounds i32, i32* %1153, i64 %1156
  store i32 %1152, i32* %1157, align 4
  %1158 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1159 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1158, i32 0, i32 6
  %1160 = load i32, i32* %1159, align 8
  %1161 = call i32 @le32_to_cpu(i32 %1160)
  %1162 = load i32*, i32** %6, align 8
  %1163 = load i32, i32* %7, align 4
  %1164 = add nsw i32 %1163, 1
  store i32 %1164, i32* %7, align 4
  %1165 = sext i32 %1163 to i64
  %1166 = getelementptr inbounds i32, i32* %1162, i64 %1165
  store i32 %1161, i32* %1166, align 4
  %1167 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1168 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1167, i32 0, i32 5
  %1169 = load i32, i32* %1168, align 4
  %1170 = call i32 @le32_to_cpu(i32 %1169)
  %1171 = load i32*, i32** %6, align 8
  %1172 = load i32, i32* %7, align 4
  %1173 = add nsw i32 %1172, 1
  store i32 %1173, i32* %7, align 4
  %1174 = sext i32 %1172 to i64
  %1175 = getelementptr inbounds i32, i32* %1171, i64 %1174
  store i32 %1170, i32* %1175, align 4
  %1176 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1177 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1176, i32 0, i32 4
  %1178 = load i32, i32* %1177, align 8
  %1179 = call i32 @le32_to_cpu(i32 %1178)
  %1180 = load i32*, i32** %6, align 8
  %1181 = load i32, i32* %7, align 4
  %1182 = add nsw i32 %1181, 1
  store i32 %1182, i32* %7, align 4
  %1183 = sext i32 %1181 to i64
  %1184 = getelementptr inbounds i32, i32* %1180, i64 %1183
  store i32 %1179, i32* %1184, align 4
  %1185 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1186 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1185, i32 0, i32 3
  %1187 = load i32, i32* %1186, align 4
  %1188 = call i32 @le32_to_cpu(i32 %1187)
  %1189 = load i32*, i32** %6, align 8
  %1190 = load i32, i32* %7, align 4
  %1191 = add nsw i32 %1190, 1
  store i32 %1191, i32* %7, align 4
  %1192 = sext i32 %1190 to i64
  %1193 = getelementptr inbounds i32, i32* %1189, i64 %1192
  store i32 %1188, i32* %1193, align 4
  %1194 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1195 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1194, i32 0, i32 2
  %1196 = load i32, i32* %1195, align 8
  %1197 = call i32 @le32_to_cpu(i32 %1196)
  %1198 = load i32*, i32** %6, align 8
  %1199 = load i32, i32* %7, align 4
  %1200 = add nsw i32 %1199, 1
  store i32 %1200, i32* %7, align 4
  %1201 = sext i32 %1199 to i64
  %1202 = getelementptr inbounds i32, i32* %1198, i64 %1201
  store i32 %1197, i32* %1202, align 4
  %1203 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1204 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1203, i32 0, i32 1
  %1205 = load i32, i32* %1204, align 4
  %1206 = call i32 @le32_to_cpu(i32 %1205)
  %1207 = load i32*, i32** %6, align 8
  %1208 = load i32, i32* %7, align 4
  %1209 = add nsw i32 %1208, 1
  store i32 %1209, i32* %7, align 4
  %1210 = sext i32 %1208 to i64
  %1211 = getelementptr inbounds i32, i32* %1207, i64 %1210
  store i32 %1206, i32* %1211, align 4
  %1212 = load %struct.stat_block*, %struct.stat_block** %10, align 8
  %1213 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %1212, i32 0, i32 0
  %1214 = load i32, i32* %1213, align 8
  %1215 = call i32 @le32_to_cpu(i32 %1214)
  %1216 = load i32*, i32** %6, align 8
  %1217 = load i32, i32* %7, align 4
  %1218 = add nsw i32 %1217, 1
  store i32 %1218, i32* %7, align 4
  %1219 = sext i32 %1217 to i64
  %1220 = getelementptr inbounds i32, i32* %1216, i64 %1219
  store i32 %1215, i32* %1220, align 4
  br label %1221

1221:                                             ; preds = %1076, %3
  %1222 = load i32*, i32** %6, align 8
  %1223 = load i32, i32* %7, align 4
  %1224 = add nsw i32 %1223, 1
  store i32 %1224, i32* %7, align 4
  %1225 = sext i32 %1223 to i64
  %1226 = getelementptr inbounds i32, i32* %1222, i64 %1225
  store i32 0, i32* %1226, align 4
  %1227 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1228 = getelementptr inbounds %struct.swStat, %struct.swStat* %1227, i32 0, i32 0
  %1229 = load i32, i32* %1228, align 8
  %1230 = load i32*, i32** %6, align 8
  %1231 = load i32, i32* %7, align 4
  %1232 = add nsw i32 %1231, 1
  store i32 %1232, i32* %7, align 4
  %1233 = sext i32 %1231 to i64
  %1234 = getelementptr inbounds i32, i32* %1230, i64 %1233
  store i32 %1229, i32* %1234, align 4
  %1235 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1236 = getelementptr inbounds %struct.swStat, %struct.swStat* %1235, i32 0, i32 1
  %1237 = load i32, i32* %1236, align 4
  %1238 = load i32*, i32** %6, align 8
  %1239 = load i32, i32* %7, align 4
  %1240 = add nsw i32 %1239, 1
  store i32 %1240, i32* %7, align 4
  %1241 = sext i32 %1239 to i64
  %1242 = getelementptr inbounds i32, i32* %1238, i64 %1241
  store i32 %1237, i32* %1242, align 4
  %1243 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1244 = getelementptr inbounds %struct.swStat, %struct.swStat* %1243, i32 0, i32 2
  %1245 = load i32, i32* %1244, align 8
  %1246 = load i32*, i32** %6, align 8
  %1247 = load i32, i32* %7, align 4
  %1248 = add nsw i32 %1247, 1
  store i32 %1248, i32* %7, align 4
  %1249 = sext i32 %1247 to i64
  %1250 = getelementptr inbounds i32, i32* %1246, i64 %1249
  store i32 %1245, i32* %1250, align 4
  %1251 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1252 = getelementptr inbounds %struct.swStat, %struct.swStat* %1251, i32 0, i32 3
  %1253 = load i32, i32* %1252, align 4
  %1254 = load i32*, i32** %6, align 8
  %1255 = load i32, i32* %7, align 4
  %1256 = add nsw i32 %1255, 1
  store i32 %1256, i32* %7, align 4
  %1257 = sext i32 %1255 to i64
  %1258 = getelementptr inbounds i32, i32* %1254, i64 %1257
  store i32 %1253, i32* %1258, align 4
  %1259 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1260 = getelementptr inbounds %struct.swStat, %struct.swStat* %1259, i32 0, i32 4
  %1261 = load i32, i32* %1260, align 8
  %1262 = load i32*, i32** %6, align 8
  %1263 = load i32, i32* %7, align 4
  %1264 = add nsw i32 %1263, 1
  store i32 %1264, i32* %7, align 4
  %1265 = sext i32 %1263 to i64
  %1266 = getelementptr inbounds i32, i32* %1262, i64 %1265
  store i32 %1261, i32* %1266, align 4
  %1267 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1268 = getelementptr inbounds %struct.swStat, %struct.swStat* %1267, i32 0, i32 5
  %1269 = load i32, i32* %1268, align 4
  %1270 = load i32*, i32** %6, align 8
  %1271 = load i32, i32* %7, align 4
  %1272 = add nsw i32 %1271, 1
  store i32 %1272, i32* %7, align 4
  %1273 = sext i32 %1271 to i64
  %1274 = getelementptr inbounds i32, i32* %1270, i64 %1273
  store i32 %1269, i32* %1274, align 4
  store i32 0, i32* %8, align 4
  br label %1275

1275:                                             ; preds = %1292, %1221
  %1276 = load i32, i32* %8, align 4
  %1277 = load i32, i32* @MAX_RX_RINGS, align 4
  %1278 = icmp slt i32 %1276, %1277
  br i1 %1278, label %1279, label %1295

1279:                                             ; preds = %1275
  %1280 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1281 = getelementptr inbounds %struct.swStat, %struct.swStat* %1280, i32 0, i32 6
  %1282 = load i32*, i32** %1281, align 8
  %1283 = load i32, i32* %8, align 4
  %1284 = sext i32 %1283 to i64
  %1285 = getelementptr inbounds i32, i32* %1282, i64 %1284
  %1286 = load i32, i32* %1285, align 4
  %1287 = load i32*, i32** %6, align 8
  %1288 = load i32, i32* %7, align 4
  %1289 = add nsw i32 %1288, 1
  store i32 %1289, i32* %7, align 4
  %1290 = sext i32 %1288 to i64
  %1291 = getelementptr inbounds i32, i32* %1287, i64 %1290
  store i32 %1286, i32* %1291, align 4
  br label %1292

1292:                                             ; preds = %1279
  %1293 = load i32, i32* %8, align 4
  %1294 = add nsw i32 %1293, 1
  store i32 %1294, i32* %8, align 4
  br label %1275

1295:                                             ; preds = %1275
  %1296 = load %struct.xpakStat*, %struct.xpakStat** %12, align 8
  %1297 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %1296, i32 0, i32 0
  %1298 = load i32, i32* %1297, align 4
  %1299 = load i32*, i32** %6, align 8
  %1300 = load i32, i32* %7, align 4
  %1301 = add nsw i32 %1300, 1
  store i32 %1301, i32* %7, align 4
  %1302 = sext i32 %1300 to i64
  %1303 = getelementptr inbounds i32, i32* %1299, i64 %1302
  store i32 %1298, i32* %1303, align 4
  %1304 = load %struct.xpakStat*, %struct.xpakStat** %12, align 8
  %1305 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %1304, i32 0, i32 1
  %1306 = load i32, i32* %1305, align 4
  %1307 = load i32*, i32** %6, align 8
  %1308 = load i32, i32* %7, align 4
  %1309 = add nsw i32 %1308, 1
  store i32 %1309, i32* %7, align 4
  %1310 = sext i32 %1308 to i64
  %1311 = getelementptr inbounds i32, i32* %1307, i64 %1310
  store i32 %1306, i32* %1311, align 4
  %1312 = load %struct.xpakStat*, %struct.xpakStat** %12, align 8
  %1313 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %1312, i32 0, i32 2
  %1314 = load i32, i32* %1313, align 4
  %1315 = load i32*, i32** %6, align 8
  %1316 = load i32, i32* %7, align 4
  %1317 = add nsw i32 %1316, 1
  store i32 %1317, i32* %7, align 4
  %1318 = sext i32 %1316 to i64
  %1319 = getelementptr inbounds i32, i32* %1315, i64 %1318
  store i32 %1314, i32* %1319, align 4
  %1320 = load %struct.xpakStat*, %struct.xpakStat** %12, align 8
  %1321 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %1320, i32 0, i32 3
  %1322 = load i32, i32* %1321, align 4
  %1323 = load i32*, i32** %6, align 8
  %1324 = load i32, i32* %7, align 4
  %1325 = add nsw i32 %1324, 1
  store i32 %1325, i32* %7, align 4
  %1326 = sext i32 %1324 to i64
  %1327 = getelementptr inbounds i32, i32* %1323, i64 %1326
  store i32 %1322, i32* %1327, align 4
  %1328 = load %struct.xpakStat*, %struct.xpakStat** %12, align 8
  %1329 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %1328, i32 0, i32 4
  %1330 = load i32, i32* %1329, align 4
  %1331 = load i32*, i32** %6, align 8
  %1332 = load i32, i32* %7, align 4
  %1333 = add nsw i32 %1332, 1
  store i32 %1333, i32* %7, align 4
  %1334 = sext i32 %1332 to i64
  %1335 = getelementptr inbounds i32, i32* %1331, i64 %1334
  store i32 %1330, i32* %1335, align 4
  %1336 = load %struct.xpakStat*, %struct.xpakStat** %12, align 8
  %1337 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %1336, i32 0, i32 5
  %1338 = load i32, i32* %1337, align 4
  %1339 = load i32*, i32** %6, align 8
  %1340 = load i32, i32* %7, align 4
  %1341 = add nsw i32 %1340, 1
  store i32 %1341, i32* %7, align 4
  %1342 = sext i32 %1340 to i64
  %1343 = getelementptr inbounds i32, i32* %1339, i64 %1342
  store i32 %1338, i32* %1343, align 4
  %1344 = load %struct.xpakStat*, %struct.xpakStat** %12, align 8
  %1345 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %1344, i32 0, i32 6
  %1346 = load i32, i32* %1345, align 4
  %1347 = load i32*, i32** %6, align 8
  %1348 = load i32, i32* %7, align 4
  %1349 = add nsw i32 %1348, 1
  store i32 %1349, i32* %7, align 4
  %1350 = sext i32 %1348 to i64
  %1351 = getelementptr inbounds i32, i32* %1347, i64 %1350
  store i32 %1346, i32* %1351, align 4
  %1352 = load %struct.xpakStat*, %struct.xpakStat** %12, align 8
  %1353 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %1352, i32 0, i32 7
  %1354 = load i32, i32* %1353, align 4
  %1355 = load i32*, i32** %6, align 8
  %1356 = load i32, i32* %7, align 4
  %1357 = add nsw i32 %1356, 1
  store i32 %1357, i32* %7, align 4
  %1358 = sext i32 %1356 to i64
  %1359 = getelementptr inbounds i32, i32* %1355, i64 %1358
  store i32 %1354, i32* %1359, align 4
  %1360 = load %struct.xpakStat*, %struct.xpakStat** %12, align 8
  %1361 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %1360, i32 0, i32 8
  %1362 = load i32, i32* %1361, align 4
  %1363 = load i32*, i32** %6, align 8
  %1364 = load i32, i32* %7, align 4
  %1365 = add nsw i32 %1364, 1
  store i32 %1365, i32* %7, align 4
  %1366 = sext i32 %1364 to i64
  %1367 = getelementptr inbounds i32, i32* %1363, i64 %1366
  store i32 %1362, i32* %1367, align 4
  %1368 = load %struct.xpakStat*, %struct.xpakStat** %12, align 8
  %1369 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %1368, i32 0, i32 9
  %1370 = load i32, i32* %1369, align 4
  %1371 = load i32*, i32** %6, align 8
  %1372 = load i32, i32* %7, align 4
  %1373 = add nsw i32 %1372, 1
  store i32 %1373, i32* %7, align 4
  %1374 = sext i32 %1372 to i64
  %1375 = getelementptr inbounds i32, i32* %1371, i64 %1374
  store i32 %1370, i32* %1375, align 4
  %1376 = load %struct.xpakStat*, %struct.xpakStat** %12, align 8
  %1377 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %1376, i32 0, i32 10
  %1378 = load i32, i32* %1377, align 4
  %1379 = load i32*, i32** %6, align 8
  %1380 = load i32, i32* %7, align 4
  %1381 = add nsw i32 %1380, 1
  store i32 %1381, i32* %7, align 4
  %1382 = sext i32 %1380 to i64
  %1383 = getelementptr inbounds i32, i32* %1379, i64 %1382
  store i32 %1378, i32* %1383, align 4
  %1384 = load %struct.xpakStat*, %struct.xpakStat** %12, align 8
  %1385 = getelementptr inbounds %struct.xpakStat, %struct.xpakStat* %1384, i32 0, i32 11
  %1386 = load i32, i32* %1385, align 4
  %1387 = load i32*, i32** %6, align 8
  %1388 = load i32, i32* %7, align 4
  %1389 = add nsw i32 %1388, 1
  store i32 %1389, i32* %7, align 4
  %1390 = sext i32 %1388 to i64
  %1391 = getelementptr inbounds i32, i32* %1387, i64 %1390
  store i32 %1386, i32* %1391, align 4
  %1392 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1393 = getelementptr inbounds %struct.swStat, %struct.swStat* %1392, i32 0, i32 7
  %1394 = load i32, i32* %1393, align 8
  %1395 = load i32*, i32** %6, align 8
  %1396 = load i32, i32* %7, align 4
  %1397 = add nsw i32 %1396, 1
  store i32 %1397, i32* %7, align 4
  %1398 = sext i32 %1396 to i64
  %1399 = getelementptr inbounds i32, i32* %1395, i64 %1398
  store i32 %1394, i32* %1399, align 4
  %1400 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1401 = getelementptr inbounds %struct.swStat, %struct.swStat* %1400, i32 0, i32 8
  %1402 = load i32, i32* %1401, align 4
  %1403 = load i32*, i32** %6, align 8
  %1404 = load i32, i32* %7, align 4
  %1405 = add nsw i32 %1404, 1
  store i32 %1405, i32* %7, align 4
  %1406 = sext i32 %1404 to i64
  %1407 = getelementptr inbounds i32, i32* %1403, i64 %1406
  store i32 %1402, i32* %1407, align 4
  %1408 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1409 = getelementptr inbounds %struct.swStat, %struct.swStat* %1408, i32 0, i32 9
  %1410 = load i32, i32* %1409, align 8
  %1411 = load i32*, i32** %6, align 8
  %1412 = load i32, i32* %7, align 4
  %1413 = add nsw i32 %1412, 1
  store i32 %1413, i32* %7, align 4
  %1414 = sext i32 %1412 to i64
  %1415 = getelementptr inbounds i32, i32* %1411, i64 %1414
  store i32 %1410, i32* %1415, align 4
  %1416 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1417 = getelementptr inbounds %struct.swStat, %struct.swStat* %1416, i32 0, i32 10
  %1418 = load i32, i32* %1417, align 4
  %1419 = load i32*, i32** %6, align 8
  %1420 = load i32, i32* %7, align 4
  %1421 = add nsw i32 %1420, 1
  store i32 %1421, i32* %7, align 4
  %1422 = sext i32 %1420 to i64
  %1423 = getelementptr inbounds i32, i32* %1419, i64 %1422
  store i32 %1418, i32* %1423, align 4
  %1424 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1425 = getelementptr inbounds %struct.swStat, %struct.swStat* %1424, i32 0, i32 11
  %1426 = load i32, i32* %1425, align 8
  %1427 = icmp ne i32 %1426, 0
  br i1 %1427, label %1428, label %1453

1428:                                             ; preds = %1295
  %1429 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1430 = getelementptr inbounds %struct.swStat, %struct.swStat* %1429, i32 0, i32 12
  %1431 = load i32, i32* %1430, align 4
  store i32 %1431, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %1432

1432:                                             ; preds = %1438, %1428
  %1433 = load i32, i32* %13, align 4
  %1434 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1435 = getelementptr inbounds %struct.swStat, %struct.swStat* %1434, i32 0, i32 11
  %1436 = load i32, i32* %1435, align 8
  %1437 = icmp sge i32 %1433, %1436
  br i1 %1437, label %1438, label %1446

1438:                                             ; preds = %1432
  %1439 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1440 = getelementptr inbounds %struct.swStat, %struct.swStat* %1439, i32 0, i32 11
  %1441 = load i32, i32* %1440, align 8
  %1442 = load i32, i32* %13, align 4
  %1443 = sub nsw i32 %1442, %1441
  store i32 %1443, i32* %13, align 4
  %1444 = load i32, i32* %14, align 4
  %1445 = add nsw i32 %1444, 1
  store i32 %1445, i32* %14, align 4
  br label %1432

1446:                                             ; preds = %1432
  %1447 = load i32, i32* %14, align 4
  %1448 = load i32*, i32** %6, align 8
  %1449 = load i32, i32* %7, align 4
  %1450 = add nsw i32 %1449, 1
  store i32 %1450, i32* %7, align 4
  %1451 = sext i32 %1449 to i64
  %1452 = getelementptr inbounds i32, i32* %1448, i64 %1451
  store i32 %1447, i32* %1452, align 4
  br label %1459

1453:                                             ; preds = %1295
  %1454 = load i32*, i32** %6, align 8
  %1455 = load i32, i32* %7, align 4
  %1456 = add nsw i32 %1455, 1
  store i32 %1456, i32* %7, align 4
  %1457 = sext i32 %1455 to i64
  %1458 = getelementptr inbounds i32, i32* %1454, i64 %1457
  store i32 0, i32* %1458, align 4
  br label %1459

1459:                                             ; preds = %1453, %1446
  %1460 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1461 = getelementptr inbounds %struct.swStat, %struct.swStat* %1460, i32 0, i32 13
  %1462 = load i32, i32* %1461, align 8
  %1463 = load i32*, i32** %6, align 8
  %1464 = load i32, i32* %7, align 4
  %1465 = add nsw i32 %1464, 1
  store i32 %1465, i32* %7, align 4
  %1466 = sext i32 %1464 to i64
  %1467 = getelementptr inbounds i32, i32* %1463, i64 %1466
  store i32 %1462, i32* %1467, align 4
  %1468 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1469 = getelementptr inbounds %struct.swStat, %struct.swStat* %1468, i32 0, i32 14
  %1470 = load i32, i32* %1469, align 4
  %1471 = load i32*, i32** %6, align 8
  %1472 = load i32, i32* %7, align 4
  %1473 = add nsw i32 %1472, 1
  store i32 %1473, i32* %7, align 4
  %1474 = sext i32 %1472 to i64
  %1475 = getelementptr inbounds i32, i32* %1471, i64 %1474
  store i32 %1470, i32* %1475, align 4
  %1476 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1477 = getelementptr inbounds %struct.swStat, %struct.swStat* %1476, i32 0, i32 15
  %1478 = load i32, i32* %1477, align 8
  %1479 = load i32*, i32** %6, align 8
  %1480 = load i32, i32* %7, align 4
  %1481 = add nsw i32 %1480, 1
  store i32 %1481, i32* %7, align 4
  %1482 = sext i32 %1480 to i64
  %1483 = getelementptr inbounds i32, i32* %1479, i64 %1482
  store i32 %1478, i32* %1483, align 4
  %1484 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1485 = getelementptr inbounds %struct.swStat, %struct.swStat* %1484, i32 0, i32 16
  %1486 = load i32, i32* %1485, align 4
  %1487 = load i32*, i32** %6, align 8
  %1488 = load i32, i32* %7, align 4
  %1489 = add nsw i32 %1488, 1
  store i32 %1489, i32* %7, align 4
  %1490 = sext i32 %1488 to i64
  %1491 = getelementptr inbounds i32, i32* %1487, i64 %1490
  store i32 %1486, i32* %1491, align 4
  %1492 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1493 = getelementptr inbounds %struct.swStat, %struct.swStat* %1492, i32 0, i32 17
  %1494 = load i32, i32* %1493, align 8
  %1495 = load i32*, i32** %6, align 8
  %1496 = load i32, i32* %7, align 4
  %1497 = add nsw i32 %1496, 1
  store i32 %1497, i32* %7, align 4
  %1498 = sext i32 %1496 to i64
  %1499 = getelementptr inbounds i32, i32* %1495, i64 %1498
  store i32 %1494, i32* %1499, align 4
  %1500 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1501 = getelementptr inbounds %struct.swStat, %struct.swStat* %1500, i32 0, i32 18
  %1502 = load i32, i32* %1501, align 4
  %1503 = load i32*, i32** %6, align 8
  %1504 = load i32, i32* %7, align 4
  %1505 = add nsw i32 %1504, 1
  store i32 %1505, i32* %7, align 4
  %1506 = sext i32 %1504 to i64
  %1507 = getelementptr inbounds i32, i32* %1503, i64 %1506
  store i32 %1502, i32* %1507, align 4
  %1508 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1509 = getelementptr inbounds %struct.swStat, %struct.swStat* %1508, i32 0, i32 19
  %1510 = load i32, i32* %1509, align 8
  %1511 = load i32*, i32** %6, align 8
  %1512 = load i32, i32* %7, align 4
  %1513 = add nsw i32 %1512, 1
  store i32 %1513, i32* %7, align 4
  %1514 = sext i32 %1512 to i64
  %1515 = getelementptr inbounds i32, i32* %1511, i64 %1514
  store i32 %1510, i32* %1515, align 4
  %1516 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1517 = getelementptr inbounds %struct.swStat, %struct.swStat* %1516, i32 0, i32 20
  %1518 = load i32, i32* %1517, align 4
  %1519 = load i32*, i32** %6, align 8
  %1520 = load i32, i32* %7, align 4
  %1521 = add nsw i32 %1520, 1
  store i32 %1521, i32* %7, align 4
  %1522 = sext i32 %1520 to i64
  %1523 = getelementptr inbounds i32, i32* %1519, i64 %1522
  store i32 %1518, i32* %1523, align 4
  %1524 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1525 = getelementptr inbounds %struct.swStat, %struct.swStat* %1524, i32 0, i32 21
  %1526 = load i32, i32* %1525, align 8
  %1527 = load i32*, i32** %6, align 8
  %1528 = load i32, i32* %7, align 4
  %1529 = add nsw i32 %1528, 1
  store i32 %1529, i32* %7, align 4
  %1530 = sext i32 %1528 to i64
  %1531 = getelementptr inbounds i32, i32* %1527, i64 %1530
  store i32 %1526, i32* %1531, align 4
  %1532 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1533 = getelementptr inbounds %struct.swStat, %struct.swStat* %1532, i32 0, i32 22
  %1534 = load i32, i32* %1533, align 4
  %1535 = load i32*, i32** %6, align 8
  %1536 = load i32, i32* %7, align 4
  %1537 = add nsw i32 %1536, 1
  store i32 %1537, i32* %7, align 4
  %1538 = sext i32 %1536 to i64
  %1539 = getelementptr inbounds i32, i32* %1535, i64 %1538
  store i32 %1534, i32* %1539, align 4
  %1540 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1541 = getelementptr inbounds %struct.swStat, %struct.swStat* %1540, i32 0, i32 23
  %1542 = load i32, i32* %1541, align 8
  %1543 = load i32*, i32** %6, align 8
  %1544 = load i32, i32* %7, align 4
  %1545 = add nsw i32 %1544, 1
  store i32 %1545, i32* %7, align 4
  %1546 = sext i32 %1544 to i64
  %1547 = getelementptr inbounds i32, i32* %1543, i64 %1546
  store i32 %1542, i32* %1547, align 4
  %1548 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1549 = getelementptr inbounds %struct.swStat, %struct.swStat* %1548, i32 0, i32 24
  %1550 = load i32, i32* %1549, align 4
  %1551 = load i32*, i32** %6, align 8
  %1552 = load i32, i32* %7, align 4
  %1553 = add nsw i32 %1552, 1
  store i32 %1553, i32* %7, align 4
  %1554 = sext i32 %1552 to i64
  %1555 = getelementptr inbounds i32, i32* %1551, i64 %1554
  store i32 %1550, i32* %1555, align 4
  %1556 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1557 = getelementptr inbounds %struct.swStat, %struct.swStat* %1556, i32 0, i32 25
  %1558 = load i32, i32* %1557, align 8
  %1559 = load i32*, i32** %6, align 8
  %1560 = load i32, i32* %7, align 4
  %1561 = add nsw i32 %1560, 1
  store i32 %1561, i32* %7, align 4
  %1562 = sext i32 %1560 to i64
  %1563 = getelementptr inbounds i32, i32* %1559, i64 %1562
  store i32 %1558, i32* %1563, align 4
  %1564 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1565 = getelementptr inbounds %struct.swStat, %struct.swStat* %1564, i32 0, i32 26
  %1566 = load i32, i32* %1565, align 4
  %1567 = load i32*, i32** %6, align 8
  %1568 = load i32, i32* %7, align 4
  %1569 = add nsw i32 %1568, 1
  store i32 %1569, i32* %7, align 4
  %1570 = sext i32 %1568 to i64
  %1571 = getelementptr inbounds i32, i32* %1567, i64 %1570
  store i32 %1566, i32* %1571, align 4
  %1572 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1573 = getelementptr inbounds %struct.swStat, %struct.swStat* %1572, i32 0, i32 27
  %1574 = load i32, i32* %1573, align 8
  %1575 = load i32*, i32** %6, align 8
  %1576 = load i32, i32* %7, align 4
  %1577 = add nsw i32 %1576, 1
  store i32 %1577, i32* %7, align 4
  %1578 = sext i32 %1576 to i64
  %1579 = getelementptr inbounds i32, i32* %1575, i64 %1578
  store i32 %1574, i32* %1579, align 4
  %1580 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1581 = getelementptr inbounds %struct.swStat, %struct.swStat* %1580, i32 0, i32 28
  %1582 = load i32, i32* %1581, align 4
  %1583 = load i32*, i32** %6, align 8
  %1584 = load i32, i32* %7, align 4
  %1585 = add nsw i32 %1584, 1
  store i32 %1585, i32* %7, align 4
  %1586 = sext i32 %1584 to i64
  %1587 = getelementptr inbounds i32, i32* %1583, i64 %1586
  store i32 %1582, i32* %1587, align 4
  %1588 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1589 = getelementptr inbounds %struct.swStat, %struct.swStat* %1588, i32 0, i32 29
  %1590 = load i32, i32* %1589, align 8
  %1591 = load i32*, i32** %6, align 8
  %1592 = load i32, i32* %7, align 4
  %1593 = add nsw i32 %1592, 1
  store i32 %1593, i32* %7, align 4
  %1594 = sext i32 %1592 to i64
  %1595 = getelementptr inbounds i32, i32* %1591, i64 %1594
  store i32 %1590, i32* %1595, align 4
  %1596 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1597 = getelementptr inbounds %struct.swStat, %struct.swStat* %1596, i32 0, i32 30
  %1598 = load i32, i32* %1597, align 4
  %1599 = load i32*, i32** %6, align 8
  %1600 = load i32, i32* %7, align 4
  %1601 = add nsw i32 %1600, 1
  store i32 %1601, i32* %7, align 4
  %1602 = sext i32 %1600 to i64
  %1603 = getelementptr inbounds i32, i32* %1599, i64 %1602
  store i32 %1598, i32* %1603, align 4
  %1604 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1605 = getelementptr inbounds %struct.swStat, %struct.swStat* %1604, i32 0, i32 31
  %1606 = load i32, i32* %1605, align 8
  %1607 = load i32*, i32** %6, align 8
  %1608 = load i32, i32* %7, align 4
  %1609 = add nsw i32 %1608, 1
  store i32 %1609, i32* %7, align 4
  %1610 = sext i32 %1608 to i64
  %1611 = getelementptr inbounds i32, i32* %1607, i64 %1610
  store i32 %1606, i32* %1611, align 4
  %1612 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1613 = getelementptr inbounds %struct.swStat, %struct.swStat* %1612, i32 0, i32 32
  %1614 = load i32, i32* %1613, align 4
  %1615 = load i32*, i32** %6, align 8
  %1616 = load i32, i32* %7, align 4
  %1617 = add nsw i32 %1616, 1
  store i32 %1617, i32* %7, align 4
  %1618 = sext i32 %1616 to i64
  %1619 = getelementptr inbounds i32, i32* %1615, i64 %1618
  store i32 %1614, i32* %1619, align 4
  %1620 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1621 = getelementptr inbounds %struct.swStat, %struct.swStat* %1620, i32 0, i32 33
  %1622 = load i32, i32* %1621, align 8
  %1623 = load i32*, i32** %6, align 8
  %1624 = load i32, i32* %7, align 4
  %1625 = add nsw i32 %1624, 1
  store i32 %1625, i32* %7, align 4
  %1626 = sext i32 %1624 to i64
  %1627 = getelementptr inbounds i32, i32* %1623, i64 %1626
  store i32 %1622, i32* %1627, align 4
  %1628 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1629 = getelementptr inbounds %struct.swStat, %struct.swStat* %1628, i32 0, i32 34
  %1630 = load i32, i32* %1629, align 4
  %1631 = load i32*, i32** %6, align 8
  %1632 = load i32, i32* %7, align 4
  %1633 = add nsw i32 %1632, 1
  store i32 %1633, i32* %7, align 4
  %1634 = sext i32 %1632 to i64
  %1635 = getelementptr inbounds i32, i32* %1631, i64 %1634
  store i32 %1630, i32* %1635, align 4
  %1636 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1637 = getelementptr inbounds %struct.swStat, %struct.swStat* %1636, i32 0, i32 35
  %1638 = load i32, i32* %1637, align 8
  %1639 = load i32*, i32** %6, align 8
  %1640 = load i32, i32* %7, align 4
  %1641 = add nsw i32 %1640, 1
  store i32 %1641, i32* %7, align 4
  %1642 = sext i32 %1640 to i64
  %1643 = getelementptr inbounds i32, i32* %1639, i64 %1642
  store i32 %1638, i32* %1643, align 4
  %1644 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1645 = getelementptr inbounds %struct.swStat, %struct.swStat* %1644, i32 0, i32 36
  %1646 = load i32, i32* %1645, align 4
  %1647 = load i32*, i32** %6, align 8
  %1648 = load i32, i32* %7, align 4
  %1649 = add nsw i32 %1648, 1
  store i32 %1649, i32* %7, align 4
  %1650 = sext i32 %1648 to i64
  %1651 = getelementptr inbounds i32, i32* %1647, i64 %1650
  store i32 %1646, i32* %1651, align 4
  %1652 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1653 = getelementptr inbounds %struct.swStat, %struct.swStat* %1652, i32 0, i32 37
  %1654 = load i32, i32* %1653, align 8
  %1655 = load i32*, i32** %6, align 8
  %1656 = load i32, i32* %7, align 4
  %1657 = add nsw i32 %1656, 1
  store i32 %1657, i32* %7, align 4
  %1658 = sext i32 %1656 to i64
  %1659 = getelementptr inbounds i32, i32* %1655, i64 %1658
  store i32 %1654, i32* %1659, align 4
  %1660 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1661 = getelementptr inbounds %struct.swStat, %struct.swStat* %1660, i32 0, i32 38
  %1662 = load i32, i32* %1661, align 4
  %1663 = load i32*, i32** %6, align 8
  %1664 = load i32, i32* %7, align 4
  %1665 = add nsw i32 %1664, 1
  store i32 %1665, i32* %7, align 4
  %1666 = sext i32 %1664 to i64
  %1667 = getelementptr inbounds i32, i32* %1663, i64 %1666
  store i32 %1662, i32* %1667, align 4
  %1668 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1669 = getelementptr inbounds %struct.swStat, %struct.swStat* %1668, i32 0, i32 39
  %1670 = load i32, i32* %1669, align 8
  %1671 = load i32*, i32** %6, align 8
  %1672 = load i32, i32* %7, align 4
  %1673 = add nsw i32 %1672, 1
  store i32 %1673, i32* %7, align 4
  %1674 = sext i32 %1672 to i64
  %1675 = getelementptr inbounds i32, i32* %1671, i64 %1674
  store i32 %1670, i32* %1675, align 4
  %1676 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1677 = getelementptr inbounds %struct.swStat, %struct.swStat* %1676, i32 0, i32 40
  %1678 = load i32, i32* %1677, align 4
  %1679 = load i32*, i32** %6, align 8
  %1680 = load i32, i32* %7, align 4
  %1681 = add nsw i32 %1680, 1
  store i32 %1681, i32* %7, align 4
  %1682 = sext i32 %1680 to i64
  %1683 = getelementptr inbounds i32, i32* %1679, i64 %1682
  store i32 %1678, i32* %1683, align 4
  %1684 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1685 = getelementptr inbounds %struct.swStat, %struct.swStat* %1684, i32 0, i32 41
  %1686 = load i32, i32* %1685, align 8
  %1687 = load i32*, i32** %6, align 8
  %1688 = load i32, i32* %7, align 4
  %1689 = add nsw i32 %1688, 1
  store i32 %1689, i32* %7, align 4
  %1690 = sext i32 %1688 to i64
  %1691 = getelementptr inbounds i32, i32* %1687, i64 %1690
  store i32 %1686, i32* %1691, align 4
  %1692 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1693 = getelementptr inbounds %struct.swStat, %struct.swStat* %1692, i32 0, i32 42
  %1694 = load i32, i32* %1693, align 4
  %1695 = load i32*, i32** %6, align 8
  %1696 = load i32, i32* %7, align 4
  %1697 = add nsw i32 %1696, 1
  store i32 %1697, i32* %7, align 4
  %1698 = sext i32 %1696 to i64
  %1699 = getelementptr inbounds i32, i32* %1695, i64 %1698
  store i32 %1694, i32* %1699, align 4
  %1700 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1701 = getelementptr inbounds %struct.swStat, %struct.swStat* %1700, i32 0, i32 43
  %1702 = load i32, i32* %1701, align 8
  %1703 = load i32*, i32** %6, align 8
  %1704 = load i32, i32* %7, align 4
  %1705 = add nsw i32 %1704, 1
  store i32 %1705, i32* %7, align 4
  %1706 = sext i32 %1704 to i64
  %1707 = getelementptr inbounds i32, i32* %1703, i64 %1706
  store i32 %1702, i32* %1707, align 4
  %1708 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1709 = getelementptr inbounds %struct.swStat, %struct.swStat* %1708, i32 0, i32 44
  %1710 = load i32, i32* %1709, align 4
  %1711 = load i32*, i32** %6, align 8
  %1712 = load i32, i32* %7, align 4
  %1713 = add nsw i32 %1712, 1
  store i32 %1713, i32* %7, align 4
  %1714 = sext i32 %1712 to i64
  %1715 = getelementptr inbounds i32, i32* %1711, i64 %1714
  store i32 %1710, i32* %1715, align 4
  %1716 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1717 = getelementptr inbounds %struct.swStat, %struct.swStat* %1716, i32 0, i32 45
  %1718 = load i32, i32* %1717, align 8
  %1719 = load i32*, i32** %6, align 8
  %1720 = load i32, i32* %7, align 4
  %1721 = add nsw i32 %1720, 1
  store i32 %1721, i32* %7, align 4
  %1722 = sext i32 %1720 to i64
  %1723 = getelementptr inbounds i32, i32* %1719, i64 %1722
  store i32 %1718, i32* %1723, align 4
  %1724 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1725 = getelementptr inbounds %struct.swStat, %struct.swStat* %1724, i32 0, i32 46
  %1726 = load i32, i32* %1725, align 4
  %1727 = load i32*, i32** %6, align 8
  %1728 = load i32, i32* %7, align 4
  %1729 = add nsw i32 %1728, 1
  store i32 %1729, i32* %7, align 4
  %1730 = sext i32 %1728 to i64
  %1731 = getelementptr inbounds i32, i32* %1727, i64 %1730
  store i32 %1726, i32* %1731, align 4
  %1732 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1733 = getelementptr inbounds %struct.swStat, %struct.swStat* %1732, i32 0, i32 47
  %1734 = load i32, i32* %1733, align 8
  %1735 = load i32*, i32** %6, align 8
  %1736 = load i32, i32* %7, align 4
  %1737 = add nsw i32 %1736, 1
  store i32 %1737, i32* %7, align 4
  %1738 = sext i32 %1736 to i64
  %1739 = getelementptr inbounds i32, i32* %1735, i64 %1738
  store i32 %1734, i32* %1739, align 4
  %1740 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1741 = getelementptr inbounds %struct.swStat, %struct.swStat* %1740, i32 0, i32 48
  %1742 = load i32, i32* %1741, align 4
  %1743 = load i32*, i32** %6, align 8
  %1744 = load i32, i32* %7, align 4
  %1745 = add nsw i32 %1744, 1
  store i32 %1745, i32* %7, align 4
  %1746 = sext i32 %1744 to i64
  %1747 = getelementptr inbounds i32, i32* %1743, i64 %1746
  store i32 %1742, i32* %1747, align 4
  %1748 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1749 = getelementptr inbounds %struct.swStat, %struct.swStat* %1748, i32 0, i32 49
  %1750 = load i32, i32* %1749, align 8
  %1751 = load i32*, i32** %6, align 8
  %1752 = load i32, i32* %7, align 4
  %1753 = add nsw i32 %1752, 1
  store i32 %1753, i32* %7, align 4
  %1754 = sext i32 %1752 to i64
  %1755 = getelementptr inbounds i32, i32* %1751, i64 %1754
  store i32 %1750, i32* %1755, align 4
  %1756 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1757 = getelementptr inbounds %struct.swStat, %struct.swStat* %1756, i32 0, i32 50
  %1758 = load i32, i32* %1757, align 4
  %1759 = load i32*, i32** %6, align 8
  %1760 = load i32, i32* %7, align 4
  %1761 = add nsw i32 %1760, 1
  store i32 %1761, i32* %7, align 4
  %1762 = sext i32 %1760 to i64
  %1763 = getelementptr inbounds i32, i32* %1759, i64 %1762
  store i32 %1758, i32* %1763, align 4
  %1764 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1765 = getelementptr inbounds %struct.swStat, %struct.swStat* %1764, i32 0, i32 51
  %1766 = load i32, i32* %1765, align 8
  %1767 = load i32*, i32** %6, align 8
  %1768 = load i32, i32* %7, align 4
  %1769 = add nsw i32 %1768, 1
  store i32 %1769, i32* %7, align 4
  %1770 = sext i32 %1768 to i64
  %1771 = getelementptr inbounds i32, i32* %1767, i64 %1770
  store i32 %1766, i32* %1771, align 4
  %1772 = load %struct.swStat*, %struct.swStat** %11, align 8
  %1773 = getelementptr inbounds %struct.swStat, %struct.swStat* %1772, i32 0, i32 52
  %1774 = load i32, i32* %1773, align 4
  %1775 = load i32*, i32** %6, align 8
  %1776 = load i32, i32* %7, align 4
  %1777 = add nsw i32 %1776, 1
  store i32 %1777, i32* %7, align 4
  %1778 = sext i32 %1776 to i64
  %1779 = getelementptr inbounds i32, i32* %1775, i64 %1778
  store i32 %1774, i32* %1779, align 4
  ret void
}

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @s2io_updt_stats(%struct.s2io_nic*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
