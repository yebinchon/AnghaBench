; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_add_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_add_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_vsi_add_vlan(%struct.i40e_vsi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %8 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %38

19:                                               ; preds = %15
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %21 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %20, i32 0, i32 1
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @i40e_add_vlan_all_mac(%struct.i40e_vsi* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %27 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock_bh(i32* %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %19
  %34 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %35 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @i40e_service_event_schedule(i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %31, %18, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @i40e_add_vlan_all_mac(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @i40e_service_event_schedule(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
