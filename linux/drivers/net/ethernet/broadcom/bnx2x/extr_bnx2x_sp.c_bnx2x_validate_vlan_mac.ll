; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_validate_vlan_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_validate_vlan_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%union.bnx2x_qable_obj = type { i32 }
%struct.bnx2x_exeq_elem = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %union.bnx2x_qable_obj*, %struct.bnx2x_exeq_elem*)* @bnx2x_validate_vlan_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_validate_vlan_mac(%struct.bnx2x* %0, %union.bnx2x_qable_obj* %1, %struct.bnx2x_exeq_elem* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %union.bnx2x_qable_obj*, align 8
  %7 = alloca %struct.bnx2x_exeq_elem*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %union.bnx2x_qable_obj* %1, %union.bnx2x_qable_obj** %6, align 8
  store %struct.bnx2x_exeq_elem* %2, %struct.bnx2x_exeq_elem** %7, align 8
  %8 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %7, align 8
  %9 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %28 [
    i32 130, label %13
    i32 129, label %18
    i32 128, label %23
  ]

13:                                               ; preds = %3
  %14 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %15 = load %union.bnx2x_qable_obj*, %union.bnx2x_qable_obj** %6, align 8
  %16 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %7, align 8
  %17 = call i32 @bnx2x_validate_vlan_mac_add(%struct.bnx2x* %14, %union.bnx2x_qable_obj* %15, %struct.bnx2x_exeq_elem* %16)
  store i32 %17, i32* %4, align 4
  br label %31

18:                                               ; preds = %3
  %19 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %20 = load %union.bnx2x_qable_obj*, %union.bnx2x_qable_obj** %6, align 8
  %21 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %7, align 8
  %22 = call i32 @bnx2x_validate_vlan_mac_del(%struct.bnx2x* %19, %union.bnx2x_qable_obj* %20, %struct.bnx2x_exeq_elem* %21)
  store i32 %22, i32* %4, align 4
  br label %31

23:                                               ; preds = %3
  %24 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %25 = load %union.bnx2x_qable_obj*, %union.bnx2x_qable_obj** %6, align 8
  %26 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %7, align 8
  %27 = call i32 @bnx2x_validate_vlan_mac_move(%struct.bnx2x* %24, %union.bnx2x_qable_obj* %25, %struct.bnx2x_exeq_elem* %26)
  store i32 %27, i32* %4, align 4
  br label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %23, %18, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @bnx2x_validate_vlan_mac_add(%struct.bnx2x*, %union.bnx2x_qable_obj*, %struct.bnx2x_exeq_elem*) #1

declare dso_local i32 @bnx2x_validate_vlan_mac_del(%struct.bnx2x*, %union.bnx2x_qable_obj*, %struct.bnx2x_exeq_elem*) #1

declare dso_local i32 @bnx2x_validate_vlan_mac_move(%struct.bnx2x*, %union.bnx2x_qable_obj*, %struct.bnx2x_exeq_elem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
