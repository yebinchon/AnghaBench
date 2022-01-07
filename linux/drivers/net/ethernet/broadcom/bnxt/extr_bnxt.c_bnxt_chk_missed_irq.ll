; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_chk_missed_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_chk_missed_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.bnxt_napi** }
%struct.bnxt_napi = type { %struct.bnxt_cp_ring_info }
%struct.bnxt_cp_ring_info = type { i64, i64, i32, %struct.TYPE_2__, i64, %struct.bnxt_cp_ring_info** }
%struct.TYPE_2__ = type { i32 }

@BNXT_FLAG_CHIP_P5 = common dso_local global i32 0, align 4
@DBG_RING_INFO_GET_REQ_RING_TYPE_L2_CMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*)* @bnxt_chk_missed_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_chk_missed_irq(%struct.bnxt* %0) #0 {
  %2 = alloca %struct.bnxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt_napi*, align 8
  %5 = alloca %struct.bnxt_cp_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnxt_cp_ring_info*, align 8
  %9 = alloca [2 x i32], align 4
  store %struct.bnxt* %0, %struct.bnxt** %2, align 8
  %10 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %11 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @BNXT_FLAG_CHIP_P5, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %98

17:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %95, %17
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %21 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %98

24:                                               ; preds = %18
  %25 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %26 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %25, i32 0, i32 2
  %27 = load %struct.bnxt_napi**, %struct.bnxt_napi*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bnxt_napi*, %struct.bnxt_napi** %27, i64 %29
  %31 = load %struct.bnxt_napi*, %struct.bnxt_napi** %30, align 8
  store %struct.bnxt_napi* %31, %struct.bnxt_napi** %4, align 8
  %32 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %33 = icmp ne %struct.bnxt_napi* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %95

35:                                               ; preds = %24
  %36 = load %struct.bnxt_napi*, %struct.bnxt_napi** %4, align 8
  %37 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %36, i32 0, i32 0
  store %struct.bnxt_cp_ring_info* %37, %struct.bnxt_cp_ring_info** %5, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %91, %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %94

41:                                               ; preds = %38
  %42 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %43 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %42, i32 0, i32 5
  %44 = load %struct.bnxt_cp_ring_info**, %struct.bnxt_cp_ring_info*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %44, i64 %46
  %48 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %47, align 8
  store %struct.bnxt_cp_ring_info* %48, %struct.bnxt_cp_ring_info** %8, align 8
  %49 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %50 = icmp ne %struct.bnxt_cp_ring_info* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %41
  %52 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %53 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %51
  %57 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %58 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %59 = call i32 @bnxt_has_work(%struct.bnxt* %57, %struct.bnxt_cp_ring_info* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %56, %51, %41
  br label %91

62:                                               ; preds = %56
  %63 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %64 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %67 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %72 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %75 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %74, i32 0, i32 1
  store i64 %73, i64* %75, align 8
  br label %91

76:                                               ; preds = %62
  %77 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %8, align 8
  %78 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %6, align 4
  %81 = load %struct.bnxt*, %struct.bnxt** %2, align 8
  %82 = load i32, i32* @DBG_RING_INFO_GET_REQ_RING_TYPE_L2_CMPL, align 4
  %83 = load i32, i32* %6, align 4
  %84 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %86 = call i32 @bnxt_dbg_hwrm_ring_info_get(%struct.bnxt* %81, i32 %82, i32 %83, i32* %84, i32* %85)
  %87 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %5, align 8
  %88 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %76, %70, %61
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %38

94:                                               ; preds = %38
  br label %95

95:                                               ; preds = %94, %34
  %96 = load i32, i32* %3, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %3, align 4
  br label %18

98:                                               ; preds = %16, %18
  ret void
}

declare dso_local i32 @bnxt_has_work(%struct.bnxt*, %struct.bnxt_cp_ring_info*) #1

declare dso_local i32 @bnxt_dbg_hwrm_ring_info_get(%struct.bnxt*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
