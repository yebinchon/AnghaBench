; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_cxgb4_get_free_ftid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_cxgb4_get_free_ftid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.adapter = type { %struct.TYPE_2__, %struct.tid_info }
%struct.TYPE_2__ = type { i32 }
%struct.tid_info = type { i32, i32, i32 }

@PF_INET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_get_free_ftid(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.tid_info*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.adapter* @netdev2adap(%struct.net_device* %8)
  store %struct.adapter* %9, %struct.adapter** %5, align 8
  %10 = load %struct.adapter*, %struct.adapter** %5, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  store %struct.tid_info* %11, %struct.tid_info** %6, align 8
  %12 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %13 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PF_INET, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %2
  %19 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %20 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %23 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @find_first_zero_bit(i32 %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %28 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  store i32 -1, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %18
  br label %75

33:                                               ; preds = %2
  %34 = load %struct.adapter*, %struct.adapter** %5, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @is_t6(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %57

40:                                               ; preds = %33
  %41 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %42 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %45 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bitmap_find_free_region(i32 %43, i32 %46, i32 1)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  br label %76

51:                                               ; preds = %40
  %52 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %53 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @bitmap_release_region(i32 %54, i32 %55, i32 1)
  br label %74

57:                                               ; preds = %33
  %58 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %59 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %62 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @bitmap_find_free_region(i32 %60, i32 %63, i32 2)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %76

68:                                               ; preds = %57
  %69 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %70 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @bitmap_release_region(i32 %71, i32 %72, i32 2)
  br label %74

74:                                               ; preds = %68, %51
  br label %75

75:                                               ; preds = %74, %32
  br label %76

76:                                               ; preds = %75, %67, %50
  %77 = load %struct.tid_info*, %struct.tid_info** %6, align 8
  %78 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %77, i32 0, i32 1
  %79 = call i32 @spin_unlock_bh(i32* %78)
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local %struct.adapter* @netdev2adap(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i64 @is_t6(i32) #1

declare dso_local i32 @bitmap_find_free_region(i32, i32, i32) #1

declare dso_local i32 @bitmap_release_region(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
