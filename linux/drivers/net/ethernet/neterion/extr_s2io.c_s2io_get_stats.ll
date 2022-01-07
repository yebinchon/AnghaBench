; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_s2io_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.s2io_nic = type { %struct.TYPE_2__, %struct.mac_info }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.mac_info = type { %struct.stat_block* }
%struct.stat_block = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @s2io_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @s2io_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.s2io_nic*, align 8
  %4 = alloca %struct.mac_info*, align 8
  %5 = alloca %struct.stat_block*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.s2io_nic* @netdev_priv(%struct.net_device* %7)
  store %struct.s2io_nic* %8, %struct.s2io_nic** %3, align 8
  %9 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %10 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %9, i32 0, i32 1
  store %struct.mac_info* %10, %struct.mac_info** %4, align 8
  %11 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %12 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %11, i32 0, i32 0
  %13 = load %struct.stat_block*, %struct.stat_block** %12, align 8
  store %struct.stat_block* %13, %struct.stat_block** %5, align 8
  %14 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %15 = call i32 @s2io_updt_stats(%struct.s2io_nic* %14)
  %16 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %17 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %16, i32 0, i32 18
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  %20 = shl i32 %19, 32
  %21 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %22 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %21, i32 0, i32 17
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  %25 = or i32 %20, %24
  %26 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %27 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %25, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %33 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, %31
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %44 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %43, i32 0, i32 16
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = shl i32 %46, 32
  %48 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %49 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %48, i32 0, i32 15
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @le32_to_cpu(i32 %50)
  %52 = or i32 %47, %51
  %53 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %54 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %52, %56
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %60 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, %58
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %71 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %70, i32 0, i32 14
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le32_to_cpu(i32 %72)
  %74 = shl i32 %73, 32
  %75 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %76 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %75, i32 0, i32 13
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  %79 = or i32 %74, %78
  %80 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %81 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = sub nsw i32 %79, %83
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %87 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, %85
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, %91
  store i32 %96, i32* %94, align 4
  %97 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %98 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %97, i32 0, i32 12
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @le32_to_cpu(i32 %99)
  %101 = shl i32 %100, 32
  %102 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %103 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %102, i32 0, i32 11
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @le32_to_cpu(i32 %104)
  %106 = or i32 %101, %105
  %107 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %108 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %106, %110
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %114 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %112
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load %struct.net_device*, %struct.net_device** %2, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, %118
  store i32 %123, i32* %121, align 4
  %124 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %125 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %124, i32 0, i32 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le64_to_cpu(i32 %126)
  %128 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %129 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %127, %131
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %135 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, %133
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* %6, align 4
  %140 = load %struct.net_device*, %struct.net_device** %2, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, %139
  store i32 %144, i32* %142, align 4
  %145 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %146 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @le32_to_cpu(i32 %147)
  %149 = shl i32 %148, 32
  %150 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %151 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @le32_to_cpu(i32 %152)
  %154 = or i32 %149, %153
  %155 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %156 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %154, %158
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %162 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, %160
  store i32 %165, i32* %163, align 4
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.net_device*, %struct.net_device** %2, align 8
  %168 = getelementptr inbounds %struct.net_device, %struct.net_device* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = add nsw i32 %170, %166
  store i32 %171, i32* %169, align 4
  %172 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %173 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @le64_to_cpu(i32 %174)
  %176 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %177 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %175, %179
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %183 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 6
  %185 = load i32, i32* %184, align 8
  %186 = add nsw i32 %185, %181
  store i32 %186, i32* %184, align 8
  %187 = load i32, i32* %6, align 4
  %188 = load %struct.net_device*, %struct.net_device** %2, align 8
  %189 = getelementptr inbounds %struct.net_device, %struct.net_device* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, %187
  store i32 %192, i32* %190, align 4
  %193 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %194 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %193, i32 0, i32 7
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @le64_to_cpu(i32 %195)
  %197 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %198 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 4
  %201 = sub nsw i32 %196, %200
  store i32 %201, i32* %6, align 4
  %202 = load i32, i32* %6, align 4
  %203 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %204 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, %202
  store i32 %207, i32* %205, align 4
  %208 = load i32, i32* %6, align 4
  %209 = load %struct.net_device*, %struct.net_device** %2, align 8
  %210 = getelementptr inbounds %struct.net_device, %struct.net_device* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %210, i32 0, i32 7
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %212, %208
  store i32 %213, i32* %211, align 4
  %214 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %215 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @le32_to_cpu(i32 %216)
  %218 = shl i32 %217, 32
  %219 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %220 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @le32_to_cpu(i32 %221)
  %223 = or i32 %218, %222
  store i32 %223, i32* %6, align 4
  %224 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %225 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @le64_to_cpu(i32 %226)
  %228 = load i32, i32* %6, align 4
  %229 = sub nsw i32 %228, %227
  store i32 %229, i32* %6, align 4
  %230 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %231 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %231, i32 0, i32 10
  %233 = load i64, i64* %232, align 8
  %234 = load i32, i32* %6, align 4
  %235 = sext i32 %234 to i64
  %236 = sub nsw i64 %235, %233
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %6, align 4
  %238 = load i32, i32* %6, align 4
  %239 = sext i32 %238 to i64
  %240 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %241 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %241, i32 0, i32 10
  %243 = load i64, i64* %242, align 8
  %244 = add nsw i64 %243, %239
  store i64 %244, i64* %242, align 8
  %245 = load i32, i32* %6, align 4
  %246 = load %struct.net_device*, %struct.net_device** %2, align 8
  %247 = getelementptr inbounds %struct.net_device, %struct.net_device* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %247, i32 0, i32 8
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, %245
  store i32 %250, i32* %248, align 4
  %251 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %252 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @le32_to_cpu(i32 %253)
  %255 = shl i32 %254, 32
  %256 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %257 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @le32_to_cpu(i32 %258)
  %260 = or i32 %255, %259
  %261 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %262 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @le64_to_cpu(i32 %263)
  %265 = add nsw i32 %260, %264
  %266 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %267 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 8
  %269 = load i32, i32* %268, align 8
  %270 = sub nsw i32 %265, %269
  store i32 %270, i32* %6, align 4
  %271 = load i32, i32* %6, align 4
  %272 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %273 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 8
  %275 = load i32, i32* %274, align 8
  %276 = add nsw i32 %275, %271
  store i32 %276, i32* %274, align 8
  %277 = load i32, i32* %6, align 4
  %278 = load %struct.net_device*, %struct.net_device** %2, align 8
  %279 = getelementptr inbounds %struct.net_device, %struct.net_device* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %279, i32 0, i32 9
  %281 = load i32, i32* %280, align 4
  %282 = add nsw i32 %281, %277
  store i32 %282, i32* %280, align 4
  %283 = load %struct.stat_block*, %struct.stat_block** %5, align 8
  %284 = getelementptr inbounds %struct.stat_block, %struct.stat_block* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @le64_to_cpu(i32 %285)
  %287 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %288 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %288, i32 0, i32 9
  %290 = load i32, i32* %289, align 4
  %291 = sub nsw i32 %286, %290
  store i32 %291, i32* %6, align 4
  %292 = load i32, i32* %6, align 4
  %293 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %294 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %294, i32 0, i32 9
  %296 = load i32, i32* %295, align 4
  %297 = add nsw i32 %296, %292
  store i32 %297, i32* %295, align 4
  %298 = load i32, i32* %6, align 4
  %299 = load %struct.net_device*, %struct.net_device** %2, align 8
  %300 = getelementptr inbounds %struct.net_device, %struct.net_device* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %300, i32 0, i32 10
  %302 = load i32, i32* %301, align 4
  %303 = add nsw i32 %302, %298
  store i32 %303, i32* %301, align 4
  %304 = load %struct.net_device*, %struct.net_device** %2, align 8
  %305 = getelementptr inbounds %struct.net_device, %struct.net_device* %304, i32 0, i32 0
  ret %struct.net_device_stats* %305
}

declare dso_local %struct.s2io_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @s2io_updt_stats(%struct.s2io_nic*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
