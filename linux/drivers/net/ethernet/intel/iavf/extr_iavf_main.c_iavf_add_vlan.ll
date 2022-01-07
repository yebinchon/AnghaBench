; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_add_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_add_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_vlan_filter = type { i32, i32, i32 }
%struct.iavf_adapter = type { i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_ADD_VLAN_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iavf_vlan_filter* (%struct.iavf_adapter*, i32)* @iavf_add_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iavf_vlan_filter* @iavf_add_vlan(%struct.iavf_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.iavf_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iavf_vlan_filter*, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.iavf_vlan_filter* null, %struct.iavf_vlan_filter** %5, align 8
  %6 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.iavf_vlan_filter* @iavf_find_vlan(%struct.iavf_adapter* %9, i32 %10)
  store %struct.iavf_vlan_filter* %11, %struct.iavf_vlan_filter** %5, align 8
  %12 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %5, align 8
  %13 = icmp ne %struct.iavf_vlan_filter* %12, null
  br i1 %13, label %36, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.iavf_vlan_filter* @kzalloc(i32 12, i32 %15)
  store %struct.iavf_vlan_filter* %16, %struct.iavf_vlan_filter** %5, align 8
  %17 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %5, align 8
  %18 = icmp ne %struct.iavf_vlan_filter* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  br label %37

20:                                               ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %5, align 8
  %23 = getelementptr inbounds %struct.iavf_vlan_filter, %struct.iavf_vlan_filter* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %5, align 8
  %25 = getelementptr inbounds %struct.iavf_vlan_filter, %struct.iavf_vlan_filter* %24, i32 0, i32 1
  %26 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %26, i32 0, i32 2
  %28 = call i32 @list_add_tail(i32* %25, i32* %27)
  %29 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %5, align 8
  %30 = getelementptr inbounds %struct.iavf_vlan_filter, %struct.iavf_vlan_filter* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = load i32, i32* @IAVF_FLAG_AQ_ADD_VLAN_FILTER, align 4
  %32 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %20, %2
  br label %37

37:                                               ; preds = %36, %19
  %38 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_bh(i32* %39)
  %41 = load %struct.iavf_vlan_filter*, %struct.iavf_vlan_filter** %5, align 8
  ret %struct.iavf_vlan_filter* %41
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.iavf_vlan_filter* @iavf_find_vlan(%struct.iavf_adapter*, i32) #1

declare dso_local %struct.iavf_vlan_filter* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
