; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mib_counters_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_mib_counters_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32, %struct.mib_counters }
%struct.mib_counters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@RX_DISCARD_FRAME_CNT = common dso_local global i32 0, align 4
@RX_OVERRUN_FRAME_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv643xx_eth_private*)* @mib_counters_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mib_counters_update(%struct.mv643xx_eth_private* %0) #0 {
  %2 = alloca %struct.mv643xx_eth_private*, align 8
  %3 = alloca %struct.mib_counters*, align 8
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %2, align 8
  %4 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %5 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %4, i32 0, i32 1
  store %struct.mib_counters* %5, %struct.mib_counters** %3, align 8
  %6 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %7 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %10 = call i64 @mib_read(%struct.mv643xx_eth_private* %9, i32 0)
  %11 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %12 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %11, i32 0, i32 31
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %10
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 4
  %17 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %18 = call i64 @mib_read(%struct.mv643xx_eth_private* %17, i32 8)
  %19 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %20 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %19, i32 0, i32 30
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %22, %18
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %20, align 4
  %25 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %26 = call i64 @mib_read(%struct.mv643xx_eth_private* %25, i32 12)
  %27 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %28 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %27, i32 0, i32 29
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %26
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %28, align 4
  %33 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %34 = call i64 @mib_read(%struct.mv643xx_eth_private* %33, i32 16)
  %35 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %36 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %35, i32 0, i32 28
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %38, %34
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %36, align 4
  %41 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %42 = call i64 @mib_read(%struct.mv643xx_eth_private* %41, i32 20)
  %43 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %44 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %43, i32 0, i32 27
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %42
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %44, align 4
  %49 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %50 = call i64 @mib_read(%struct.mv643xx_eth_private* %49, i32 24)
  %51 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %52 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %51, i32 0, i32 26
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %50
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %58 = call i64 @mib_read(%struct.mv643xx_eth_private* %57, i32 28)
  %59 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %60 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %59, i32 0, i32 25
  %61 = load i32, i32* %60, align 4
  %62 = sext i32 %61 to i64
  %63 = add nsw i64 %62, %58
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %60, align 4
  %65 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %66 = call i64 @mib_read(%struct.mv643xx_eth_private* %65, i32 32)
  %67 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %68 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %67, i32 0, i32 24
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %66
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %68, align 4
  %73 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %74 = call i64 @mib_read(%struct.mv643xx_eth_private* %73, i32 36)
  %75 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %76 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %75, i32 0, i32 23
  %77 = load i32, i32* %76, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %74
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %76, align 4
  %81 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %82 = call i64 @mib_read(%struct.mv643xx_eth_private* %81, i32 40)
  %83 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %84 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %83, i32 0, i32 22
  %85 = load i32, i32* %84, align 4
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %86, %82
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %84, align 4
  %89 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %90 = call i64 @mib_read(%struct.mv643xx_eth_private* %89, i32 44)
  %91 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %92 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %91, i32 0, i32 21
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  %97 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %98 = call i64 @mib_read(%struct.mv643xx_eth_private* %97, i32 48)
  %99 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %100 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %99, i32 0, i32 20
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %102, %98
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 4
  %105 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %106 = call i64 @mib_read(%struct.mv643xx_eth_private* %105, i32 52)
  %107 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %108 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %107, i32 0, i32 19
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = add nsw i64 %110, %106
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %108, align 4
  %113 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %114 = call i64 @mib_read(%struct.mv643xx_eth_private* %113, i32 56)
  %115 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %116 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %115, i32 0, i32 18
  %117 = load i32, i32* %116, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %114
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %116, align 4
  %121 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %122 = call i64 @mib_read(%struct.mv643xx_eth_private* %121, i32 64)
  %123 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %124 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %123, i32 0, i32 17
  %125 = load i32, i32* %124, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %126, %122
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %124, align 4
  %129 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %130 = call i64 @mib_read(%struct.mv643xx_eth_private* %129, i32 68)
  %131 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %132 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %131, i32 0, i32 16
  %133 = load i32, i32* %132, align 4
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %130
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 4
  %137 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %138 = call i64 @mib_read(%struct.mv643xx_eth_private* %137, i32 72)
  %139 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %140 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %139, i32 0, i32 15
  %141 = load i32, i32* %140, align 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %142, %138
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %140, align 4
  %145 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %146 = call i64 @mib_read(%struct.mv643xx_eth_private* %145, i32 76)
  %147 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %148 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %147, i32 0, i32 14
  %149 = load i32, i32* %148, align 4
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %150, %146
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %148, align 4
  %153 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %154 = call i64 @mib_read(%struct.mv643xx_eth_private* %153, i32 80)
  %155 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %156 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %155, i32 0, i32 13
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 4
  %161 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %162 = call i64 @mib_read(%struct.mv643xx_eth_private* %161, i32 84)
  %163 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %164 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %163, i32 0, i32 12
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %162
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %164, align 4
  %169 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %170 = call i64 @mib_read(%struct.mv643xx_eth_private* %169, i32 88)
  %171 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %172 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %171, i32 0, i32 11
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = add nsw i64 %174, %170
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %172, align 4
  %177 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %178 = call i64 @mib_read(%struct.mv643xx_eth_private* %177, i32 92)
  %179 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %180 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %179, i32 0, i32 10
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %182, %178
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %180, align 4
  %185 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %186 = call i64 @mib_read(%struct.mv643xx_eth_private* %185, i32 96)
  %187 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %188 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %187, i32 0, i32 9
  %189 = load i32, i32* %188, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %186
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %188, align 4
  %193 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %194 = call i64 @mib_read(%struct.mv643xx_eth_private* %193, i32 100)
  %195 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %196 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %195, i32 0, i32 8
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = add nsw i64 %198, %194
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %196, align 4
  %201 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %202 = call i64 @mib_read(%struct.mv643xx_eth_private* %201, i32 104)
  %203 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %204 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 4
  %206 = sext i32 %205 to i64
  %207 = add nsw i64 %206, %202
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %204, align 4
  %209 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %210 = call i64 @mib_read(%struct.mv643xx_eth_private* %209, i32 108)
  %211 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %212 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %214, %210
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %212, align 4
  %217 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %218 = call i64 @mib_read(%struct.mv643xx_eth_private* %217, i32 112)
  %219 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %220 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = add nsw i64 %222, %218
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %220, align 4
  %225 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %226 = call i64 @mib_read(%struct.mv643xx_eth_private* %225, i32 116)
  %227 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %228 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = sext i32 %229 to i64
  %231 = add nsw i64 %230, %226
  %232 = trunc i64 %231 to i32
  store i32 %232, i32* %228, align 4
  %233 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %234 = call i64 @mib_read(%struct.mv643xx_eth_private* %233, i32 120)
  %235 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %236 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %238, %234
  %240 = trunc i64 %239 to i32
  store i32 %240, i32* %236, align 4
  %241 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %242 = call i64 @mib_read(%struct.mv643xx_eth_private* %241, i32 124)
  %243 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %244 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 4
  %246 = sext i32 %245 to i64
  %247 = add nsw i64 %246, %242
  %248 = trunc i64 %247 to i32
  store i32 %248, i32* %244, align 4
  %249 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %250 = load i32, i32* @RX_DISCARD_FRAME_CNT, align 4
  %251 = call i64 @rdlp(%struct.mv643xx_eth_private* %249, i32 %250)
  %252 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %253 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = sext i32 %254 to i64
  %256 = add nsw i64 %255, %251
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %253, align 4
  %258 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %259 = load i32, i32* @RX_OVERRUN_FRAME_CNT, align 4
  %260 = call i64 @rdlp(%struct.mv643xx_eth_private* %258, i32 %259)
  %261 = load %struct.mib_counters*, %struct.mib_counters** %3, align 8
  %262 = getelementptr inbounds %struct.mib_counters, %struct.mib_counters* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = sext i32 %263 to i64
  %265 = add nsw i64 %264, %260
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %262, align 4
  %267 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %2, align 8
  %268 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %267, i32 0, i32 0
  %269 = call i32 @spin_unlock_bh(i32* %268)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @mib_read(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i64 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
