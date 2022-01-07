; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_free_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_free_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_slice_state = type { %struct.myri10ge_tx_buf, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.myri10ge_priv* }
%struct.myri10ge_tx_buf = type { i32, i32, i32, i32*, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.sk_buff*, i32, i8* }
%struct.sk_buff = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32 }
%struct.myri10ge_priv = type { i64, i64, i32 }

@MYRI10GE_ALLOC_SIZE = common dso_local global i8* null, align 8
@MXGEFW_PAD = common dso_local global i64 0, align 8
@bus = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myri10ge_slice_state*)* @myri10ge_free_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_free_rings(%struct.myri10ge_slice_state* %0) #0 {
  %2 = alloca %struct.myri10ge_slice_state*, align 8
  %3 = alloca %struct.myri10ge_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.myri10ge_tx_buf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.myri10ge_slice_state* %0, %struct.myri10ge_slice_state** %2, align 8
  %9 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %10 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %9, i32 0, i32 4
  %11 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %10, align 8
  store %struct.myri10ge_priv* %11, %struct.myri10ge_priv** %3, align 8
  %12 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %13 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %300

18:                                               ; preds = %1
  %19 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %20 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %79, %18
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %26 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %82

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %33 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %31, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %39 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp eq i32 %37, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %30
  %45 = load i8*, i8** @MYRI10GE_ALLOC_SIZE, align 8
  %46 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %47 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  store i8* %45, i8** %53, align 8
  br label %54

54:                                               ; preds = %44, %30
  %55 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %56 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %59 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i64 %63
  %65 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %66 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @myri10ge_unmap_rx_page(i32 %57, %struct.TYPE_12__* %64, i64 %67)
  %69 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %70 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @put_page(i32 %77)
  br label %79

79:                                               ; preds = %54
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %23

82:                                               ; preds = %23
  %83 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %84 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %89 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %93 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  br label %95

95:                                               ; preds = %87, %82
  %96 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %97 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %158, %95
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %103 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %101, %105
  br i1 %106, label %107, label %161

107:                                              ; preds = %100
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %110 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %108, %112
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %6, align 4
  %115 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %116 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = sub nsw i32 %118, 1
  %120 = icmp eq i32 %114, %119
  br i1 %120, label %121, label %131

121:                                              ; preds = %107
  %122 = load i8*, i8** @MYRI10GE_ALLOC_SIZE, align 8
  %123 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %124 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 2
  store i8* %122, i8** %130, align 8
  br label %131

131:                                              ; preds = %121, %107
  %132 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %133 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %136 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 4
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i64 %140
  %142 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %143 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @MXGEFW_PAD, align 8
  %146 = add nsw i64 %144, %145
  %147 = call i32 @myri10ge_unmap_rx_page(i32 %134, %struct.TYPE_12__* %141, i64 %146)
  %148 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %149 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 4
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @put_page(i32 %156)
  br label %158

158:                                              ; preds = %131
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %6, align 4
  br label %100

161:                                              ; preds = %100
  %162 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %163 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %162, i32 0, i32 0
  store %struct.myri10ge_tx_buf* %163, %struct.myri10ge_tx_buf** %5, align 8
  br label %164

164:                                              ; preds = %262, %161
  %165 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %166 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %169 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %167, %170
  br i1 %171, label %172, label %263

172:                                              ; preds = %164
  %173 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %174 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %177 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %175, %178
  store i32 %179, i32* %8, align 4
  %180 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %181 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %180, i32 0, i32 5
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load %struct.sk_buff*, %struct.sk_buff** %186, align 8
  store %struct.sk_buff* %187, %struct.sk_buff** %4, align 8
  %188 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %189 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %188, i32 0, i32 5
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %189, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %194, align 8
  %195 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %196 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 8
  %199 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %200 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %199, i32 0, i32 5
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i64 %203
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @dma_unmap_len(%struct.TYPE_12__* %204, i32 %205)
  store i32 %206, i32* %7, align 4
  %207 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %208 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %207, i32 0, i32 5
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %208, align 8
  %210 = load i32, i32* %8, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %211
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @dma_unmap_len_set(%struct.TYPE_12__* %212, i32 %213, i32 0)
  %215 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %216 = icmp ne %struct.sk_buff* %215, null
  br i1 %216, label %217, label %243

217:                                              ; preds = %172
  %218 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %219 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %220, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %224 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %223)
  %225 = load i32, i32* %7, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %217
  %228 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %229 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %232 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %231, i32 0, i32 5
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i64 %235
  %237 = load i32, i32* @bus, align 4
  %238 = call i32 @dma_unmap_addr(%struct.TYPE_12__* %236, i32 %237)
  %239 = load i32, i32* %7, align 4
  %240 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %241 = call i32 @pci_unmap_single(i32 %230, i32 %238, i32 %239, i32 %240)
  br label %242

242:                                              ; preds = %227, %217
  br label %262

243:                                              ; preds = %172
  %244 = load i32, i32* %7, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %261

246:                                              ; preds = %243
  %247 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %3, align 8
  %248 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = load %struct.myri10ge_tx_buf*, %struct.myri10ge_tx_buf** %5, align 8
  %251 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %250, i32 0, i32 5
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %251, align 8
  %253 = load i32, i32* %8, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i64 %254
  %256 = load i32, i32* @bus, align 4
  %257 = call i32 @dma_unmap_addr(%struct.TYPE_12__* %255, i32 %256)
  %258 = load i32, i32* %7, align 4
  %259 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %260 = call i32 @pci_unmap_page(i32 %249, i32 %257, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %246, %243
  br label %262

262:                                              ; preds = %261, %242
  br label %164

263:                                              ; preds = %164
  %264 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %265 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %265, i32 0, i32 4
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %266, align 8
  %268 = call i32 @kfree(%struct.TYPE_12__* %267)
  %269 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %270 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 4
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %271, align 8
  %273 = call i32 @kfree(%struct.TYPE_12__* %272)
  %274 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %275 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %275, i32 0, i32 5
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %276, align 8
  %278 = call i32 @kfree(%struct.TYPE_12__* %277)
  %279 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %280 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 3
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %281, align 8
  %283 = call i32 @kfree(%struct.TYPE_12__* %282)
  %284 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %285 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 3
  %287 = load %struct.TYPE_12__*, %struct.TYPE_12__** %286, align 8
  %288 = call i32 @kfree(%struct.TYPE_12__* %287)
  %289 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %290 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %290, i32 0, i32 4
  %292 = load %struct.TYPE_12__*, %struct.TYPE_12__** %291, align 8
  %293 = call i32 @kfree(%struct.TYPE_12__* %292)
  %294 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %295 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %295, i32 0, i32 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %296, align 8
  %297 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %2, align 8
  %298 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.myri10ge_tx_buf, %struct.myri10ge_tx_buf* %298, i32 0, i32 3
  store i32* null, i32** %299, align 8
  br label %300

300:                                              ; preds = %263, %17
  ret void
}

declare dso_local i32 @myri10ge_unmap_rx_page(i32, %struct.TYPE_12__*, i64) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @dma_unmap_len(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dma_unmap_len_set(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
