; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_vlan_mac_push_new_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_vlan_mac_push_new_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_ramrod_params = type { %struct.TYPE_4__, i32, %struct.bnx2x_vlan_mac_obj* }
%struct.TYPE_4__ = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { i32 }
%struct.bnx2x_exeq_elem = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@RAMROD_RESTORE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_vlan_mac_ramrod_params*)* @bnx2x_vlan_mac_push_new_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_vlan_mac_push_new_cmd(%struct.bnx2x* %0, %struct.bnx2x_vlan_mac_ramrod_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_vlan_mac_ramrod_params*, align 8
  %6 = alloca %struct.bnx2x_exeq_elem*, align 8
  %7 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_vlan_mac_ramrod_params* %1, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %9 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %10 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %9, i32 0, i32 2
  %11 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %10, align 8
  store %struct.bnx2x_vlan_mac_obj* %11, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %12 = load i32, i32* @RAMROD_RESTORE, align 4
  %13 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %14 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %13, i32 0, i32 1
  %15 = call i32 @test_bit(i32 %12, i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %17 = call %struct.bnx2x_exeq_elem* @bnx2x_exe_queue_alloc_elem(%struct.bnx2x* %16)
  store %struct.bnx2x_exeq_elem* %17, %struct.bnx2x_exeq_elem** %6, align 8
  %18 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %6, align 8
  %19 = icmp ne %struct.bnx2x_exeq_elem* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %2
  %24 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %25 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %31 [
    i32 128, label %28
  ]

28:                                               ; preds = %23
  %29 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %6, align 8
  %30 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %29, i32 0, i32 0
  store i32 2, i32* %30, align 4
  br label %34

31:                                               ; preds = %23
  %32 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %6, align 8
  %33 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %6, align 8
  %36 = getelementptr inbounds %struct.bnx2x_exeq_elem, %struct.bnx2x_exeq_elem* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load %struct.bnx2x_vlan_mac_ramrod_params*, %struct.bnx2x_vlan_mac_ramrod_params** %5, align 8
  %39 = getelementptr inbounds %struct.bnx2x_vlan_mac_ramrod_params, %struct.bnx2x_vlan_mac_ramrod_params* %38, i32 0, i32 0
  %40 = call i32 @memcpy(i32* %37, %struct.TYPE_4__* %39, i32 4)
  %41 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %42 = load %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj** %7, align 8
  %43 = getelementptr inbounds %struct.bnx2x_vlan_mac_obj, %struct.bnx2x_vlan_mac_obj* %42, i32 0, i32 0
  %44 = load %struct.bnx2x_exeq_elem*, %struct.bnx2x_exeq_elem** %6, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @bnx2x_exe_queue_add(%struct.bnx2x* %41, i32* %43, %struct.bnx2x_exeq_elem* %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %34, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.bnx2x_exeq_elem* @bnx2x_exe_queue_alloc_elem(%struct.bnx2x*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @bnx2x_exe_queue_add(%struct.bnx2x*, i32*, %struct.bnx2x_exeq_elem*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
