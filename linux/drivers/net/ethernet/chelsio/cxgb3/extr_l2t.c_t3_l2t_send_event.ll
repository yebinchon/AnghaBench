; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_l2t.c_t3_l2t_send_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_l2t.c_t3_l2t_send_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.l2t_entry = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_l2t_send_event(%struct.t3cdev* %0, %struct.l2t_entry* %1) #0 {
  %3 = alloca %struct.t3cdev*, align 8
  %4 = alloca %struct.l2t_entry*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %3, align 8
  store %struct.l2t_entry* %1, %struct.l2t_entry** %4, align 8
  br label %5

5:                                                ; preds = %37, %2
  %6 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %7 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %49 [
    i32 129, label %9
    i32 128, label %28
    i32 130, label %29
  ]

9:                                                ; preds = %5
  %10 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %11 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @neigh_event_send(i32 %12, i32* null)
  %14 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %15 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %14, i32 0, i32 2
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %18 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 129
  br i1 %20, label %21, label %24

21:                                               ; preds = %9
  %22 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %23 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %22, i32 0, i32 0
  store i32 128, i32* %23, align 4
  br label %24

24:                                               ; preds = %21, %9
  %25 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %26 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %25, i32 0, i32 2
  %27 = call i32 @spin_unlock_bh(i32* %26)
  br label %49

28:                                               ; preds = %5
  br label %49

29:                                               ; preds = %5
  %30 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %31 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %30, i32 0, i32 2
  %32 = call i32 @spin_lock_bh(i32* %31)
  %33 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %34 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 130
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %39 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %38, i32 0, i32 2
  %40 = call i32 @spin_unlock_bh(i32* %39)
  br label %5

41:                                               ; preds = %29
  %42 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %43 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %42, i32 0, i32 2
  %44 = call i32 @spin_unlock_bh(i32* %43)
  %45 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %46 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @neigh_event_send(i32 %47, i32* null)
  br label %49

49:                                               ; preds = %24, %28, %41, %5
  ret void
}

declare dso_local i32 @neigh_event_send(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
