; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_l3s.c_ipvlan_ns_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_l3s.c_ipvlan_ns_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ipvlan_netns = type { i64 }

@ipvlan_netid = common dso_local global i32 0, align 4
@ipvl_nfops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*)* @ipvlan_ns_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipvlan_ns_exit(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.ipvlan_netns*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = load %struct.net*, %struct.net** %2, align 8
  %5 = load i32, i32* @ipvlan_netid, align 4
  %6 = call %struct.ipvlan_netns* @net_generic(%struct.net* %4, i32 %5)
  store %struct.ipvlan_netns* %6, %struct.ipvlan_netns** %3, align 8
  %7 = load %struct.ipvlan_netns*, %struct.ipvlan_netns** %3, align 8
  %8 = getelementptr inbounds %struct.ipvlan_netns, %struct.ipvlan_netns* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i64 @WARN_ON_ONCE(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.ipvlan_netns*, %struct.ipvlan_netns** %3, align 8
  %14 = getelementptr inbounds %struct.ipvlan_netns, %struct.ipvlan_netns* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.net*, %struct.net** %2, align 8
  %16 = load i32, i32* @ipvl_nfops, align 4
  %17 = load i32, i32* @ipvl_nfops, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = call i32 @nf_unregister_net_hooks(%struct.net* %15, i32 %16, i32 %18)
  br label %20

20:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.ipvlan_netns* @net_generic(%struct.net*, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i64) #1

declare dso_local i32 @nf_unregister_net_hooks(%struct.net*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
