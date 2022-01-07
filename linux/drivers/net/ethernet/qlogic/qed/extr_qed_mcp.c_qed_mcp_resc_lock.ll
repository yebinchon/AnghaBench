; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_resc_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_resc_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_resc_lock_params = type { i64, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_resc_lock(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_resc_lock_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca %struct.qed_resc_lock_params*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store %struct.qed_resc_lock_params* %2, %struct.qed_resc_lock_params** %7, align 8
  store i64 0, i64* %8, align 8
  br label %11

11:                                               ; preds = %48, %3
  %12 = load i64, i64* %8, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %11
  %15 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %16 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %14
  %20 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %21 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @DIV_ROUND_UP(i32 %22, i32 1000)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @msleep(i32 %24)
  br label %31

26:                                               ; preds = %14
  %27 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %28 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @udelay(i32 %29)
  br label %31

31:                                               ; preds = %26, %19
  br label %32

32:                                               ; preds = %31, %11
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %34 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %35 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %36 = call i32 @__qed_mcp_resc_lock(%struct.qed_hwfn* %33, %struct.qed_ptt* %34, %struct.qed_resc_lock_params* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %56

41:                                               ; preds = %32
  %42 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %43 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %55

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %8, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %8, align 8
  %51 = load %struct.qed_resc_lock_params*, %struct.qed_resc_lock_params** %7, align 8
  %52 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %11, label %55

55:                                               ; preds = %48, %46
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %39
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @__qed_mcp_resc_lock(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_resc_lock_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
