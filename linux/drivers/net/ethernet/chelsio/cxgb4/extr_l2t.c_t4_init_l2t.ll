; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_t4_init_l2t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_t4_init_l2t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_data = type { i32, i32, %struct.TYPE_2__*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@L2T_SIZE = common dso_local global i32 0, align 4
@L2T_MIN_HASH_BUCKETS = common dso_local global i32 0, align 4
@l2tab = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@L2T_STATE_UNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2t_data* @t4_init_l2t(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.l2t_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.l2t_data*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @L2T_SIZE, align 4
  %15 = icmp uge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %2
  store %struct.l2t_data* null, %struct.l2t_data** %3, align 8
  br label %107

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sub i32 %18, %19
  %21 = add i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @L2T_MIN_HASH_BUCKETS, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store %struct.l2t_data* null, %struct.l2t_data** %3, align 8
  br label %107

26:                                               ; preds = %17
  %27 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %28 = load i32, i32* @l2tab, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @struct_size(%struct.l2t_data* %27, i32 %28, i32 %29)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.l2t_data* @kvzalloc(i32 %30, i32 %31)
  store %struct.l2t_data* %32, %struct.l2t_data** %8, align 8
  %33 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %34 = icmp ne %struct.l2t_data* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  store %struct.l2t_data* null, %struct.l2t_data** %3, align 8
  br label %107

36:                                               ; preds = %26
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %39 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %42 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %44 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %43, i32 0, i32 2
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %47 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %46, i32 0, i32 5
  store %struct.TYPE_2__* %45, %struct.TYPE_2__** %47, align 8
  %48 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %49 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %48, i32 0, i32 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @atomic_set(i32* %49, i32 %50)
  %52 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %53 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %52, i32 0, i32 3
  %54 = call i32 @rwlock_init(i32* %53)
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %102, %36
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %58 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %56, %59
  br i1 %60, label %61, label %105

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %64 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i32 %62, i32* %69, align 4
  %70 = load i32, i32* @L2T_STATE_UNUSED, align 4
  %71 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %72 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %71, i32 0, i32 2
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 4
  store i32 %70, i32* %77, align 4
  %78 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %79 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = call i32 @spin_lock_init(i32* %84)
  %86 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %87 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 2
  %93 = call i32 @atomic_set(i32* %92, i32 0)
  %94 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  %95 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = call i32 @skb_queue_head_init(i32* %100)
  br label %102

102:                                              ; preds = %61
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %55

105:                                              ; preds = %55
  %106 = load %struct.l2t_data*, %struct.l2t_data** %8, align 8
  store %struct.l2t_data* %106, %struct.l2t_data** %3, align 8
  br label %107

107:                                              ; preds = %105, %35, %25, %16
  %108 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  ret %struct.l2t_data* %108
}

declare dso_local %struct.l2t_data* @kvzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.l2t_data*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
