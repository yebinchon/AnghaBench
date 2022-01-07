; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_l3s.c_ipvlan_migrate_l3s_hook.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_l3s.c_ipvlan_migrate_l3s_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ipvlan_netns = type { i32 }

@ipvlan_netid = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipvlan_migrate_l3s_hook(%struct.net* %0, %struct.net* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.ipvlan_netns*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.net* %1, %struct.net** %4, align 8
  %6 = call i32 (...) @ASSERT_RTNL()
  %7 = load %struct.net*, %struct.net** %3, align 8
  %8 = load i32, i32* @ipvlan_netid, align 4
  %9 = call %struct.ipvlan_netns* @net_generic(%struct.net* %7, i32 %8)
  store %struct.ipvlan_netns* %9, %struct.ipvlan_netns** %5, align 8
  %10 = load %struct.ipvlan_netns*, %struct.ipvlan_netns** %5, align 8
  %11 = getelementptr inbounds %struct.ipvlan_netns, %struct.ipvlan_netns* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.net*, %struct.net** %4, align 8
  %17 = call i32 @ipvlan_register_nf_hook(%struct.net* %16)
  %18 = load %struct.net*, %struct.net** %3, align 8
  %19 = call i32 @ipvlan_unregister_nf_hook(%struct.net* %18)
  br label %20

20:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local %struct.ipvlan_netns* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @ipvlan_register_nf_hook(%struct.net*) #1

declare dso_local i32 @ipvlan_unregister_nf_hook(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
