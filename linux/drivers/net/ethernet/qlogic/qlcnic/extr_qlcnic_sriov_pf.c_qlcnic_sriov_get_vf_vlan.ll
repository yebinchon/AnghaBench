; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_get_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_get_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_vport = type { i32, i32 }

@MAX_VLAN_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid VLAN mode = %d for VF %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_vport*, i32)* @qlcnic_sriov_get_vf_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_get_vf_vlan(%struct.qlcnic_adapter* %0, %struct.qlcnic_vport* %1, i32 %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_vport*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_vport* %1, %struct.qlcnic_vport** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %5, align 8
  %9 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %18 [
    i32 128, label %11
    i32 130, label %15
    i32 129, label %17
  ]

11:                                               ; preds = %3
  %12 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %5, align 8
  %13 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  br label %27

15:                                               ; preds = %3
  %16 = load i32, i32* @MAX_VLAN_ID, align 4
  store i32 %16, i32* %7, align 4
  br label %27

17:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %27

18:                                               ; preds = %3
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %5, align 8
  %23 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @netdev_info(i32 %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %18, %17, %15, %11
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @netdev_info(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
