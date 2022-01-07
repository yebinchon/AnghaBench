; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_rx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z8530_channel = type { i32, i32, i8**, i64, i32, i32, i32, %struct.TYPE_5__*, i32 (%struct.z8530_channel*, %struct.sk_buff*)*, %struct.sk_buff.0*, %struct.sk_buff.0*, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sk_buff = type opaque
%struct.sk_buff.0 = type { i32 }

@DMA_MODE_READ = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@RES_Rx_CRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA flip overrun!\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Memory squeeze\0A\00", align 1
@RT_LOCK = common dso_local global i32 0, align 4
@RT_UNLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"memory squeeze\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Lost a frame\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z8530_channel*)* @z8530_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z8530_rx_done(%struct.z8530_channel* %0) #0 {
  %2 = alloca %struct.z8530_channel*, align 8
  %3 = alloca %struct.sk_buff.0*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.z8530_channel* %0, %struct.z8530_channel** %2, align 8
  %8 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %9 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %143

12:                                               ; preds = %1
  %13 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %14 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %17 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %16, i32 0, i32 2
  %18 = load i8**, i8*** %17, align 8
  %19 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %20 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8*, i8** %18, i64 %21
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = call i64 (...) @claim_dma_lock()
  store i64 %24, i64* %7, align 8
  %25 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %26 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @disable_dma(i32 %27)
  %29 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %30 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %29, i32 0, i32 12
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clear_dma_ff(i32 %31)
  %33 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %34 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %36 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %39 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @get_dma_residue(i32 %40)
  %42 = sub nsw i32 %37, %41
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %12
  store i32 2, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %12
  %47 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %48 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %47, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %92

51:                                               ; preds = %46
  %52 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %53 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = xor i64 %54, 1
  store i64 %55, i64* %53, align 8
  %56 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %57 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @DMA_MODE_READ, align 4
  %60 = or i32 %59, 16
  %61 = call i32 @set_dma_mode(i32 %58, i32 %60)
  %62 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %63 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %66 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %65, i32 0, i32 2
  %67 = load i8**, i8*** %66, align 8
  %68 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %69 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i8*, i8** %67, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @virt_to_bus(i8* %72)
  %74 = call i32 @set_dma_addr(i32 %64, i32 %73)
  %75 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %76 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %75, i32 0, i32 12
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %79 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @set_dma_count(i32 %77, i32 %80)
  %82 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %83 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %85 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %84, i32 0, i32 12
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @enable_dma(i32 %86)
  %88 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %89 = load i32, i32* @R0, align 4
  %90 = load i32, i32* @RES_Rx_CRC, align 4
  %91 = call i32 @write_zsreg(%struct.z8530_channel* %88, i32 %89, i32 %90)
  br label %97

92:                                               ; preds = %46
  %93 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %94 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %93, i32 0, i32 7
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = call i32 @netdev_warn(%struct.TYPE_5__* %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %92, %51
  %98 = load i64, i64* %7, align 8
  %99 = call i32 @release_dma_lock(i64 %98)
  %100 = load i32, i32* %4, align 4
  %101 = call i8* @dev_alloc_skb(i32 %100)
  %102 = bitcast i8* %101 to %struct.sk_buff.0*
  store %struct.sk_buff.0* %102, %struct.sk_buff.0** %3, align 8
  %103 = load %struct.sk_buff.0*, %struct.sk_buff.0** %3, align 8
  %104 = icmp eq %struct.sk_buff.0* %103, null
  br i1 %104, label %105, label %117

105:                                              ; preds = %97
  %106 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %107 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %106, i32 0, i32 7
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  %113 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %114 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %113, i32 0, i32 7
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = call i32 @netdev_warn(%struct.TYPE_5__* %115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %140

117:                                              ; preds = %97
  %118 = load %struct.sk_buff.0*, %struct.sk_buff.0** %3, align 8
  %119 = load i32, i32* %4, align 4
  %120 = call i32 @skb_put(%struct.sk_buff.0* %118, i32 %119)
  %121 = load %struct.sk_buff.0*, %struct.sk_buff.0** %3, align 8
  %122 = load i8*, i8** %6, align 8
  %123 = load i32, i32* %4, align 4
  %124 = call i32 @skb_copy_to_linear_data(%struct.sk_buff.0* %121, i8* %122, i32 %123)
  %125 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %126 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %125, i32 0, i32 7
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  %132 = load i32, i32* %4, align 4
  %133 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %134 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %133, i32 0, i32 7
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %132
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %117, %105
  %141 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %142 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %141, i32 0, i32 1
  store i32 1, i32* %142, align 4
  br label %227

143:                                              ; preds = %1
  %144 = load i32, i32* @RT_LOCK, align 4
  %145 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %146 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %145, i32 0, i32 10
  %147 = load %struct.sk_buff.0*, %struct.sk_buff.0** %146, align 8
  store %struct.sk_buff.0* %147, %struct.sk_buff.0** %3, align 8
  %148 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %149 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %4, align 4
  %151 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %152 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %151, i32 0, i32 9
  %153 = load %struct.sk_buff.0*, %struct.sk_buff.0** %152, align 8
  %154 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %155 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %154, i32 0, i32 10
  store %struct.sk_buff.0* %153, %struct.sk_buff.0** %155, align 8
  %156 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %157 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %156, i32 0, i32 5
  store i32 0, i32* %157, align 4
  %158 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %159 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %162 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %161, i32 0, i32 6
  store i32 %160, i32* %162, align 8
  %163 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %164 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %163, i32 0, i32 10
  %165 = load %struct.sk_buff.0*, %struct.sk_buff.0** %164, align 8
  %166 = icmp ne %struct.sk_buff.0* %165, null
  br i1 %166, label %167, label %180

167:                                              ; preds = %143
  %168 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %169 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %168, i32 0, i32 10
  %170 = load %struct.sk_buff.0*, %struct.sk_buff.0** %169, align 8
  %171 = getelementptr inbounds %struct.sk_buff.0, %struct.sk_buff.0* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %174 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %173, i32 0, i32 11
  store i32 %172, i32* %174, align 8
  %175 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %176 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %179 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %178, i32 0, i32 6
  store i32 %177, i32* %179, align 8
  br label %185

180:                                              ; preds = %143
  %181 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %182 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %181, i32 0, i32 5
  store i32 0, i32* %182, align 4
  %183 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %184 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %183, i32 0, i32 6
  store i32 0, i32* %184, align 8
  br label %185

185:                                              ; preds = %180, %167
  %186 = load i32, i32* @RT_UNLOCK, align 4
  %187 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %188 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 8
  %190 = call i8* @dev_alloc_skb(i32 %189)
  %191 = bitcast i8* %190 to %struct.sk_buff.0*
  %192 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %193 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %192, i32 0, i32 9
  store %struct.sk_buff.0* %191, %struct.sk_buff.0** %193, align 8
  %194 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %195 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %194, i32 0, i32 9
  %196 = load %struct.sk_buff.0*, %struct.sk_buff.0** %195, align 8
  %197 = icmp eq %struct.sk_buff.0* %196, null
  br i1 %197, label %198, label %203

198:                                              ; preds = %185
  %199 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %200 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %199, i32 0, i32 7
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %200, align 8
  %202 = call i32 @netdev_warn(%struct.TYPE_5__* %201, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %211

203:                                              ; preds = %185
  %204 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %205 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %204, i32 0, i32 9
  %206 = load %struct.sk_buff.0*, %struct.sk_buff.0** %205, align 8
  %207 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %208 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @skb_put(%struct.sk_buff.0* %206, i32 %209)
  br label %211

211:                                              ; preds = %203, %198
  %212 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %213 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %212, i32 0, i32 7
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 4
  %219 = load i32, i32* %4, align 4
  %220 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %221 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %220, i32 0, i32 7
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = add nsw i32 %225, %219
  store i32 %226, i32* %224, align 4
  br label %227

227:                                              ; preds = %211, %140
  %228 = load %struct.sk_buff.0*, %struct.sk_buff.0** %3, align 8
  %229 = icmp ne %struct.sk_buff.0* %228, null
  br i1 %229, label %230, label %241

230:                                              ; preds = %227
  %231 = load %struct.sk_buff.0*, %struct.sk_buff.0** %3, align 8
  %232 = load i32, i32* %4, align 4
  %233 = call i32 @skb_trim(%struct.sk_buff.0* %231, i32 %232)
  %234 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %235 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %234, i32 0, i32 8
  %236 = load i32 (%struct.z8530_channel*, %struct.sk_buff*)*, i32 (%struct.z8530_channel*, %struct.sk_buff*)** %235, align 8
  %237 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %238 = load %struct.sk_buff.0*, %struct.sk_buff.0** %3, align 8
  %239 = bitcast %struct.sk_buff.0* %238 to %struct.sk_buff*
  %240 = call i32 %236(%struct.z8530_channel* %237, %struct.sk_buff* %239)
  br label %253

241:                                              ; preds = %227
  %242 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %243 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %242, i32 0, i32 7
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* %246, align 4
  %249 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %250 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %249, i32 0, i32 7
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = call i32 @netdev_err(%struct.TYPE_5__* %251, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %253

253:                                              ; preds = %241, %230
  ret void
}

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @get_dma_residue(i32) #1

declare dso_local i32 @set_dma_mode(i32, i32) #1

declare dso_local i32 @set_dma_addr(i32, i32) #1

declare dso_local i32 @virt_to_bus(i8*) #1

declare dso_local i32 @set_dma_count(i32, i32) #1

declare dso_local i32 @enable_dma(i32) #1

declare dso_local i32 @write_zsreg(%struct.z8530_channel*, i32, i32) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i8* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff.0*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff.0*, i8*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff.0*, i32) #1

declare dso_local i32 @netdev_err(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
