; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_agg-rx.c_mt76_rx_aggr_check_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_agg-rx.c_mt76_rx_aggr_check_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_rx_tid = type { i32, i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { i64 }
%struct.sk_buff_head = type { i32 }
%struct.mt76_rx_status = type { i32, i64 }

@jiffies = common dso_local global i32 0, align 4
@REORDER_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76_rx_tid*, %struct.sk_buff_head*)* @mt76_rx_aggr_check_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_rx_aggr_check_release(%struct.mt76_rx_tid* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.mt76_rx_tid*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.mt76_rx_status*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt76_rx_tid* %0, %struct.mt76_rx_tid** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %10 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %11 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %91

15:                                               ; preds = %2
  %16 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %17 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %18 = call i32 @mt76_rx_aggr_release_head(%struct.mt76_rx_tid* %16, %struct.sk_buff_head* %17)
  %19 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %20 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %23 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = srem i32 %21, %24
  store i32 %25, i32* %7, align 4
  %26 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %27 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %9, align 4
  %29 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %30 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %34 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = srem i32 %32, %35
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %80, %15
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br label %44

44:                                               ; preds = %41, %37
  %45 = phi i1 [ false, %37 ], [ %43, %41 ]
  br i1 %45, label %46, label %87

46:                                               ; preds = %44
  %47 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %48 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %47, i32 0, i32 3
  %49 = load %struct.sk_buff**, %struct.sk_buff*** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %49, i64 %51
  %53 = load %struct.sk_buff*, %struct.sk_buff** %52, align 8
  store %struct.sk_buff* %53, %struct.sk_buff** %6, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = icmp ne %struct.sk_buff* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %46
  br label %80

57:                                               ; preds = %46
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %9, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.mt76_rx_status*
  store %struct.mt76_rx_status* %63, %struct.mt76_rx_status** %5, align 8
  %64 = load i32, i32* @jiffies, align 4
  %65 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %5, align 8
  %66 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @REORDER_TIMEOUT, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @time_after(i32 %64, i64 %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %57
  br label %80

73:                                               ; preds = %57
  %74 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %75 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %76 = load %struct.mt76_rx_status*, %struct.mt76_rx_status** %5, align 8
  %77 = getelementptr inbounds %struct.mt76_rx_status, %struct.mt76_rx_status* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @mt76_rx_aggr_release_frames(%struct.mt76_rx_tid* %74, %struct.sk_buff_head* %75, i32 %78)
  br label %80

80:                                               ; preds = %73, %72, %56
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  %83 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %84 = getelementptr inbounds %struct.mt76_rx_tid, %struct.mt76_rx_tid* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = srem i32 %82, %85
  store i32 %86, i32* %8, align 4
  br label %37

87:                                               ; preds = %44
  %88 = load %struct.mt76_rx_tid*, %struct.mt76_rx_tid** %3, align 8
  %89 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %90 = call i32 @mt76_rx_aggr_release_head(%struct.mt76_rx_tid* %88, %struct.sk_buff_head* %89)
  br label %91

91:                                               ; preds = %87, %14
  ret void
}

declare dso_local i32 @mt76_rx_aggr_release_head(%struct.mt76_rx_tid*, %struct.sk_buff_head*) #1

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i32 @mt76_rx_aggr_release_frames(%struct.mt76_rx_tid*, %struct.sk_buff_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
