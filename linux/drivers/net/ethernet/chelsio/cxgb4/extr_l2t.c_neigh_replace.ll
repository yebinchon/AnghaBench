; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_neigh_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_neigh_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_entry = type { %struct.neighbour* }
%struct.neighbour = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2t_entry*, %struct.neighbour*)* @neigh_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neigh_replace(%struct.l2t_entry* %0, %struct.neighbour* %1) #0 {
  %3 = alloca %struct.l2t_entry*, align 8
  %4 = alloca %struct.neighbour*, align 8
  store %struct.l2t_entry* %0, %struct.l2t_entry** %3, align 8
  store %struct.neighbour* %1, %struct.neighbour** %4, align 8
  %5 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %6 = call i32 @neigh_hold(%struct.neighbour* %5)
  %7 = load %struct.l2t_entry*, %struct.l2t_entry** %3, align 8
  %8 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %7, i32 0, i32 0
  %9 = load %struct.neighbour*, %struct.neighbour** %8, align 8
  %10 = icmp ne %struct.neighbour* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.l2t_entry*, %struct.l2t_entry** %3, align 8
  %13 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %12, i32 0, i32 0
  %14 = load %struct.neighbour*, %struct.neighbour** %13, align 8
  %15 = call i32 @neigh_release(%struct.neighbour* %14)
  br label %16

16:                                               ; preds = %11, %2
  %17 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %18 = load %struct.l2t_entry*, %struct.l2t_entry** %3, align 8
  %19 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %18, i32 0, i32 0
  store %struct.neighbour* %17, %struct.neighbour** %19, align 8
  ret void
}

declare dso_local i32 @neigh_hold(%struct.neighbour*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
