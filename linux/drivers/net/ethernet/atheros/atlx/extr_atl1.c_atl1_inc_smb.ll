; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_inc_smb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_inc_smb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.net_device* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.stats_msg_block* }
%struct.stats_msg_block = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1_adapter*)* @atl1_inc_smb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1_inc_smb(%struct.atl1_adapter* %0) #0 {
  %2 = alloca %struct.atl1_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.stats_msg_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %2, align 8
  %7 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %7, i32 0, i32 2
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.stats_msg_block*, %struct.stats_msg_block** %12, align 8
  store %struct.stats_msg_block* %13, %struct.stats_msg_block** %4, align 8
  %14 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %15 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %14, i32 0, i32 20
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %18 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %17, i32 0, i32 12
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %22 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %21, i32 0, i32 13
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %26 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %25, i32 0, i32 8
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %30 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %29, i32 0, i32 14
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %34 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %33, i32 0, i32 9
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %32, %35
  %37 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %38 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %37, i32 0, i32 11
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %36, %39
  store i64 %40, i64* %5, align 8
  %41 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %42 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %45 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %49 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %53 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %51, %54
  store i64 %55, i64* %6, align 8
  %56 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %57 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %56, i32 0, i32 19
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = add nsw i64 %58, %59
  %61 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %60
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  %68 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %69 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %68, i32 0, i32 18
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = add nsw i64 %70, %71
  %73 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %72
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 8
  %80 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %81 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %80, i32 0, i32 17
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %84 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 16
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %87, %82
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %85, align 8
  %90 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %91 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %90, i32 0, i32 16
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %94 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 15
  %96 = load i32, i32* %95, align 4
  %97 = sext i32 %96 to i64
  %98 = add nsw i64 %97, %92
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %95, align 4
  %100 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %101 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %100, i32 0, i32 15
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %104 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 14
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %102
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 8
  %110 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %111 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %114 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %112, %115
  %117 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %118 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %122 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %121, i32 0, i32 7
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %120, %123
  %125 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %126 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 13
  %128 = load i32, i32* %127, align 4
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %129, %124
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  %132 = load i64, i64* %5, align 8
  %133 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %134 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 12
  %136 = load i32, i32* %135, align 8
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %132
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %135, align 8
  %140 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %141 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %140, i32 0, i32 14
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %144 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 8
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = add nsw i64 %147, %142
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %145, align 8
  %150 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %151 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %150, i32 0, i32 13
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %154 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 11
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %157, %152
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %155, align 4
  %160 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %161 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %160, i32 0, i32 12
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %164 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 10
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %162
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %165, align 8
  %170 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %171 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %170, i32 0, i32 11
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %174 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = add nsw i64 %177, %172
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %175, align 4
  %180 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %181 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %180, i32 0, i32 10
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %184 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 26
  %186 = load i32, i32* %185, align 8
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %187, %182
  %189 = trunc i64 %188 to i32
  store i32 %189, i32* %185, align 8
  %190 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %191 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %190, i32 0, i32 9
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %194 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = add nsw i64 %197, %192
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %195, align 4
  %200 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %201 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %200, i32 0, i32 8
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %204 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 25
  %206 = load i32, i32* %205, align 4
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %207, %202
  %209 = trunc i64 %208 to i32
  store i32 %209, i32* %205, align 4
  %210 = load i64, i64* %6, align 8
  %211 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %212 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = sext i32 %214 to i64
  %216 = add nsw i64 %215, %210
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %213, align 8
  %218 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %219 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %222 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 4
  %225 = sext i32 %224 to i64
  %226 = add nsw i64 %225, %220
  %227 = trunc i64 %226 to i32
  store i32 %227, i32* %223, align 4
  %228 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %229 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %228, i32 0, i32 7
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %232 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = sext i32 %234 to i64
  %236 = add nsw i64 %235, %230
  %237 = trunc i64 %236 to i32
  store i32 %237, i32* %233, align 8
  %238 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %239 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %238, i32 0, i32 3
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %242 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = add nsw i64 %245, %240
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %243, align 4
  %248 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %249 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %248, i32 0, i32 7
  %250 = load i64, i64* %249, align 8
  %251 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %252 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 24
  %254 = load i32, i32* %253, align 8
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %255, %250
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %253, align 8
  %258 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %259 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %258, i32 0, i32 6
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %262 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 23
  %264 = load i32, i32* %263, align 4
  %265 = sext i32 %264 to i64
  %266 = add nsw i64 %265, %260
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %263, align 4
  %268 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %269 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %268, i32 0, i32 5
  %270 = load i64, i64* %269, align 8
  %271 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %272 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 22
  %274 = load i32, i32* %273, align 8
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %275, %270
  %277 = trunc i64 %276 to i32
  store i32 %277, i32* %273, align 8
  %278 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %279 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %282 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 21
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = add nsw i64 %285, %280
  %287 = trunc i64 %286 to i32
  store i32 %287, i32* %283, align 4
  %288 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %289 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %292 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %292, i32 0, i32 20
  %294 = load i32, i32* %293, align 8
  %295 = sext i32 %294 to i64
  %296 = add nsw i64 %295, %290
  %297 = trunc i64 %296 to i32
  store i32 %297, i32* %293, align 8
  %298 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %299 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %302 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 19
  %304 = load i32, i32* %303, align 4
  %305 = sext i32 %304 to i64
  %306 = add nsw i64 %305, %300
  %307 = trunc i64 %306 to i32
  store i32 %307, i32* %303, align 4
  %308 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %309 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %312 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 18
  %314 = load i32, i32* %313, align 8
  %315 = sext i32 %314 to i64
  %316 = add nsw i64 %315, %310
  %317 = trunc i64 %316 to i32
  store i32 %317, i32* %313, align 8
  %318 = load %struct.stats_msg_block*, %struct.stats_msg_block** %4, align 8
  %319 = getelementptr inbounds %struct.stats_msg_block, %struct.stats_msg_block* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %322 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 17
  %324 = load i32, i32* %323, align 4
  %325 = sext i32 %324 to i64
  %326 = add nsw i64 %325, %320
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %323, align 4
  %328 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %329 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 16
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.net_device*, %struct.net_device** %3, align 8
  %333 = getelementptr inbounds %struct.net_device, %struct.net_device* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 16
  store i32 %331, i32* %334, align 4
  %335 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %336 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %335, i32 0, i32 0
  %337 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %336, i32 0, i32 15
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.net_device*, %struct.net_device** %3, align 8
  %340 = getelementptr inbounds %struct.net_device, %struct.net_device* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 15
  store i32 %338, i32* %341, align 4
  %342 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %343 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 14
  %345 = load i32, i32* %344, align 8
  %346 = load %struct.net_device*, %struct.net_device** %3, align 8
  %347 = getelementptr inbounds %struct.net_device, %struct.net_device* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i32 0, i32 14
  store i32 %345, i32* %348, align 4
  %349 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %350 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %350, i32 0, i32 13
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.net_device*, %struct.net_device** %3, align 8
  %354 = getelementptr inbounds %struct.net_device, %struct.net_device* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 13
  store i32 %352, i32* %355, align 4
  %356 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %357 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %356, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 12
  %359 = load i32, i32* %358, align 8
  %360 = load %struct.net_device*, %struct.net_device** %3, align 8
  %361 = getelementptr inbounds %struct.net_device, %struct.net_device* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 12
  store i32 %359, i32* %362, align 4
  %363 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %364 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %364, i32 0, i32 11
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.net_device*, %struct.net_device** %3, align 8
  %368 = getelementptr inbounds %struct.net_device, %struct.net_device* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %368, i32 0, i32 11
  store i32 %366, i32* %369, align 4
  %370 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %371 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 10
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.net_device*, %struct.net_device** %3, align 8
  %375 = getelementptr inbounds %struct.net_device, %struct.net_device* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 10
  store i32 %373, i32* %376, align 4
  %377 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %378 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 9
  %380 = load i32, i32* %379, align 4
  %381 = load %struct.net_device*, %struct.net_device** %3, align 8
  %382 = getelementptr inbounds %struct.net_device, %struct.net_device* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %382, i32 0, i32 9
  store i32 %380, i32* %383, align 4
  %384 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %385 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i32 0, i32 8
  %387 = load i32, i32* %386, align 8
  %388 = load %struct.net_device*, %struct.net_device** %3, align 8
  %389 = getelementptr inbounds %struct.net_device, %struct.net_device* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %389, i32 0, i32 8
  store i32 %387, i32* %390, align 4
  %391 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %392 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %392, i32 0, i32 7
  %394 = load i32, i32* %393, align 4
  %395 = load %struct.net_device*, %struct.net_device** %3, align 8
  %396 = getelementptr inbounds %struct.net_device, %struct.net_device* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 7
  store i32 %394, i32* %397, align 4
  %398 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %399 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %399, i32 0, i32 6
  %401 = load i32, i32* %400, align 8
  %402 = load %struct.net_device*, %struct.net_device** %3, align 8
  %403 = getelementptr inbounds %struct.net_device, %struct.net_device* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 6
  store i32 %401, i32* %404, align 4
  %405 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %406 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 5
  %408 = load i32, i32* %407, align 4
  %409 = load %struct.net_device*, %struct.net_device** %3, align 8
  %410 = getelementptr inbounds %struct.net_device, %struct.net_device* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %410, i32 0, i32 5
  store i32 %408, i32* %411, align 4
  %412 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %413 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %413, i32 0, i32 4
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.net_device*, %struct.net_device** %3, align 8
  %417 = getelementptr inbounds %struct.net_device, %struct.net_device* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %417, i32 0, i32 4
  store i32 %415, i32* %418, align 4
  %419 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %420 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.net_device*, %struct.net_device** %3, align 8
  %424 = getelementptr inbounds %struct.net_device, %struct.net_device* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %424, i32 0, i32 3
  store i32 %422, i32* %425, align 4
  %426 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %427 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i32 0, i32 2
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.net_device*, %struct.net_device** %3, align 8
  %431 = getelementptr inbounds %struct.net_device, %struct.net_device* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %431, i32 0, i32 2
  store i32 %429, i32* %432, align 4
  %433 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %434 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %433, i32 0, i32 0
  %435 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %434, i32 0, i32 1
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.net_device*, %struct.net_device** %3, align 8
  %438 = getelementptr inbounds %struct.net_device, %struct.net_device* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %438, i32 0, i32 1
  store i32 %436, i32* %439, align 4
  %440 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %441 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %441, i32 0, i32 0
  %443 = load i32, i32* %442, align 8
  %444 = load %struct.net_device*, %struct.net_device** %3, align 8
  %445 = getelementptr inbounds %struct.net_device, %struct.net_device* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 0
  store i32 %443, i32* %446, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
