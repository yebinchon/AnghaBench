; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_l3s.c_ipvlan_register_nf_hook.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_l3s.c_ipvlan_register_nf_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ipvlan_netns = type { i32 }

@ipvlan_netid = common dso_local global i32 0, align 4
@ipvl_nfops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @ipvlan_register_nf_hook to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipvlan_register_nf_hook(%struct.net* %0) #0 {
  %2 = alloca %struct.net*, align 8
  %3 = alloca %struct.ipvlan_netns*, align 8
  %4 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %2, align 8
  %5 = load %struct.net*, %struct.net** %2, align 8
  %6 = load i32, i32* @ipvlan_netid, align 4
  %7 = call %struct.ipvlan_netns* @net_generic(%struct.net* %5, i32 %6)
  store %struct.ipvlan_netns* %7, %struct.ipvlan_netns** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.ipvlan_netns*, %struct.ipvlan_netns** %3, align 8
  %9 = getelementptr inbounds %struct.ipvlan_netns, %struct.ipvlan_netns* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %1
  %13 = load %struct.net*, %struct.net** %2, align 8
  %14 = load i32, i32* @ipvl_nfops, align 4
  %15 = load i32, i32* @ipvl_nfops, align 4
  %16 = call i32 @ARRAY_SIZE(i32 %15)
  %17 = call i32 @nf_register_net_hooks(%struct.net* %13, i32 %14, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %12
  %21 = load %struct.ipvlan_netns*, %struct.ipvlan_netns** %3, align 8
  %22 = getelementptr inbounds %struct.ipvlan_netns, %struct.ipvlan_netns* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %12
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.ipvlan_netns*, %struct.ipvlan_netns** %3, align 8
  %26 = getelementptr inbounds %struct.ipvlan_netns, %struct.ipvlan_netns* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %24, %23
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.ipvlan_netns* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @nf_register_net_hooks(%struct.net*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
