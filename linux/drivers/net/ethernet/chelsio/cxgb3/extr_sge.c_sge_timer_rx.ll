; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_sge_timer_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_sge_timer_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_qset = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i32 }
%struct.timer_list = type { i32 }
%struct.port_info = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@rx_reclaim_timer = common dso_local global i32 0, align 4
@A_SG_RSPQ_FL_STATUS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@RX_RECLAIM_PERIOD = common dso_local global i64 0, align 8
@qs = common dso_local global %struct.sge_qset* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @sge_timer_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_timer_rx(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.sge_qset*, align 8
  %5 = alloca %struct.port_info*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %8 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %9 = ptrtoint %struct.sge_qset* %8 to i32
  %10 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %11 = load i32, i32* @rx_reclaim_timer, align 4
  %12 = call %struct.sge_qset* @from_timer(i32 %9, %struct.timer_list* %10, i32 %11)
  store %struct.sge_qset* %12, %struct.sge_qset** %4, align 8
  %13 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %14 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.port_info* @netdev_priv(i32 %15)
  store %struct.port_info* %16, %struct.port_info** %5, align 8
  %17 = load %struct.port_info*, %struct.port_info** %5, align 8
  %18 = getelementptr inbounds %struct.port_info, %struct.port_info* %17, i32 0, i32 0
  %19 = load %struct.adapter*, %struct.adapter** %18, align 8
  store %struct.adapter* %19, %struct.adapter** %6, align 8
  %20 = load %struct.adapter*, %struct.adapter** %6, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %1
  %26 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %27 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 4
  br label %37

29:                                               ; preds = %1
  %30 = load %struct.adapter*, %struct.adapter** %6, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  br label %37

37:                                               ; preds = %29, %25
  %38 = phi i32* [ %28, %25 ], [ %36, %29 ]
  store i32* %38, i32** %3, align 8
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @spin_trylock_irq(i32* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %149

43:                                               ; preds = %37
  %44 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %45 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %44, i32 0, i32 3
  %46 = call i64 @napi_is_scheduled(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %146

49:                                               ; preds = %43
  %50 = load %struct.adapter*, %struct.adapter** %6, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %53, 4
  br i1 %54, label %55, label %103

55:                                               ; preds = %49
  %56 = load %struct.adapter*, %struct.adapter** %6, align 8
  %57 = load i32, i32* @A_SG_RSPQ_FL_STATUS, align 4
  %58 = call i32 @t3_read_reg(%struct.adapter* %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %61 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = shl i32 1, %63
  %65 = and i32 %59, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %102

67:                                               ; preds = %55
  %68 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %69 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %74 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %67
  %79 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %80 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %81, align 8
  %84 = load %struct.adapter*, %struct.adapter** %6, align 8
  %85 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %86 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %85, i32 0, i32 2
  %87 = call i32 @refill_rspq(%struct.adapter* %84, %struct.TYPE_11__* %86, i32 1)
  %88 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %89 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load %struct.adapter*, %struct.adapter** %6, align 8
  %94 = load i32, i32* @A_SG_RSPQ_FL_STATUS, align 4
  %95 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %96 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = shl i32 1, %98
  %100 = call i32 @t3_write_reg(%struct.adapter* %93, i32 %94, i32 %99)
  br label %101

101:                                              ; preds = %78, %67
  br label %102

102:                                              ; preds = %101, %55
  br label %103

103:                                              ; preds = %102, %49
  %104 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %105 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %104, i32 0, i32 1
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %111 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %110, i32 0, i32 1
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp slt i64 %109, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %103
  %118 = load %struct.adapter*, %struct.adapter** %6, align 8
  %119 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %120 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %119, i32 0, i32 1
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i64 0
  %123 = call i32 @__refill_fl(%struct.adapter* %118, %struct.TYPE_12__* %122)
  br label %124

124:                                              ; preds = %117, %103
  %125 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %126 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %125, i32 0, i32 1
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %132 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %131, i32 0, i32 1
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i64 1
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp slt i64 %130, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %124
  %139 = load %struct.adapter*, %struct.adapter** %6, align 8
  %140 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %141 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %140, i32 0, i32 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i64 1
  %144 = call i32 @__refill_fl(%struct.adapter* %139, %struct.TYPE_12__* %143)
  br label %145

145:                                              ; preds = %138, %124
  br label %146

146:                                              ; preds = %145, %48
  %147 = load i32*, i32** %3, align 8
  %148 = call i32 @spin_unlock_irq(i32* %147)
  br label %149

149:                                              ; preds = %146, %42
  %150 = load %struct.sge_qset*, %struct.sge_qset** %4, align 8
  %151 = getelementptr inbounds %struct.sge_qset, %struct.sge_qset* %150, i32 0, i32 0
  %152 = load i64, i64* @jiffies, align 8
  %153 = load i64, i64* @RX_RECLAIM_PERIOD, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @mod_timer(i32* %151, i64 %154)
  ret void
}

declare dso_local %struct.sge_qset* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local %struct.port_info* @netdev_priv(i32) #1

declare dso_local i32 @spin_trylock_irq(i32*) #1

declare dso_local i64 @napi_is_scheduled(i32*) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @refill_rspq(%struct.adapter*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @__refill_fl(%struct.adapter*, %struct.TYPE_12__*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
