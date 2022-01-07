; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_tx_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_usb.c_mt76u_tx_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__*, %struct.mt76_sw_queue* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.mt76_dev*, i32, %struct.mt76_queue_entry*)* }
%struct.mt76_queue_entry = type { i32, i32 }
%struct.mt76_sw_queue = type { i32, %struct.mt76_queue* }
%struct.mt76_queue = type { i64, i64, i32, i32, i32, %struct.mt76_queue_entry* }

@IEEE80211_NUM_ACS = common dso_local global i32 0, align 4
@MT76_READING_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mt76u_tx_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76u_tx_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mt76_dev*, align 8
  %4 = alloca %struct.mt76_queue_entry, align 4
  %5 = alloca %struct.mt76_sw_queue*, align 8
  %6 = alloca %struct.mt76_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %11 = load i64, i64* %2, align 8
  %12 = inttoptr i64 %11 to %struct.mt76_dev*
  store %struct.mt76_dev* %12, %struct.mt76_dev** %3, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %184, %1
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @IEEE80211_NUM_ACS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %187

17:                                               ; preds = %13
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %18 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %18, i32 0, i32 5
  %20 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %20, i64 %22
  store %struct.mt76_sw_queue* %23, %struct.mt76_sw_queue** %5, align 8
  %24 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %5, align 8
  %25 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %24, i32 0, i32 1
  %26 = load %struct.mt76_queue*, %struct.mt76_queue** %25, align 8
  store %struct.mt76_queue* %26, %struct.mt76_queue** %6, align 8
  br label %27

27:                                               ; preds = %67, %17
  %28 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %29 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %106

33:                                               ; preds = %27
  %34 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %35 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %34, i32 0, i32 5
  %36 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %35, align 8
  %37 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %38 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %36, i64 %39
  %41 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %106

45:                                               ; preds = %33
  %46 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %47 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %46, i32 0, i32 5
  %48 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %47, align 8
  %49 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %50 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %48, i64 %51
  %53 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %45
  %57 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %58 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %57, i32 0, i32 5
  %59 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %58, align 8
  %60 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %61 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %59, i64 %62
  %64 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %63, i32 0, i32 1
  store i32 0, i32* %64, align 4
  %65 = load i64, i64* %10, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %10, align 8
  br label %67

67:                                               ; preds = %56, %45
  %68 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %69 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %68, i32 0, i32 5
  %70 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %69, align 8
  %71 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %72 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %70, i64 %73
  %75 = bitcast %struct.mt76_queue_entry* %4 to i8*
  %76 = bitcast %struct.mt76_queue_entry* %74 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %75, i8* align 4 %76, i64 8, i1 false)
  %77 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %78 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %77, i32 0, i32 5
  %79 = load %struct.mt76_queue_entry*, %struct.mt76_queue_entry** %78, align 8
  %80 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %81 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %79, i64 %82
  %84 = getelementptr inbounds %struct.mt76_queue_entry, %struct.mt76_queue_entry* %83, i32 0, i32 0
  store i32 0, i32* %84, align 4
  %85 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %86 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add i64 %87, 1
  %89 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %90 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = urem i64 %88, %92
  %94 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %95 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load i64, i64* %9, align 8
  %97 = add nsw i64 %96, 1
  store i64 %97, i64* %9, align 8
  %98 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %99 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %98, i32 0, i32 4
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32 (%struct.mt76_dev*, i32, %struct.mt76_queue_entry*)*, i32 (%struct.mt76_dev*, i32, %struct.mt76_queue_entry*)** %101, align 8
  %103 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 %102(%struct.mt76_dev* %103, i32 %104, %struct.mt76_queue_entry* %4)
  br label %27

106:                                              ; preds = %44, %27
  %107 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %108 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %107, i32 0, i32 4
  %109 = call i32 @spin_lock_bh(i32* %108)
  %110 = load i64, i64* %10, align 8
  %111 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %5, align 8
  %112 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %114, %110
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %112, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %119 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %120, %117
  store i64 %121, i64* %119, align 8
  %122 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %123 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %106
  %127 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %128 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %131 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 8
  %134 = sext i32 %133 to i64
  %135 = icmp slt i64 %129, %134
  br label %136

136:                                              ; preds = %126, %106
  %137 = phi i1 [ false, %106 ], [ %135, %126 ]
  %138 = zext i1 %137 to i32
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %136
  %142 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %143 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %142, i32 0, i32 3
  store i32 0, i32* %143, align 4
  br label %144

144:                                              ; preds = %141, %136
  %145 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %146 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %144
  %150 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %151 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %150, i32 0, i32 3
  %152 = call i32 @wake_up(i32* %151)
  br label %153

153:                                              ; preds = %149, %144
  %154 = load %struct.mt76_queue*, %struct.mt76_queue** %6, align 8
  %155 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %154, i32 0, i32 4
  %156 = call i32 @spin_unlock_bh(i32* %155)
  %157 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @mt76_txq_schedule(%struct.mt76_dev* %157, i32 %158)
  %160 = load i32, i32* @MT76_READING_STATS, align 4
  %161 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %162 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %161, i32 0, i32 2
  %163 = call i32 @test_and_set_bit(i32 %160, i32* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %153
  %166 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %167 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %170 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = call i32 @msecs_to_jiffies(i32 10)
  %173 = call i32 @ieee80211_queue_delayed_work(i32 %168, i32* %171, i32 %172)
  br label %174

174:                                              ; preds = %165, %153
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %174
  %178 = load %struct.mt76_dev*, %struct.mt76_dev** %3, align 8
  %179 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %8, align 4
  %182 = call i32 @ieee80211_wake_queue(i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %177, %174
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %8, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %8, align 4
  br label %13

187:                                              ; preds = %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @wake_up(i32*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @mt76_txq_schedule(%struct.mt76_dev*, i32) #2

declare dso_local i32 @test_and_set_bit(i32, i32*) #2

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #2

declare dso_local i32 @msecs_to_jiffies(i32) #2

declare dso_local i32 @ieee80211_wake_queue(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
