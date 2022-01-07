; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_discard_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_discard_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_cp_ring_info = type { i32 }
%struct.rx_cmp = type { i32 }
%struct.rx_tpa_end_cmp = type { i32 }

@CMP_TYPE_RX_L2_CMP = common dso_local global i64 0, align 8
@RX_CMP_AGG_BUFS = common dso_local global i64 0, align 8
@RX_CMP_AGG_BUFS_SHIFT = common dso_local global i64 0, align 8
@CMP_TYPE_RX_L2_TPA_END_CMP = common dso_local global i64 0, align 8
@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_cp_ring_info*, i32*, i8*)* @bnxt_discard_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_discard_rx(%struct.bnxt* %0, %struct.bnxt_cp_ring_info* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca %struct.bnxt_cp_ring_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.rx_cmp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.rx_tpa_end_cmp*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store %struct.bnxt_cp_ring_info* %1, %struct.bnxt_cp_ring_info** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.rx_cmp*
  store %struct.rx_cmp* %16, %struct.rx_cmp** %10, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %11, align 4
  store i64 0, i64* %13, align 8
  %19 = load %struct.rx_cmp*, %struct.rx_cmp** %10, align 8
  %20 = call i64 @RX_CMP_TYPE(%struct.rx_cmp* %19)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* @CMP_TYPE_RX_L2_CMP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %4
  %25 = load %struct.rx_cmp*, %struct.rx_cmp** %10, align 8
  %26 = getelementptr inbounds %struct.rx_cmp, %struct.rx_cmp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @le32_to_cpu(i32 %27)
  %29 = load i64, i64* @RX_CMP_AGG_BUFS, align 8
  %30 = and i64 %28, %29
  %31 = load i64, i64* @RX_CMP_AGG_BUFS_SHIFT, align 8
  %32 = ashr i64 %30, %31
  store i64 %32, i64* %13, align 8
  br label %51

33:                                               ; preds = %4
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* @CMP_TYPE_RX_L2_TPA_END_CMP, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load i8*, i8** %9, align 8
  %39 = bitcast i8* %38 to %struct.rx_tpa_end_cmp*
  store %struct.rx_tpa_end_cmp* %39, %struct.rx_tpa_end_cmp** %14, align 8
  %40 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %41 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %67

47:                                               ; preds = %37
  %48 = load %struct.rx_tpa_end_cmp*, %struct.rx_tpa_end_cmp** %14, align 8
  %49 = call i64 @TPA_END_AGG_BUFS(%struct.rx_tpa_end_cmp* %48)
  store i64 %49, i64* %13, align 8
  br label %50

50:                                               ; preds = %47, %33
  br label %51

51:                                               ; preds = %50, %24
  %52 = load i64, i64* %13, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %51
  %55 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %56 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %7, align 8
  %57 = load i64, i64* %13, align 8
  %58 = call i32 @bnxt_agg_bufs_valid(%struct.bnxt* %55, %struct.bnxt_cp_ring_info* %56, i64 %57, i32* %11)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @EBUSY, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %67

63:                                               ; preds = %54
  br label %64

64:                                               ; preds = %63, %51
  %65 = load i32, i32* %11, align 4
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %60, %46
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @RX_CMP_TYPE(%struct.rx_cmp*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @TPA_END_AGG_BUFS(%struct.rx_tpa_end_cmp*) #1

declare dso_local i32 @bnxt_agg_bufs_valid(%struct.bnxt*, %struct.bnxt_cp_ring_info*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
