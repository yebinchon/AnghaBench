; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_force_rx_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_force_rx_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_cp_ring_info = type { i32** }
%struct.rx_cmp_ext = type { i32 }
%struct.rx_cmp = type { i32 }
%struct.rx_tpa_end_cmp_ext = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMP_TYPE_RX_L2_CMP = common dso_local global i64 0, align 8
@RX_CMPL_ERRORS_CRC_ERROR = common dso_local global i32 0, align 4
@CMP_TYPE_RX_L2_TPA_END_CMP = common dso_local global i64 0, align 8
@RX_TPA_END_CMP_ERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32*, i64*)* @bnxt_force_rx_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_force_rx_discard(%struct.bnxt* %0, %struct.bnxt_cp_ring_info* %1, i32* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_cp_ring_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rx_cmp_ext*, align 8
  %12 = alloca %struct.rx_cmp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.rx_tpa_end_cmp_ext*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store %struct.bnxt_cp_ring_info* %1, %struct.bnxt_cp_ring_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @RING_CMP(i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %21 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %13, align 4
  %24 = call i64 @CP_RING(i32 %23)
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i64 @CP_IDX(i32 %27)
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = bitcast i32* %29 to %struct.rx_cmp*
  store %struct.rx_cmp* %30, %struct.rx_cmp** %12, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @NEXT_RAW_CMP(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @RING_CMP(i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %36 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %35, i32 0, i32 0
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i64 @CP_RING(i32 %38)
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @CP_IDX(i32 %42)
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = bitcast i32* %44 to %struct.rx_cmp_ext*
  store %struct.rx_cmp_ext* %45, %struct.rx_cmp_ext** %11, align 8
  %46 = load %struct.rx_cmp_ext*, %struct.rx_cmp_ext** %11, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @RX_CMP_VALID(%struct.rx_cmp_ext* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %4
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %86

53:                                               ; preds = %4
  %54 = load %struct.rx_cmp*, %struct.rx_cmp** %12, align 8
  %55 = call i64 @RX_CMP_TYPE(%struct.rx_cmp* %54)
  store i64 %55, i64* %14, align 8
  %56 = load i64, i64* %14, align 8
  %57 = load i64, i64* @CMP_TYPE_RX_L2_CMP, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load i32, i32* @RX_CMPL_ERRORS_CRC_ERROR, align 4
  %61 = call i32 @cpu_to_le32(i32 %60)
  %62 = load %struct.rx_cmp_ext*, %struct.rx_cmp_ext** %11, align 8
  %63 = getelementptr inbounds %struct.rx_cmp_ext, %struct.rx_cmp_ext* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %80

66:                                               ; preds = %53
  %67 = load i64, i64* %14, align 8
  %68 = load i64, i64* @CMP_TYPE_RX_L2_TPA_END_CMP, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load %struct.rx_cmp_ext*, %struct.rx_cmp_ext** %11, align 8
  %72 = bitcast %struct.rx_cmp_ext* %71 to %struct.rx_tpa_end_cmp_ext*
  store %struct.rx_tpa_end_cmp_ext* %72, %struct.rx_tpa_end_cmp_ext** %15, align 8
  %73 = load i32, i32* @RX_TPA_END_CMP_ERRORS, align 4
  %74 = call i32 @cpu_to_le32(i32 %73)
  %75 = load %struct.rx_tpa_end_cmp_ext*, %struct.rx_tpa_end_cmp_ext** %15, align 8
  %76 = getelementptr inbounds %struct.rx_tpa_end_cmp_ext, %struct.rx_tpa_end_cmp_ext* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %70, %66
  br label %80

80:                                               ; preds = %79, %59
  %81 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %82 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %83 = load i32*, i32** %8, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = call i32 @bnxt_rx_pkt(%struct.bnxt* %81, %struct.bnxt_cp_ring_info* %82, i32* %83, i64* %84)
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %80, %50
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @RING_CMP(i32) #1

declare dso_local i64 @CP_RING(i32) #1

declare dso_local i64 @CP_IDX(i32) #1

declare dso_local i32 @NEXT_RAW_CMP(i32) #1

declare dso_local i32 @RX_CMP_VALID(%struct.rx_cmp_ext*, i32) #1

declare dso_local i64 @RX_CMP_TYPE(%struct.rx_cmp*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @bnxt_rx_pkt(%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
