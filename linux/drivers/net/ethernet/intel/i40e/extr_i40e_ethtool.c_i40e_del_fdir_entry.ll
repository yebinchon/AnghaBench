; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_del_fdir_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_del_fdir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }
%struct.ethtool_rxnfc = type { i32 }
%struct.ethtool_rx_flow_spec = type { i32 }

@__I40E_RESET_RECOVERY_PENDING = common dso_local global i32 0, align 4
@__I40E_RESET_INTR_RECEIVED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@__I40E_FD_FLUSH_REQUESTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, %struct.ethtool_rxnfc*)* @i40e_del_fdir_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_del_fdir_entry(%struct.i40e_vsi* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca %struct.ethtool_rx_flow_spec*, align 8
  %7 = alloca %struct.i40e_pf*, align 8
  %8 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %9 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to %struct.ethtool_rx_flow_spec*
  store %struct.ethtool_rx_flow_spec* %11, %struct.ethtool_rx_flow_spec** %6, align 8
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %13 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %12, i32 0, i32 0
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %13, align 8
  store %struct.i40e_pf* %14, %struct.i40e_pf** %7, align 8
  store i32 0, i32* %8, align 4
  %15 = load i32, i32* @__I40E_RESET_RECOVERY_PENDING, align 4
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %17 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @test_bit(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @__I40E_RESET_INTR_RECEIVED, align 4
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %24 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @test_bit(i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21, %2
  %29 = load i32, i32* @EBUSY, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %53

31:                                               ; preds = %21
  %32 = load i32, i32* @__I40E_FD_FLUSH_REQUESTED, align 4
  %33 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %34 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @test_bit(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %53

41:                                               ; preds = %31
  %42 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %43 = load %struct.ethtool_rx_flow_spec*, %struct.ethtool_rx_flow_spec** %6, align 8
  %44 = getelementptr inbounds %struct.ethtool_rx_flow_spec, %struct.ethtool_rx_flow_spec* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %47 = call i32 @i40e_update_ethtool_fdir_entry(%struct.i40e_vsi* %42, i32* null, i32 %45, %struct.ethtool_rxnfc* %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %49 = call i32 @i40e_prune_flex_pit_list(%struct.i40e_pf* %48)
  %50 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  %51 = call i32 @i40e_fdir_check_and_reenable(%struct.i40e_pf* %50)
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %41, %38, %28
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @i40e_update_ethtool_fdir_entry(%struct.i40e_vsi*, i32*, i32, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @i40e_prune_flex_pit_list(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_fdir_check_and_reenable(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
