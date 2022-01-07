; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_l2t.c_t3_init_l2t.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_l2t.c_t3_init_l2t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_data = type { i32, %struct.TYPE_2__*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@l2tab = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@L2T_STATE_UNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2t_data* @t3_init_l2t(i32 %0) #0 {
  %2 = alloca %struct.l2t_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2t_data*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %7 = load i32, i32* @l2tab, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @struct_size(%struct.l2t_data* %6, i32 %7, i32 %8)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.l2t_data* @kvzalloc(i32 %9, i32 %10)
  store %struct.l2t_data* %11, %struct.l2t_data** %4, align 8
  %12 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %13 = icmp ne %struct.l2t_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.l2t_data* null, %struct.l2t_data** %2, align 8
  br label %83

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %18 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %20 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 1
  %23 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %24 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %23, i32 0, i32 4
  store %struct.TYPE_2__* %22, %struct.TYPE_2__** %24, align 8
  %25 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %26 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %25, i32 0, i32 3
  %27 = load i32, i32* %3, align 4
  %28 = sub i32 %27, 1
  %29 = call i32 @atomic_set(i32* %26, i32 %28)
  %30 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %31 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %30, i32 0, i32 2
  %32 = call i32 @rwlock_init(i32* %31)
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %78, %15
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %81

37:                                               ; preds = %33
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %40 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %38, i32* %45, align 4
  %46 = load i32, i32* @L2T_STATE_UNUSED, align 4
  %47 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %48 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  store i32 %46, i32* %53, align 4
  %54 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %55 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = call i32 @__skb_queue_head_init(i32* %60)
  %62 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %63 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  %71 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = call i32 @atomic_set(i32* %76, i32 0)
  br label %78

78:                                               ; preds = %37
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %33

81:                                               ; preds = %33
  %82 = load %struct.l2t_data*, %struct.l2t_data** %4, align 8
  store %struct.l2t_data* %82, %struct.l2t_data** %2, align 8
  br label %83

83:                                               ; preds = %81, %14
  %84 = load %struct.l2t_data*, %struct.l2t_data** %2, align 8
  ret %struct.l2t_data* %84
}

declare dso_local %struct.l2t_data* @kvzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.l2t_data*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @__skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
