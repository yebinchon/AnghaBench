; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_vnic_qcaps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_vnic_qcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32, i32, %struct.hwrm_vnic_qcaps_output* }
%struct.hwrm_vnic_qcaps_output = type { i32, i32 }
%struct.hwrm_vnic_qcaps_input = type { i32 }

@BNXT_FLAG_NEW_RSS_CAP = common dso_local global i32 0, align 4
@BNXT_FLAG_ROCE_MIRROR_CAP = common dso_local global i32 0, align 4
@HWRM_VNIC_QCAPS = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@VNIC_QCAPS_RESP_FLAGS_RSS_DFLT_CR_CAP = common dso_local global i32 0, align 4
@VNIC_QCAPS_RESP_FLAGS_ROCE_MIRRORING_CAPABLE_VNIC_CAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_hwrm_vnic_qcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_vnic_qcaps(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca %struct.hwrm_vnic_qcaps_output*, align 8
  %5 = alloca %struct.hwrm_vnic_qcaps_input, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %8 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %9 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %8, i32 0, i32 5
  %10 = load %struct.hwrm_vnic_qcaps_output*, %struct.hwrm_vnic_qcaps_output** %9, align 8
  store %struct.hwrm_vnic_qcaps_output* %10, %struct.hwrm_vnic_qcaps_output** %4, align 8
  %11 = bitcast %struct.hwrm_vnic_qcaps_input* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %13 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %12, i32 0, i32 0
  store i32 4, i32* %13, align 8
  %14 = load i32, i32* @BNXT_FLAG_NEW_RSS_CAP, align 4
  %15 = load i32, i32* @BNXT_FLAG_ROCE_MIRROR_CAP, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %19 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %23 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 67072
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %92

27:                                               ; preds = %1
  %28 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %29 = load i32, i32* @HWRM_VNIC_QCAPS, align 4
  %30 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %28, %struct.hwrm_vnic_qcaps_input* %5, i32 %29, i32 -1, i32 -1)
  %31 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %32 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %31, i32 0, i32 3
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %35 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %36 = call i32 @_hwrm_send_message(%struct.bnxt* %34, %struct.hwrm_vnic_qcaps_input* %5, i32 4, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %87, label %39

39:                                               ; preds = %27
  %40 = load %struct.hwrm_vnic_qcaps_output*, %struct.hwrm_vnic_qcaps_output** %4, align 8
  %41 = getelementptr inbounds %struct.hwrm_vnic_qcaps_output, %struct.hwrm_vnic_qcaps_output* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %45 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @VNIC_QCAPS_RESP_FLAGS_RSS_DFLT_CR_CAP, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %50
  %56 = load i32, i32* @BNXT_FLAG_NEW_RSS_CAP, align 4
  %57 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %58 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %55, %50, %39
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @VNIC_QCAPS_RESP_FLAGS_ROCE_MIRRORING_CAPABLE_VNIC_CAP, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load i32, i32* @BNXT_FLAG_ROCE_MIRROR_CAP, align 4
  %68 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %69 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load %struct.hwrm_vnic_qcaps_output*, %struct.hwrm_vnic_qcaps_output** %4, align 8
  %74 = getelementptr inbounds %struct.hwrm_vnic_qcaps_output, %struct.hwrm_vnic_qcaps_output* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  %77 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %78 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %77, i32 0, i32 4
  store i32 %76, i32* %78, align 8
  %79 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %80 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %72
  %84 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %85 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %84, i32 0, i32 0
  store i32 4, i32* %85, align 8
  br label %86

86:                                               ; preds = %83, %72
  br label %87

87:                                               ; preds = %86, %27
  %88 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %89 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %88, i32 0, i32 3
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load i32, i32* %6, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %87, %26
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_vnic_qcaps_input*, i32, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_vnic_qcaps_input*, i32, i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
