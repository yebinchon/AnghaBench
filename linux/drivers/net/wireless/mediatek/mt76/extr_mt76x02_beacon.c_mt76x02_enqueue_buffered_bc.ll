; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_beacon.c_mt76x02_enqueue_buffered_bc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mt76x02_beacon.c_mt76x02_enqueue_buffered_bc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }
%struct.beacon_bc_data = type { i32*, i32, %struct.mt76x02_dev* }

@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@mt76x02_add_buffered_bc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x02_enqueue_buffered_bc(%struct.mt76x02_dev* %0, %struct.beacon_bc_data* %1, i32 %2) #0 {
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca %struct.beacon_bc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store %struct.beacon_bc_data* %1, %struct.beacon_bc_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %10 = load %struct.beacon_bc_data*, %struct.beacon_bc_data** %5, align 8
  %11 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %10, i32 0, i32 2
  store %struct.mt76x02_dev* %9, %struct.mt76x02_dev** %11, align 8
  %12 = load %struct.beacon_bc_data*, %struct.beacon_bc_data** %5, align 8
  %13 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %12, i32 0, i32 1
  %14 = call i32 @__skb_queue_head_init(i32* %13)
  br label %15

15:                                               ; preds = %37, %3
  %16 = load %struct.beacon_bc_data*, %struct.beacon_bc_data** %5, align 8
  %17 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %16, i32 0, i32 1
  %18 = call i32 @skb_queue_len(i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %20 = call i32 @mt76_hw(%struct.mt76x02_dev* %19)
  %21 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %22 = load i32, i32* @mt76x02_add_buffered_bc, align 4
  %23 = load %struct.beacon_bc_data*, %struct.beacon_bc_data** %5, align 8
  %24 = call i32 @ieee80211_iterate_active_interfaces_atomic(i32 %20, i32 %21, i32 %22, %struct.beacon_bc_data* %23)
  br label %25

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.beacon_bc_data*, %struct.beacon_bc_data** %5, align 8
  %28 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %27, i32 0, i32 1
  %29 = call i32 @skb_queue_len(i32* %28)
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.beacon_bc_data*, %struct.beacon_bc_data** %5, align 8
  %33 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %32, i32 0, i32 1
  %34 = call i32 @skb_queue_len(i32* %33)
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br label %37

37:                                               ; preds = %31, %25
  %38 = phi i1 [ false, %25 ], [ %36, %31 ]
  br i1 %38, label %15, label %39

39:                                               ; preds = %37
  %40 = load %struct.beacon_bc_data*, %struct.beacon_bc_data** %5, align 8
  %41 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %40, i32 0, i32 1
  %42 = call i32 @skb_queue_len(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %75

45:                                               ; preds = %39
  store i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %72, %45
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.beacon_bc_data*, %struct.beacon_bc_data** %5, align 8
  %49 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @ARRAY_SIZE(i32* %50)
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %46
  %54 = load %struct.beacon_bc_data*, %struct.beacon_bc_data** %5, align 8
  %55 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %72

63:                                               ; preds = %53
  %64 = load %struct.beacon_bc_data*, %struct.beacon_bc_data** %5, align 8
  %65 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mt76_skb_set_moredata(i32 %70, i32 0)
  br label %72

72:                                               ; preds = %63, %62
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %46

75:                                               ; preds = %44, %46
  ret void
}

declare dso_local i32 @__skb_queue_head_init(i32*) #1

declare dso_local i32 @skb_queue_len(i32*) #1

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(i32, i32, i32, %struct.beacon_bc_data*) #1

declare dso_local i32 @mt76_hw(%struct.mt76x02_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mt76_skb_set_moredata(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
