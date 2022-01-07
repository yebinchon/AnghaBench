; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_alloc_edge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mac802154_hwsim.c_hwsim_alloc_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hwsim_edge = type { %struct.hwsim_phy*, i32 }
%struct.hwsim_phy = type { i32 }
%struct.hwsim_edge_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hwsim_edge* (%struct.hwsim_phy*, i32)* @hwsim_alloc_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hwsim_edge* @hwsim_alloc_edge(%struct.hwsim_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.hwsim_edge*, align 8
  %4 = alloca %struct.hwsim_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwsim_edge_info*, align 8
  %7 = alloca %struct.hwsim_edge*, align 8
  store %struct.hwsim_phy* %0, %struct.hwsim_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i8* @kzalloc(i32 16, i32 %8)
  %10 = bitcast i8* %9 to %struct.hwsim_edge*
  store %struct.hwsim_edge* %10, %struct.hwsim_edge** %7, align 8
  %11 = load %struct.hwsim_edge*, %struct.hwsim_edge** %7, align 8
  %12 = icmp ne %struct.hwsim_edge* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.hwsim_edge* null, %struct.hwsim_edge** %3, align 8
  br label %35

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kzalloc(i32 4, i32 %15)
  %17 = bitcast i8* %16 to %struct.hwsim_edge_info*
  store %struct.hwsim_edge_info* %17, %struct.hwsim_edge_info** %6, align 8
  %18 = load %struct.hwsim_edge_info*, %struct.hwsim_edge_info** %6, align 8
  %19 = icmp ne %struct.hwsim_edge_info* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = load %struct.hwsim_edge*, %struct.hwsim_edge** %7, align 8
  %22 = call i32 @kfree(%struct.hwsim_edge* %21)
  store %struct.hwsim_edge* null, %struct.hwsim_edge** %3, align 8
  br label %35

23:                                               ; preds = %14
  %24 = load %struct.hwsim_edge_info*, %struct.hwsim_edge_info** %6, align 8
  %25 = getelementptr inbounds %struct.hwsim_edge_info, %struct.hwsim_edge_info* %24, i32 0, i32 0
  store i32 255, i32* %25, align 4
  %26 = load %struct.hwsim_edge*, %struct.hwsim_edge** %7, align 8
  %27 = getelementptr inbounds %struct.hwsim_edge, %struct.hwsim_edge* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.hwsim_edge_info*, %struct.hwsim_edge_info** %6, align 8
  %30 = call i32 @rcu_assign_pointer(i32 %28, %struct.hwsim_edge_info* %29)
  %31 = load %struct.hwsim_phy*, %struct.hwsim_phy** %4, align 8
  %32 = load %struct.hwsim_edge*, %struct.hwsim_edge** %7, align 8
  %33 = getelementptr inbounds %struct.hwsim_edge, %struct.hwsim_edge* %32, i32 0, i32 0
  store %struct.hwsim_phy* %31, %struct.hwsim_phy** %33, align 8
  %34 = load %struct.hwsim_edge*, %struct.hwsim_edge** %7, align 8
  store %struct.hwsim_edge* %34, %struct.hwsim_edge** %3, align 8
  br label %35

35:                                               ; preds = %23, %20, %13
  %36 = load %struct.hwsim_edge*, %struct.hwsim_edge** %3, align 8
  ret %struct.hwsim_edge* %36
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.hwsim_edge*) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.hwsim_edge_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
