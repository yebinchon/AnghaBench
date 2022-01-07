; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i32, i32, i32, i64, i32**, %struct.TYPE_6__, i32, i64, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TD_ES = common dso_local global i32 0, align 4
@TD_NC = common dso_local global i32 0, align 4
@TD_LC = common dso_local global i32 0, align 4
@TD_UF = common dso_local global i32 0, align 4
@TD_EC = common dso_local global i32 0, align 4
@TD_DE = common dso_local global i32 0, align 4
@TX_PKT_PENDING = common dso_local global i64 0, align 8
@POLL_DEMAND = common dso_local global i32 0, align 4
@DE4X5_TPD = common dso_local global i32 0, align 4
@TD_CC = common dso_local global i32 0, align 4
@TX_BUFFS_AVAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @de4x5_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de4x5_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %7)
  store %struct.de4x5_private* %8, %struct.de4x5_private** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %13 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %170, %1
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %18 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %174

21:                                               ; preds = %15
  %22 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %23 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %22, i32 0, i32 9
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @le32_to_cpu(i32 %29)
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %174

35:                                               ; preds = %21
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 2147483647
  br i1 %37, label %38, label %158

38:                                               ; preds = %35
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @TD_ES, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %111

43:                                               ; preds = %38
  %44 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %45 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @TD_NC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %55 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %43
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @TD_LC, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %66 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @TD_UF, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %77 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %75, %70
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @TD_EC, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %88 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %87, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @TD_DE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %92
  %98 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %99 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %97, %92
  %104 = load i64, i64* @TX_PKT_PENDING, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = load i32, i32* @POLL_DEMAND, align 4
  %108 = load i32, i32* @DE4X5_TPD, align 4
  %109 = call i32 @outl(i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %103
  br label %127

111:                                              ; preds = %38
  %112 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %113 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  %117 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %118 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %117, i32 0, i32 7
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %111
  %122 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %123 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %121, %111
  br label %127

127:                                              ; preds = %126, %110
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @TD_EC, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %138

133:                                              ; preds = %127
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @TD_CC, align 4
  %136 = and i32 %134, %135
  %137 = ashr i32 %136, 3
  br label %138

138:                                              ; preds = %133, %132
  %139 = phi i32 [ 16, %132 ], [ %137, %133 ]
  %140 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %141 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = add nsw i32 %143, %139
  store i32 %144, i32* %142, align 8
  %145 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %146 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %145, i32 0, i32 4
  %147 = load i32**, i32*** %146, align 8
  %148 = load i32, i32* %5, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32*, i32** %147, i64 %149
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %138
  %154 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @de4x5_free_tx_buff(%struct.de4x5_private* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %138
  br label %158

158:                                              ; preds = %157, %35
  br label %159

159:                                              ; preds = %158
  %160 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %161 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  %164 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %165 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = srem i32 %163, %166
  %168 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %169 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %159
  %171 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %172 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  store i32 %173, i32* %5, align 4
  br label %15

174:                                              ; preds = %34, %15
  %175 = load i64, i64* @TX_BUFFS_AVAIL, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %193

177:                                              ; preds = %174
  %178 = load %struct.net_device*, %struct.net_device** %2, align 8
  %179 = call i64 @netif_queue_stopped(%struct.net_device* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %177
  %182 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %183 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %182, i32 0, i32 3
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %181
  %187 = load %struct.net_device*, %struct.net_device** %2, align 8
  %188 = call i32 @netif_wake_queue(%struct.net_device* %187)
  br label %192

189:                                              ; preds = %181
  %190 = load %struct.net_device*, %struct.net_device** %2, align 8
  %191 = call i32 @netif_start_queue(%struct.net_device* %190)
  br label %192

192:                                              ; preds = %189, %186
  br label %193

193:                                              ; preds = %192, %177, %174
  ret i32 0
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @de4x5_free_tx_buff(%struct.de4x5_private*, i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
