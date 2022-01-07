; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_l2t.c_t3_l2e_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_l2t.c_t3_l2e_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_data = type { i32 }
%struct.l2t_entry = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_l2e_free(%struct.l2t_data* %0, %struct.l2t_entry* %1) #0 {
  %3 = alloca %struct.l2t_data*, align 8
  %4 = alloca %struct.l2t_entry*, align 8
  store %struct.l2t_data* %0, %struct.l2t_data** %3, align 8
  store %struct.l2t_entry* %1, %struct.l2t_entry** %4, align 8
  %5 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %6 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %9 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %8, i32 0, i32 2
  %10 = call i64 @atomic_read(i32* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %14 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %19 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @neigh_release(i32* %20)
  %22 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %23 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %17, %12
  br label %25

25:                                               ; preds = %24, %2
  %26 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %27 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %26, i32 0, i32 0
  %28 = call i32 @spin_unlock_bh(i32* %27)
  %29 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %30 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %29, i32 0, i32 0
  %31 = call i32 @atomic_inc(i32* %30)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @neigh_release(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
