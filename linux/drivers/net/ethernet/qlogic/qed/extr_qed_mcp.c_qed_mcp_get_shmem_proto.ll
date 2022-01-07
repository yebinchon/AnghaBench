; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_get_shmem_proto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_get_shmem_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.public_func = type { i32 }
%struct.qed_ptt = type { i32 }

@FUNC_MF_CFG_PROTOCOL_MASK = common dso_local global i32 0, align 4
@CONFIG_QED_RDMA = common dso_local global i32 0, align 4
@QED_PCI_ETH = common dso_local global i32 0, align 4
@QED_PCI_ISCSI = common dso_local global i32 0, align 4
@QED_PCI_FCOE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"RoCE personality is not a valid value!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.public_func*, %struct.qed_ptt*, i32*)* @qed_mcp_get_shmem_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_mcp_get_shmem_proto(%struct.qed_hwfn* %0, %struct.public_func* %1, %struct.qed_ptt* %2, i32* %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.public_func*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.public_func* %1, %struct.public_func** %6, align 8
  store %struct.qed_ptt* %2, %struct.qed_ptt** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.public_func*, %struct.public_func** %6, align 8
  %11 = getelementptr inbounds %struct.public_func, %struct.public_func* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FUNC_MF_CFG_PROTOCOL_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %43 [
    i32 131, label %15
    i32 129, label %34
    i32 130, label %37
    i32 128, label %40
  ]

15:                                               ; preds = %4
  %16 = load i32, i32* @CONFIG_QED_RDMA, align 4
  %17 = call i32 @IS_ENABLED(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @QED_PCI_ETH, align 4
  %21 = load i32*, i32** %8, align 8
  store i32 %20, i32* %21, align 4
  br label %33

22:                                               ; preds = %15
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %24 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @qed_mcp_get_shmem_proto_mfw(%struct.qed_hwfn* %23, %struct.qed_ptt* %24, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @qed_mcp_get_shmem_proto_legacy(%struct.qed_hwfn* %29, i32* %30)
  br label %32

32:                                               ; preds = %28, %22
  br label %33

33:                                               ; preds = %32, %19
  br label %46

34:                                               ; preds = %4
  %35 = load i32, i32* @QED_PCI_ISCSI, align 4
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  br label %46

37:                                               ; preds = %4
  %38 = load i32, i32* @QED_PCI_FCOE, align 4
  %39 = load i32*, i32** %8, align 8
  store i32 %38, i32* %39, align 4
  br label %46

40:                                               ; preds = %4
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %42 = call i32 @DP_NOTICE(%struct.qed_hwfn* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %4, %40
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %43, %37, %34, %33
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @qed_mcp_get_shmem_proto_mfw(%struct.qed_hwfn*, %struct.qed_ptt*, i32*) #1

declare dso_local i32 @qed_mcp_get_shmem_proto_legacy(%struct.qed_hwfn*, i32*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
