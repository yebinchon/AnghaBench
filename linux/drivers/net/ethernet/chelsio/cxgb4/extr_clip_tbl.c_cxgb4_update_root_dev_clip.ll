; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_clip_tbl.c_cxgb4_update_root_dev_clip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_clip_tbl.c_cxgb4_update_root_dev_clip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@VLAN_N_VID = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_update_root_dev_clip(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.net_device* null, %struct.net_device** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @cxgb4_update_dev_clip(%struct.net_device* %7, %struct.net_device* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %2, align 4
  br label %55

14:                                               ; preds = %1
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device* %15)
  store %struct.net_device* %16, %struct.net_device** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = icmp ne %struct.net_device* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i32 @cxgb4_update_dev_clip(%struct.net_device* %20, %struct.net_device* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %2, align 4
  br label %55

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %14
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %50, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @VLAN_N_VID, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load i32, i32* @ETH_P_8021Q, align 4
  %36 = call i32 @htons(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = call %struct.net_device* @__vlan_find_dev_deep_rcu(%struct.net_device* %34, i32 %36, i32 %37)
  store %struct.net_device* %38, %struct.net_device** %4, align 8
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = icmp ne %struct.net_device* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %33
  br label %50

42:                                               ; preds = %33
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @cxgb4_update_dev_clip(%struct.net_device* %43, %struct.net_device* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %53

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %41
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %29

53:                                               ; preds = %48, %29
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %25, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @cxgb4_update_dev_clip(%struct.net_device*, %struct.net_device*) #1

declare dso_local %struct.net_device* @netdev_master_upper_dev_get_rcu(%struct.net_device*) #1

declare dso_local %struct.net_device* @__vlan_find_dev_deep_rcu(%struct.net_device*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
