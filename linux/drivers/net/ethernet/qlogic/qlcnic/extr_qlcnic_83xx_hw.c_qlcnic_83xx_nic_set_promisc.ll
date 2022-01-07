; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_nic_set_promisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_nic_set_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }

@QLCNIC_HOST_CTX_STATE_FREED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_CMD_CONFIGURE_MAC_RX_MODE = common dso_local global i32 0, align 4
@QLC_83XX_MBX_CMD_NO_WAIT = common dso_local global i32 0, align 4
@VPORT_MISS_MODE_ACCEPT_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_nic_set_promisc(%struct.qlcnic_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_cmd_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.qlcnic_cmd_args* null, %struct.qlcnic_cmd_args** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @QLCNIC_HOST_CTX_STATE_FREED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %73

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_ATOMIC, align 4
  %21 = call %struct.qlcnic_cmd_args* @kzalloc(i32 16, i32 %20)
  store %struct.qlcnic_cmd_args* %21, %struct.qlcnic_cmd_args** %6, align 8
  %22 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %6, align 8
  %23 = icmp ne %struct.qlcnic_cmd_args* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %73

27:                                               ; preds = %19
  %28 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %6, align 8
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %30 = load i32, i32* @QLCNIC_CMD_CONFIGURE_MAC_RX_MODE, align 4
  %31 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %28, %struct.qlcnic_adapter* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %69

35:                                               ; preds = %27
  %36 = load i32, i32* @QLC_83XX_MBX_CMD_NO_WAIT, align 4
  %37 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %6, align 8
  %38 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %40 = call i32 @qlcnic_83xx_set_interface_id_promisc(%struct.qlcnic_adapter* %39, i32* %7)
  %41 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %42 = call i64 @qlcnic_84xx_check(%struct.qlcnic_adapter* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %35
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %46 = call i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @VPORT_MISS_MODE_ACCEPT_ALL, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %48, %44, %35
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %6, align 8
  %55 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %53, i32* %58, align 4
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %60 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %6, align 8
  %61 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %59, %struct.qlcnic_cmd_args* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %50
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %73

66:                                               ; preds = %50
  %67 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %6, align 8
  %68 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %67)
  br label %69

69:                                               ; preds = %66, %34
  %70 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %6, align 8
  %71 = call i32 @kfree(%struct.qlcnic_cmd_args* %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %64, %24, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.qlcnic_cmd_args* @kzalloc(i32, i32) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_83xx_set_interface_id_promisc(%struct.qlcnic_adapter*, i32*) #1

declare dso_local i64 @qlcnic_84xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

declare dso_local i32 @kfree(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
