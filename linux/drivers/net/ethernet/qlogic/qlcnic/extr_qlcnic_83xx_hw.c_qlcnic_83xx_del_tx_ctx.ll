; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_del_tx_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_del_tx_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_host_tx_ring = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@QLCNIC_CMD_DESTROY_TX_CTX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Failed to destroy tx ctx in firmware\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_83xx_del_tx_ctx(%struct.qlcnic_adapter* %0, %struct.qlcnic_host_tx_ring* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %5 = alloca %struct.qlcnic_cmd_args, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.qlcnic_host_tx_ring* %1, %struct.qlcnic_host_tx_ring** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = load i32, i32* @QLCNIC_CMD_DESTROY_TX_CTX, align 4
  %9 = call i64 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %5, %struct.qlcnic_adapter* %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %55

12:                                               ; preds = %2
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = call i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %18 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16, %12
  %21 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, 1610612736
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %20, %16
  %28 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %29 = call i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %33 = call i32 @qlcnic_pf_set_interface_id_del_tx_ctx(%struct.qlcnic_adapter* %32, i32* %6)
  br label %34

34:                                               ; preds = %31, %27
  %35 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %4, align 8
  %36 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %37, %38
  %40 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %5, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %39, i32* %43, align 4
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %45 = call i64 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %44, %struct.qlcnic_cmd_args* %5)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %47, %34
  %54 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %5)
  br label %55

55:                                               ; preds = %53, %11
  ret void
}

declare dso_local i64 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_pf_set_interface_id_del_tx_ctx(%struct.qlcnic_adapter*, i32*) #1

declare dso_local i64 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
