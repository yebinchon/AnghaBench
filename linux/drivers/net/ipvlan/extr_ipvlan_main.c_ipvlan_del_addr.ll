; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_del_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_main.c_ipvlan_del_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipvl_dev = type { i32 }
%struct.ipvl_addr = type { i32 }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipvl_dev*, i8*, i32)* @ipvlan_del_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipvlan_del_addr(%struct.ipvl_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ipvl_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipvl_addr*, align 8
  store %struct.ipvl_dev* %0, %struct.ipvl_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ipvl_dev*, %struct.ipvl_dev** %4, align 8
  %9 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.ipvl_dev*, %struct.ipvl_dev** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.ipvl_addr* @ipvlan_find_addr(%struct.ipvl_dev* %11, i8* %12, i32 %13)
  store %struct.ipvl_addr* %14, %struct.ipvl_addr** %7, align 8
  %15 = load %struct.ipvl_addr*, %struct.ipvl_addr** %7, align 8
  %16 = icmp ne %struct.ipvl_addr* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load %struct.ipvl_dev*, %struct.ipvl_dev** %4, align 8
  %19 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock_bh(i32* %19)
  br label %33

21:                                               ; preds = %3
  %22 = load %struct.ipvl_addr*, %struct.ipvl_addr** %7, align 8
  %23 = call i32 @ipvlan_ht_addr_del(%struct.ipvl_addr* %22)
  %24 = load %struct.ipvl_addr*, %struct.ipvl_addr** %7, align 8
  %25 = getelementptr inbounds %struct.ipvl_addr, %struct.ipvl_addr* %24, i32 0, i32 0
  %26 = call i32 @list_del_rcu(i32* %25)
  %27 = load %struct.ipvl_dev*, %struct.ipvl_dev** %4, align 8
  %28 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_bh(i32* %28)
  %30 = load %struct.ipvl_addr*, %struct.ipvl_addr** %7, align 8
  %31 = load i32, i32* @rcu, align 4
  %32 = call i32 @kfree_rcu(%struct.ipvl_addr* %30, i32 %31)
  br label %33

33:                                               ; preds = %21, %17
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.ipvl_addr* @ipvlan_find_addr(%struct.ipvl_dev*, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ipvlan_ht_addr_del(%struct.ipvl_addr*) #1

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @kfree_rcu(%struct.ipvl_addr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
