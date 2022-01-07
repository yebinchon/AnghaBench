; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_hw_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_hw_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.hwsim_phy* }
%struct.hwsim_phy = type { i32 }
%struct.hwsim_pib = type { i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i8*, i8*)* @hwsim_hw_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwsim_hw_channel(%struct.ieee802154_hw* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee802154_hw*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hwsim_phy*, align 8
  %9 = alloca %struct.hwsim_pib*, align 8
  %10 = alloca %struct.hwsim_pib*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %11, i32 0, i32 0
  %13 = load %struct.hwsim_phy*, %struct.hwsim_phy** %12, align 8
  store %struct.hwsim_phy* %13, %struct.hwsim_phy** %8, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.hwsim_pib* @kzalloc(i32 16, i32 %14)
  store %struct.hwsim_pib* %15, %struct.hwsim_pib** %9, align 8
  %16 = load %struct.hwsim_pib*, %struct.hwsim_pib** %9, align 8
  %17 = icmp ne %struct.hwsim_pib* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %40

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = load %struct.hwsim_pib*, %struct.hwsim_pib** %9, align 8
  %24 = getelementptr inbounds %struct.hwsim_pib, %struct.hwsim_pib* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load %struct.hwsim_pib*, %struct.hwsim_pib** %9, align 8
  %27 = getelementptr inbounds %struct.hwsim_pib, %struct.hwsim_pib* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.hwsim_phy*, %struct.hwsim_phy** %8, align 8
  %29 = getelementptr inbounds %struct.hwsim_phy, %struct.hwsim_phy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.hwsim_pib* @rtnl_dereference(i32 %30)
  store %struct.hwsim_pib* %31, %struct.hwsim_pib** %10, align 8
  %32 = load %struct.hwsim_phy*, %struct.hwsim_phy** %8, align 8
  %33 = getelementptr inbounds %struct.hwsim_phy, %struct.hwsim_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hwsim_pib*, %struct.hwsim_pib** %9, align 8
  %36 = call i32 @rcu_assign_pointer(i32 %34, %struct.hwsim_pib* %35)
  %37 = load %struct.hwsim_pib*, %struct.hwsim_pib** %10, align 8
  %38 = load i32, i32* @rcu, align 4
  %39 = call i32 @kfree_rcu(%struct.hwsim_pib* %37, i32 %38)
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %21, %18
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.hwsim_pib* @kzalloc(i32, i32) #1

declare dso_local %struct.hwsim_pib* @rtnl_dereference(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.hwsim_pib*) #1

declare dso_local i32 @kfree_rcu(%struct.hwsim_pib*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
