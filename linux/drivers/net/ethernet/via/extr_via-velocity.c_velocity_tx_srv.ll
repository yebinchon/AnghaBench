; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_tx_srv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_tx_srv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.velocity_info = type { i32, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32*, i64*, %struct.velocity_td_info**, %struct.tx_desc** }
%struct.velocity_td_info = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.tx_desc = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@OWNED_BY_NIC = common dso_local global i32 0, align 4
@TSR0_TERR = common dso_local global i32 0, align 4
@TSR0_CDH = common dso_local global i32 0, align 4
@TSR0_CRS = common dso_local global i32 0, align 4
@TSR0_ABT = common dso_local global i32 0, align 4
@TSR0_OWC = common dso_local global i32 0, align 4
@VELOCITY_LINK_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.velocity_info*)* @velocity_tx_srv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_tx_srv(%struct.velocity_info* %0) #0 {
  %2 = alloca %struct.velocity_info*, align 8
  %3 = alloca %struct.tx_desc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.velocity_td_info*, align 8
  %9 = alloca %struct.net_device_stats*, align 8
  store %struct.velocity_info* %0, %struct.velocity_info** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %11 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %10, i32 0, i32 1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  store %struct.net_device_stats* %13, %struct.net_device_stats** %9, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %198, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %17 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %201

21:                                               ; preds = %14
  %22 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %23 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %175, %21
  %31 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %32 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64, i64* %34, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %183

40:                                               ; preds = %30
  %41 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %42 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 4
  %44 = load %struct.tx_desc**, %struct.tx_desc*** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.tx_desc*, %struct.tx_desc** %44, i64 %46
  %48 = load %struct.tx_desc*, %struct.tx_desc** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %48, i64 %50
  store %struct.tx_desc* %51, %struct.tx_desc** %3, align 8
  %52 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %53 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load %struct.velocity_td_info**, %struct.velocity_td_info*** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.velocity_td_info*, %struct.velocity_td_info** %55, i64 %57
  %59 = load %struct.velocity_td_info*, %struct.velocity_td_info** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.velocity_td_info, %struct.velocity_td_info* %59, i64 %61
  store %struct.velocity_td_info* %62, %struct.velocity_td_info** %8, align 8
  %63 = load %struct.tx_desc*, %struct.tx_desc** %3, align 8
  %64 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @OWNED_BY_NIC, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %40
  br label %183

71:                                               ; preds = %40
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %7, align 4
  %74 = icmp sgt i32 %72, 15
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %183

76:                                               ; preds = %71
  %77 = load %struct.tx_desc*, %struct.tx_desc** %3, align 8
  %78 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @TSR0_TERR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %145

84:                                               ; preds = %76
  %85 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %86 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %90 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.tx_desc*, %struct.tx_desc** %3, align 8
  %94 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @TSR0_CDH, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %84
  %101 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %102 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %100, %84
  %106 = load %struct.tx_desc*, %struct.tx_desc** %3, align 8
  %107 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @TSR0_CRS, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %105
  %114 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %115 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %113, %105
  %119 = load %struct.tx_desc*, %struct.tx_desc** %3, align 8
  %120 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @TSR0_ABT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %118
  %127 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %128 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %126, %118
  %132 = load %struct.tx_desc*, %struct.tx_desc** %3, align 8
  %133 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @TSR0_OWC, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %141 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %139, %131
  br label %161

145:                                              ; preds = %76
  %146 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %147 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load %struct.velocity_td_info*, %struct.velocity_td_info** %8, align 8
  %151 = getelementptr inbounds %struct.velocity_td_info, %struct.velocity_td_info* %150, i32 0, i32 0
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %156 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 4
  br label %161

161:                                              ; preds = %145, %144
  %162 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %163 = load %struct.velocity_td_info*, %struct.velocity_td_info** %8, align 8
  %164 = load %struct.tx_desc*, %struct.tx_desc** %3, align 8
  %165 = call i32 @velocity_free_tx_buf(%struct.velocity_info* %162, %struct.velocity_td_info* %163, %struct.tx_desc* %164)
  %166 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %167 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 2
  %169 = load i64*, i64** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i64, i64* %169, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = add nsw i64 %173, -1
  store i64 %174, i64* %172, align 8
  br label %175

175:                                              ; preds = %161
  %176 = load i32, i32* %6, align 4
  %177 = add nsw i32 %176, 1
  %178 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %179 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = srem i32 %177, %181
  store i32 %182, i32* %6, align 4
  br label %30

183:                                              ; preds = %75, %70, %30
  %184 = load i32, i32* %6, align 4
  %185 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %186 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %4, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  store i32 %184, i32* %191, align 4
  %192 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %193 = load i32, i32* %4, align 4
  %194 = call i32 @AVAIL_TD(%struct.velocity_info* %192, i32 %193)
  %195 = icmp slt i32 %194, 1
  br i1 %195, label %196, label %197

196:                                              ; preds = %183
  store i32 1, i32* %5, align 4
  br label %197

197:                                              ; preds = %196, %183
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %4, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %4, align 4
  br label %14

201:                                              ; preds = %14
  %202 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %203 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %202, i32 0, i32 1
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = call i64 @netif_queue_stopped(%struct.TYPE_11__* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %222

207:                                              ; preds = %201
  %208 = load i32, i32* %5, align 4
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %222

210:                                              ; preds = %207
  %211 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %212 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @VELOCITY_LINK_FAIL, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %222, label %217

217:                                              ; preds = %210
  %218 = load %struct.velocity_info*, %struct.velocity_info** %2, align 8
  %219 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %218, i32 0, i32 1
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %219, align 8
  %221 = call i32 @netif_wake_queue(%struct.TYPE_11__* %220)
  br label %222

222:                                              ; preds = %217, %210, %207, %201
  %223 = load i32, i32* %7, align 4
  ret i32 %223
}

declare dso_local i32 @velocity_free_tx_buf(%struct.velocity_info*, %struct.velocity_td_info*, %struct.tx_desc*) #1

declare dso_local i32 @AVAIL_TD(%struct.velocity_info*, i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.TYPE_11__*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
