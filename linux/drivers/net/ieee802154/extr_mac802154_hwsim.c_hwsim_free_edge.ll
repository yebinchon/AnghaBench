; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_free_edge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_free_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwsim_edge = type { i32 }
%struct.hwsim_edge_info = type { i32 }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hwsim_edge*)* @hwsim_free_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwsim_free_edge(%struct.hwsim_edge* %0) #0 {
  %2 = alloca %struct.hwsim_edge*, align 8
  %3 = alloca %struct.hwsim_edge_info*, align 8
  store %struct.hwsim_edge* %0, %struct.hwsim_edge** %2, align 8
  %4 = call i32 (...) @rcu_read_lock()
  %5 = load %struct.hwsim_edge*, %struct.hwsim_edge** %2, align 8
  %6 = getelementptr inbounds %struct.hwsim_edge, %struct.hwsim_edge* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.hwsim_edge_info* @rcu_dereference(i32 %7)
  store %struct.hwsim_edge_info* %8, %struct.hwsim_edge_info** %3, align 8
  %9 = call i32 (...) @rcu_read_unlock()
  %10 = load %struct.hwsim_edge_info*, %struct.hwsim_edge_info** %3, align 8
  %11 = load i32, i32* @rcu, align 4
  %12 = call i32 @kfree_rcu(%struct.hwsim_edge_info* %10, i32 %11)
  %13 = load %struct.hwsim_edge*, %struct.hwsim_edge** %2, align 8
  %14 = bitcast %struct.hwsim_edge* %13 to %struct.hwsim_edge_info*
  %15 = load i32, i32* @rcu, align 4
  %16 = call i32 @kfree_rcu(%struct.hwsim_edge_info* %14, i32 %15)
  ret void
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.hwsim_edge_info* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree_rcu(%struct.hwsim_edge_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
