; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_bond_3ad_get_active_agg_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_3ad.c_bond_3ad_get_active_agg_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bonding = type { i32 }
%struct.ad_info = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bond_3ad_get_active_agg_info(%struct.bonding* %0, %struct.ad_info* %1) #0 {
  %3 = alloca %struct.bonding*, align 8
  %4 = alloca %struct.ad_info*, align 8
  %5 = alloca i32, align 4
  store %struct.bonding* %0, %struct.bonding** %3, align 8
  store %struct.ad_info* %1, %struct.ad_info** %4, align 8
  %6 = call i32 (...) @rcu_read_lock()
  %7 = load %struct.bonding*, %struct.bonding** %3, align 8
  %8 = load %struct.ad_info*, %struct.ad_info** %4, align 8
  %9 = call i32 @__bond_3ad_get_active_agg_info(%struct.bonding* %7, %struct.ad_info* %8)
  store i32 %9, i32* %5, align 4
  %10 = call i32 (...) @rcu_read_unlock()
  %11 = load i32, i32* %5, align 4
  ret i32 %11
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @__bond_3ad_get_active_agg_info(%struct.bonding*, %struct.ad_info*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
