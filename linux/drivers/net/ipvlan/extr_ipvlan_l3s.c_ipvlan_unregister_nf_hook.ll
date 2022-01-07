; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_l3s.c_ipvlan_unregister_nf_hook.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_l3s.c_ipvlan_unregister_nf_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ipvlan_netns = type { i32 }

@ipvlan_netid = common dso_local global i32 0, align 4
@ipvl_nfops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net*)* @ipvlan_unregister_nf_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipvlan_unregister_nf_hook(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.ipvlan_netns*, align 8
  store %struct.net* %0, %struct.net** %2, align 8
  %4 = load %struct.net*, %struct.net** %2, align 8
  %5 = load i32, i32* @ipvlan_netid, align 4
  %6 = call %struct.ipvlan_netns* @net_generic(%struct.net* %4, i32 %5)
  store %struct.ipvlan_netns* %6, %struct.ipvlan_netns** %3, align 8
  %7 = load %struct.ipvlan_netns*, %struct.ipvlan_netns** %3, align 8
  %8 = getelementptr inbounds %struct.ipvlan_netns, %struct.ipvlan_netns* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %31

16:                                               ; preds = %1
  %17 = load %struct.ipvlan_netns*, %struct.ipvlan_netns** %3, align 8
  %18 = getelementptr inbounds %struct.ipvlan_netns, %struct.ipvlan_netns* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.ipvlan_netns*, %struct.ipvlan_netns** %3, align 8
  %22 = getelementptr inbounds %struct.ipvlan_netns, %struct.ipvlan_netns* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %16
  %26 = load %struct.net*, %struct.net** %2, align 8
  %27 = load i32, i32* @ipvl_nfops, align 4
  %28 = load i32, i32* @ipvl_nfops, align 4
  %29 = call i32 @ARRAY_SIZE(i32 %28)
  %30 = call i32 @nf_unregister_net_hooks(%struct.net* %26, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %15, %25, %16
  ret void
}

declare dso_local %struct.ipvlan_netns* @net_generic(%struct.net*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @nf_unregister_net_hooks(%struct.net*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
