; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwsim_phy = type { i32, i32, i32 }
%struct.hwsim_pib = type { i32 }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hwsim_phy*)* @hwsim_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwsim_del(%struct.hwsim_phy* %0) #0 {
  %2 = alloca %struct.hwsim_phy*, align 8
  %3 = alloca %struct.hwsim_pib*, align 8
  store %struct.hwsim_phy* %0, %struct.hwsim_phy** %2, align 8
  %4 = load %struct.hwsim_phy*, %struct.hwsim_phy** %2, align 8
  %5 = call i32 @hwsim_edge_unsubscribe_me(%struct.hwsim_phy* %4)
  %6 = load %struct.hwsim_phy*, %struct.hwsim_phy** %2, align 8
  %7 = getelementptr inbounds %struct.hwsim_phy, %struct.hwsim_phy* %6, i32 0, i32 2
  %8 = call i32 @list_del(i32* %7)
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.hwsim_phy*, %struct.hwsim_phy** %2, align 8
  %11 = getelementptr inbounds %struct.hwsim_phy, %struct.hwsim_phy* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.hwsim_pib* @rcu_dereference(i32 %12)
  store %struct.hwsim_pib* %13, %struct.hwsim_pib** %3, align 8
  %14 = call i32 (...) @rcu_read_unlock()
  %15 = load %struct.hwsim_pib*, %struct.hwsim_pib** %3, align 8
  %16 = load i32, i32* @rcu, align 4
  %17 = call i32 @kfree_rcu(%struct.hwsim_pib* %15, i32 %16)
  %18 = load %struct.hwsim_phy*, %struct.hwsim_phy** %2, align 8
  %19 = getelementptr inbounds %struct.hwsim_phy, %struct.hwsim_phy* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ieee802154_unregister_hw(i32 %20)
  %22 = load %struct.hwsim_phy*, %struct.hwsim_phy** %2, align 8
  %23 = getelementptr inbounds %struct.hwsim_phy, %struct.hwsim_phy* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ieee802154_free_hw(i32 %24)
  ret void
}

declare dso_local i32 @hwsim_edge_unsubscribe_me(%struct.hwsim_phy*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.hwsim_pib* @rcu_dereference(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @kfree_rcu(%struct.hwsim_pib*, i32) #1

declare dso_local i32 @ieee802154_unregister_hw(i32) #1

declare dso_local i32 @ieee802154_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
