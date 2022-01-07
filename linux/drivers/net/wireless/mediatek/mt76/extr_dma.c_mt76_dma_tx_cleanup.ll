; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_tx_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_dma.c_mt76_dma_tx_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, i32, %struct.mt76_sw_queue*, %struct.TYPE_3__* }
%struct.mt76_sw_queue = type { i32, %struct.mt76_queue* }
%struct.mt76_queue = type { i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 (%struct.mt76_dev*, i32, %struct.mt76_queue_entry*)* }
%struct.mt76_queue_entry = type { i64, i64, i64, i64 }

@MT_TXWI_NO_FREE = common dso_local global i32 0, align 4
@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_dev*, i32, i32)* @mt76_dma_tx_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_dma_tx_cleanup(%struct.mt76_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mt76_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt76_sw_queue*, align 8
  %8 = alloca %struct.mt76_queue*, align 8
  %9 = alloca %struct.mt76_queue_entry, align 8
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %16 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %15, i32 0, i32 2
  %17 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %17, i64 %19
  store %struct.mt76_sw_queue* %20, %struct.mt76_sw_queue** %7, align 8
  %21 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %7, align 8
  %22 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %21, i32 0, i32 1
  %23 = load %struct.mt76_queue*, %struct.mt76_queue** %22, align 8
  store %struct.mt76_queue* %23, %struct.mt76_queue** %8, align 8
  %24 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %24, i8 0, i64 16, i1 false)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %26 = icmp ne %struct.mt76_queue* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %228

28:                                               ; preds = %3
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 -1, i32* %14, align 4
  br label %38

32:                                               ; preds = %28
  %33 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %34 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %33, i32 0, i32 5
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @readl(i32* %36)
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %32, %31
  br label %39

39:                                               ; preds = %132, %38
  %40 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %41 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %11, align 4
  %44 = icmp ugt i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %47 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %48, %49
  br label %51

51:                                               ; preds = %45, %39
  %52 = phi i1 [ false, %39 ], [ %50, %45 ]
  br i1 %52, label %53, label %133

53:                                               ; preds = %51
  %54 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %55 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %56 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %57 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mt76_dma_tx_cleanup_idx(%struct.mt76_dev* %54, %struct.mt76_queue* %55, i32 %58, %struct.mt76_queue_entry* %9)
  %60 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %9, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %53
  %64 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %9, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %53
  %70 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %71 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  %74 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %75 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = srem i32 %73, %76
  %78 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %79 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %9, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %69
  %86 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %87 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %86, i32 0, i32 3
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32 (%struct.mt76_dev*, i32, %struct.mt76_queue_entry*)*, i32 (%struct.mt76_dev*, i32, %struct.mt76_queue_entry*)** %89, align 8
  %91 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %92 = load i32, i32* %5, align 4
  %93 = call i32 %90(%struct.mt76_dev* %91, i32 %92, %struct.mt76_queue_entry* %9)
  br label %94

94:                                               ; preds = %85, %69
  %95 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %9, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %117

98:                                               ; preds = %94
  %99 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %100 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %99, i32 0, i32 3
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MT_TXWI_NO_FREE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %112, label %107

107:                                              ; preds = %98
  %108 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %109 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %9, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @mt76_put_txwi(%struct.mt76_dev* %108, i64 %110)
  br label %112

112:                                              ; preds = %107, %98
  %113 = load i32, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %112, %94
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %132, label %120

120:                                              ; preds = %117
  %121 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %122 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %14, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %128 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %127, i32 0, i32 5
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = call i32 @readl(i32* %130)
  store i32 %131, i32* %14, align 4
  br label %132

132:                                              ; preds = %126, %120, %117
  br label %39

133:                                              ; preds = %51
  %134 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %135 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %134, i32 0, i32 4
  %136 = call i32 @spin_lock_bh(i32* %135)
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %139 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub i32 %140, %137
  store i32 %141, i32* %139, align 8
  store i32 0, i32* %13, align 4
  br label %142

142:                                              ; preds = %168, %133
  %143 = load i32, i32* %13, align 4
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %145 = call i32 @ARRAY_SIZE(i32* %144)
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %147, label %171

147:                                              ; preds = %142
  %148 = load i32, i32* %13, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %154, label %153

153:                                              ; preds = %147
  br label %168

154:                                              ; preds = %147
  %155 = load i32, i32* %13, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %160 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %159, i32 0, i32 2
  %161 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %160, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %161, i64 %163
  %165 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = sub i32 %166, %158
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %154, %153
  %169 = load i32, i32* %13, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %13, align 4
  br label %142

171:                                              ; preds = %142
  %172 = load i32, i32* %6, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %176 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %177 = call i32 @mt76_dma_sync_idx(%struct.mt76_dev* %175, %struct.mt76_queue* %176)
  br label %178

178:                                              ; preds = %174, %171
  %179 = load i32, i32* %12, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %199

181:                                              ; preds = %178
  %182 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %183 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %181
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %189 = icmp ult i32 %187, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %186
  %191 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %192 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %195 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = sub nsw i32 %196, 8
  %198 = icmp ult i32 %193, %197
  br label %199

199:                                              ; preds = %190, %186, %181, %178
  %200 = phi i1 [ false, %186 ], [ false, %181 ], [ false, %178 ], [ %198, %190 ]
  %201 = zext i1 %200 to i32
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %12, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %206 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %205, i32 0, i32 3
  store i32 0, i32* %206, align 4
  br label %207

207:                                              ; preds = %204, %199
  %208 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %209 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %207
  %213 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %214 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %213, i32 0, i32 1
  %215 = call i32 @wake_up(i32* %214)
  br label %216

216:                                              ; preds = %212, %207
  %217 = load %struct.mt76_queue*, %struct.mt76_queue** %8, align 8
  %218 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %217, i32 0, i32 4
  %219 = call i32 @spin_unlock_bh(i32* %218)
  %220 = load i32, i32* %12, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %216
  %223 = load %struct.mt76_dev*, %struct.mt76_dev** %4, align 8
  %224 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = call i32 @ieee80211_wake_queue(i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %27, %222, %216
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @readl(i32*) #2

declare dso_local i32 @mt76_dma_tx_cleanup_idx(%struct.mt76_dev*, %struct.mt76_queue*, i32, %struct.mt76_queue_entry*) #2

declare dso_local i32 @mt76_put_txwi(%struct.mt76_dev*, i64) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @mt76_dma_sync_idx(%struct.mt76_dev*, %struct.mt76_queue*) #2

declare dso_local i32 @wake_up(i32*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @ieee80211_wake_queue(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
