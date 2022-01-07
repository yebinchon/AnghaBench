; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_hw_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_hw_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.hwsim_phy* }
%struct.hwsim_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee802154_hw*)* @hwsim_hw_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hwsim_hw_stop(%struct.ieee802154_hw* %0) #0 {
  %2 = alloca %struct.ieee802154_hw*, align 8
  %3 = alloca %struct.hwsim_phy*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %2, align 8
  %4 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %4, i32 0, i32 0
  %6 = load %struct.hwsim_phy*, %struct.hwsim_phy** %5, align 8
  store %struct.hwsim_phy* %6, %struct.hwsim_phy** %3, align 8
  %7 = load %struct.hwsim_phy*, %struct.hwsim_phy** %3, align 8
  %8 = getelementptr inbounds %struct.hwsim_phy, %struct.hwsim_phy* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
