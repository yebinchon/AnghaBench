; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_get_shmem_proto_mfw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_get_shmem_proto_mfw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@DRV_MSG_CODE_GET_PF_RDMA_PROTOCOL = common dso_local global i32 0, align 4
@FW_MSG_CODE_OK = common dso_local global i64 0, align 8
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"MFW lacks support for command; Returns %08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_PCI_ETH = common dso_local global i32 0, align 4
@QED_PCI_ETH_ROCE = common dso_local global i32 0, align 4
@QED_PCI_ETH_IWARP = common dso_local global i32 0, align 4
@QED_PCI_ETH_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"MFW answers GET_PF_RDMA_PROTOCOL but param is %08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"According to capabilities, L2 personality is %08x [resp %08x param %08x]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*)* @qed_mcp_get_shmem_proto_mfw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_mcp_get_shmem_proto_mfw(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %12 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %13 = load i32, i32* @DRV_MSG_CODE_GET_PF_RDMA_PROTOCOL, align 4
  %14 = call i32 @qed_mcp_cmd(%struct.qed_hwfn* %11, %struct.qed_ptt* %12, i32 %13, i32 0, i64* %8, i64* %9)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %59

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @FW_MSG_CODE_OK, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %25 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 (%struct.qed_hwfn*, i32, i8*, i64, ...) @DP_VERBOSE(%struct.qed_hwfn* %24, i32 %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %59

30:                                               ; preds = %19
  %31 = load i64, i64* %9, align 8
  switch i64 %31, label %44 [
    i64 129, label %32
    i64 128, label %35
    i64 130, label %38
    i64 131, label %41
  ]

32:                                               ; preds = %30
  %33 = load i32, i32* @QED_PCI_ETH, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  br label %50

35:                                               ; preds = %30
  %36 = load i32, i32* @QED_PCI_ETH_ROCE, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  br label %50

38:                                               ; preds = %30
  %39 = load i32, i32* @QED_PCI_ETH_IWARP, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  br label %50

41:                                               ; preds = %30
  %42 = load i32, i32* @QED_PCI_ETH_RDMA, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %50

44:                                               ; preds = %30
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @DP_NOTICE(%struct.qed_hwfn* %45, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %59

50:                                               ; preds = %41, %38, %35, %32
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %52 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = zext i32 %54 to i64
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 (%struct.qed_hwfn*, i32, i8*, i64, ...) @DP_VERBOSE(%struct.qed_hwfn* %51, i32 %52, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %55, i64 %56, i64 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %50, %44, %23, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @qed_mcp_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i64*, i64*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64, ...) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
