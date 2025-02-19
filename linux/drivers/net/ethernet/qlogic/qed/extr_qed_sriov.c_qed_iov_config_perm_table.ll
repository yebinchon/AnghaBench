; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_config_perm_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_config_perm_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_vf_info = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PSWHST_REG_ZONE_PERMISSION_TABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_vf_info*, i64)* @qed_iov_config_perm_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_config_perm_table(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_vf_info* %2, i64 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca %struct.qed_vf_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store %struct.qed_vf_info* %2, %struct.qed_vf_info** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %50, %4
  %14 = load i32, i32* %12, align 4
  %15 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %16 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %53

19:                                               ; preds = %13
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %21 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %22 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %12, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @qed_fw_l2_queue(%struct.qed_hwfn* %20, i32 %28, i32* %11)
  %30 = load i32, i32* @PSWHST_REG_ZONE_PERMISSION_TABLE, align 4
  %31 = load i32, i32* %11, align 4
  %32 = mul nsw i32 %31, 4
  %33 = add nsw i32 %30, %32
  store i32 %33, i32* %9, align 4
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %19
  %37 = load %struct.qed_vf_info*, %struct.qed_vf_info** %7, align 8
  %38 = getelementptr inbounds %struct.qed_vf_info, %struct.qed_vf_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @BIT(i32 8)
  %41 = or i32 %39, %40
  br label %43

42:                                               ; preds = %19
  br label %43

43:                                               ; preds = %42, %36
  %44 = phi i32 [ %41, %36 ], [ 0, %42 ]
  store i32 %44, i32* %10, align 4
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %46 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @qed_wr(%struct.qed_hwfn* %45, %struct.qed_ptt* %46, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %43
  %51 = load i32, i32* %12, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %13

53:                                               ; preds = %13
  ret void
}

declare dso_local i32 @qed_fw_l2_queue(%struct.qed_hwfn*, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
