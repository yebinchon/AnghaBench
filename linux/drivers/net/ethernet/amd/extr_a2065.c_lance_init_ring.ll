; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_a2065.c_lance_init_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_a2065.c_lance_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.lance_private = type { i32, i32, i64, i64, i64, i64, %struct.lance_init_block*, %struct.lance_init_block* }
%struct.lance_init_block = type { i32, i32, i32, i32, i64*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__***, %struct.TYPE_2__***, i32*, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"TX rings:\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%d: 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"RX rings:\0A\00", align 1
@LE_R1_OWN = common dso_local global i32 0, align 4
@RX_BUFF_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"RX ptr: %08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"TX ptr: %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @lance_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lance_init_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lance_private*, align 8
  %4 = alloca %struct.lance_init_block*, align 8
  %5 = alloca %struct.lance_init_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.lance_private* @netdev_priv(%struct.net_device* %8)
  store %struct.lance_private* %9, %struct.lance_private** %3, align 8
  %10 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %11 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %10, i32 0, i32 7
  %12 = load %struct.lance_init_block*, %struct.lance_init_block** %11, align 8
  store %struct.lance_init_block* %12, %struct.lance_init_block** %4, align 8
  %13 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %14 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %13, i32 0, i32 6
  %15 = load %struct.lance_init_block*, %struct.lance_init_block** %14, align 8
  store %struct.lance_init_block* %15, %struct.lance_init_block** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @netif_stop_queue(%struct.net_device* %16)
  %18 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %19 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %18, i32 0, i32 4
  store i64 0, i64* %19, align 8
  %20 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %21 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %20, i32 0, i32 5
  store i64 0, i64* %21, align 8
  %22 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %23 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %25 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %27 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %26, i32 0, i32 10
  store volatile i64 0, i64* %27, align 8
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %34 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %33, i32 0, i32 9
  %35 = load volatile i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  store i32 %32, i32* %36, align 4
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %43 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %42, i32 0, i32 9
  %44 = load volatile i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 %41, i32* %45, align 4
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %52 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %51, i32 0, i32 9
  %53 = load volatile i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32 %50, i32* %54, align 4
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %61 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %60, i32 0, i32 9
  %62 = load volatile i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  store i32 %59, i32* %63, align 4
  %64 = load %struct.net_device*, %struct.net_device** %2, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %70 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %69, i32 0, i32 9
  %71 = load volatile i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32 %68, i32* %72, align 4
  %73 = load %struct.net_device*, %struct.net_device** %2, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %79 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %78, i32 0, i32 9
  %80 = load volatile i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 5
  store i32 %77, i32* %81, align 4
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %84

84:                                               ; preds = %147, %1
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %87 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 1, %88
  %90 = icmp sle i32 %85, %89
  br i1 %90, label %91, label %150

91:                                               ; preds = %84
  %92 = load %struct.lance_init_block*, %struct.lance_init_block** %5, align 8
  %93 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %92, i32 0, i32 8
  %94 = load volatile %struct.TYPE_2__***, %struct.TYPE_2__**** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %94, i64 %96
  %98 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %98, i64 0
  %100 = call i32 @LANCE_ADDR(%struct.TYPE_2__** %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %103 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %102, i32 0, i32 5
  %104 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  store i32 %101, i32* %108, align 8
  %109 = load i32, i32* %6, align 4
  %110 = ashr i32 %109, 16
  %111 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %112 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %111, i32 0, i32 5
  %113 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  store i32 %110, i32* %117, align 4
  %118 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %119 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %118, i32 0, i32 5
  %120 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 8
  store i64 0, i64* %124, align 8
  %125 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %126 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %125, i32 0, i32 5
  %127 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  store i32 61440, i32* %131, align 8
  %132 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %133 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %132, i32 0, i32 5
  %134 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 7
  store i64 0, i64* %138, align 8
  %139 = load i32, i32* %7, align 4
  %140 = icmp slt i32 %139, 3
  br i1 %140, label %141, label %146

141:                                              ; preds = %91
  %142 = load %struct.net_device*, %struct.net_device** %2, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %142, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %144)
  br label %146

146:                                              ; preds = %141, %91
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  br label %84

150:                                              ; preds = %84
  %151 = load %struct.net_device*, %struct.net_device** %2, align 8
  %152 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %151, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %153

153:                                              ; preds = %220, %150
  %154 = load i32, i32* %7, align 4
  %155 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %156 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = shl i32 1, %157
  %159 = icmp slt i32 %154, %158
  br i1 %159, label %160, label %223

160:                                              ; preds = %153
  %161 = load %struct.lance_init_block*, %struct.lance_init_block** %5, align 8
  %162 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %161, i32 0, i32 7
  %163 = load volatile %struct.TYPE_2__***, %struct.TYPE_2__**** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__**, %struct.TYPE_2__*** %163, i64 %165
  %167 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %167, i64 0
  %169 = call i32 @LANCE_ADDR(%struct.TYPE_2__** %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %172 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %171, i32 0, i32 6
  %173 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 3
  store i32 %170, i32* %177, align 4
  %178 = load i32, i32* %6, align 4
  %179 = ashr i32 %178, 16
  %180 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %181 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %180, i32 0, i32 6
  %182 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = load i32, i32* %7, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 4
  store i32 %179, i32* %186, align 8
  %187 = load i32, i32* @LE_R1_OWN, align 4
  %188 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %189 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %188, i32 0, i32 6
  %190 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 6
  store i32 %187, i32* %194, align 8
  %195 = load i32, i32* @RX_BUFF_SIZE, align 4
  %196 = sub nsw i32 0, %195
  %197 = or i32 %196, 61440
  %198 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %199 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %198, i32 0, i32 6
  %200 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 2
  store i32 %197, i32* %204, align 8
  %205 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %206 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %205, i32 0, i32 6
  %207 = load volatile %struct.TYPE_2__*, %struct.TYPE_2__** %206, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 5
  store i64 0, i64* %211, align 8
  %212 = load i32, i32* %7, align 4
  %213 = icmp slt i32 %212, 3
  br i1 %213, label %214, label %219

214:                                              ; preds = %160
  %215 = load %struct.net_device*, %struct.net_device** %2, align 8
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* %6, align 4
  %218 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %215, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %214, %160
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %7, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %7, align 4
  br label %153

223:                                              ; preds = %153
  %224 = load %struct.lance_init_block*, %struct.lance_init_block** %5, align 8
  %225 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %224, i32 0, i32 6
  %226 = call i32 @LANCE_ADDR(%struct.TYPE_2__** %225)
  store i32 %226, i32* %6, align 4
  %227 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %228 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = shl i32 %229, 13
  %231 = load i32, i32* %6, align 4
  %232 = ashr i32 %231, 16
  %233 = or i32 %230, %232
  %234 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %235 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %234, i32 0, i32 0
  store volatile i32 %233, i32* %235, align 8
  %236 = load i32, i32* %6, align 4
  %237 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %238 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %237, i32 0, i32 1
  store volatile i32 %236, i32* %238, align 4
  %239 = load %struct.net_device*, %struct.net_device** %2, align 8
  %240 = load i32, i32* %6, align 4
  %241 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %239, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %240)
  %242 = load %struct.lance_init_block*, %struct.lance_init_block** %5, align 8
  %243 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %242, i32 0, i32 5
  %244 = call i32 @LANCE_ADDR(%struct.TYPE_2__** %243)
  store i32 %244, i32* %6, align 4
  %245 = load %struct.lance_private*, %struct.lance_private** %3, align 8
  %246 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = shl i32 %247, 13
  %249 = load i32, i32* %6, align 4
  %250 = ashr i32 %249, 16
  %251 = or i32 %248, %250
  %252 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %253 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %252, i32 0, i32 2
  store volatile i32 %251, i32* %253, align 8
  %254 = load i32, i32* %6, align 4
  %255 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %256 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %255, i32 0, i32 3
  store volatile i32 %254, i32* %256, align 4
  %257 = load %struct.net_device*, %struct.net_device** %2, align 8
  %258 = load i32, i32* %6, align 4
  %259 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %257, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %258)
  %260 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %261 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %260, i32 0, i32 4
  %262 = load volatile i64*, i64** %261, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 0
  store i64 0, i64* %263, align 8
  %264 = load %struct.lance_init_block*, %struct.lance_init_block** %4, align 8
  %265 = getelementptr inbounds %struct.lance_init_block, %struct.lance_init_block* %264, i32 0, i32 4
  %266 = load volatile i64*, i64** %265, align 8
  %267 = getelementptr inbounds i64, i64* %266, i64 1
  store i64 0, i64* %267, align 8
  ret void
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @LANCE_ADDR(%struct.TYPE_2__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
