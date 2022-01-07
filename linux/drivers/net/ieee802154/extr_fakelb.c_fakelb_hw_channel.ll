; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_fakelb.c_fakelb_hw_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_fakelb.c_fakelb_hw_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.fakelb_phy* }
%struct.fakelb_phy = type { i8*, i8* }

@fakelb_ifup_phys_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i8*, i8*)* @fakelb_hw_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fakelb_hw_channel(%struct.ieee802154_hw* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.ieee802154_hw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fakelb_phy*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %8, i32 0, i32 0
  %10 = load %struct.fakelb_phy*, %struct.fakelb_phy** %9, align 8
  store %struct.fakelb_phy* %10, %struct.fakelb_phy** %7, align 8
  %11 = call i32 @write_lock_bh(i32* @fakelb_ifup_phys_lock)
  %12 = load i8*, i8** %5, align 8
  %13 = load %struct.fakelb_phy*, %struct.fakelb_phy** %7, align 8
  %14 = getelementptr inbounds %struct.fakelb_phy, %struct.fakelb_phy* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.fakelb_phy*, %struct.fakelb_phy** %7, align 8
  %17 = getelementptr inbounds %struct.fakelb_phy, %struct.fakelb_phy* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = call i32 @write_unlock_bh(i32* @fakelb_ifup_phys_lock)
  ret i32 0
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
