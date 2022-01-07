; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_set_rxq_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_set_rxq_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_queue_cid = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ustorm_eth_queue_zone = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Invalid coalesce value - %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BAR0_MAP_REG_USDM_RAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_set_rxq_coalesce(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2, %struct.qed_queue_cid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_queue_cid*, align 8
  %10 = alloca %struct.ustorm_eth_queue_zone, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.qed_queue_cid* %3, %struct.qed_queue_cid** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp sle i32 %15, 127
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %34

18:                                               ; preds = %4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %19, 255
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 1, i32* %12, align 4
  br label %33

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %23, 511
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 2, i32* %12, align 4
  br label %32

26:                                               ; preds = %22
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @DP_ERR(%struct.qed_hwfn* %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %67

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %21
  br label %34

34:                                               ; preds = %33, %17
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %12, align 4
  %37 = ashr i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %39 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %42 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @qed_int_set_timer_res(%struct.qed_hwfn* %38, %struct.qed_ptt* %39, i32 %40, i32 %43, i32 0)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  br label %65

48:                                               ; preds = %34
  %49 = load i64, i64* @BAR0_MAP_REG_USDM_RAM, align 8
  %50 = load %struct.qed_queue_cid*, %struct.qed_queue_cid** %9, align 8
  %51 = getelementptr inbounds %struct.qed_queue_cid, %struct.qed_queue_cid* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @USTORM_ETH_QUEUE_ZONE_OFFSET(i32 %53)
  %55 = add nsw i64 %49, %54
  store i64 %55, i64* %13, align 8
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %57 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @qed_set_coalesce(%struct.qed_hwfn* %56, %struct.qed_ptt* %57, i64 %58, %struct.ustorm_eth_queue_zone* %10, i32 4, i32 %59)
  store i32 %60, i32* %14, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %48
  br label %65

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64, %63, %47
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %65, %26
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_int_set_timer_res(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32) #1

declare dso_local i64 @USTORM_ETH_QUEUE_ZONE_OFFSET(i32) #1

declare dso_local i32 @qed_set_coalesce(%struct.qed_hwfn*, %struct.qed_ptt*, i64, %struct.ustorm_eth_queue_zone*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
