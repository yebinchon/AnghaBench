; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-trans.c_iwl_cmd_groups_verify_sorted.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-trans.c_iwl_cmd_groups_verify_sorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans_config = type { i32, %struct.iwl_hcmd_arr* }
%struct.iwl_hcmd_arr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_cmd_groups_verify_sorted(%struct.iwl_trans_config* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans_config*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_hcmd_arr*, align 8
  store %struct.iwl_trans_config* %0, %struct.iwl_trans_config** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %58, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %3, align 8
  %10 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %61

13:                                               ; preds = %7
  %14 = load %struct.iwl_trans_config*, %struct.iwl_trans_config** %3, align 8
  %15 = getelementptr inbounds %struct.iwl_trans_config, %struct.iwl_trans_config* %14, i32 0, i32 1
  %16 = load %struct.iwl_hcmd_arr*, %struct.iwl_hcmd_arr** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.iwl_hcmd_arr, %struct.iwl_hcmd_arr* %16, i64 %18
  store %struct.iwl_hcmd_arr* %19, %struct.iwl_hcmd_arr** %6, align 8
  %20 = load %struct.iwl_hcmd_arr*, %struct.iwl_hcmd_arr** %6, align 8
  %21 = getelementptr inbounds %struct.iwl_hcmd_arr, %struct.iwl_hcmd_arr* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %13
  br label %58

25:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %54, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.iwl_hcmd_arr*, %struct.iwl_hcmd_arr** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_hcmd_arr, %struct.iwl_hcmd_arr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = icmp slt i32 %27, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %26
  %34 = load %struct.iwl_hcmd_arr*, %struct.iwl_hcmd_arr** %6, align 8
  %35 = getelementptr inbounds %struct.iwl_hcmd_arr, %struct.iwl_hcmd_arr* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.iwl_hcmd_arr*, %struct.iwl_hcmd_arr** %6, align 8
  %43 = getelementptr inbounds %struct.iwl_hcmd_arr, %struct.iwl_hcmd_arr* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %41, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %33
  store i32 -1, i32* %2, align 4
  br label %62

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %26

57:                                               ; preds = %26
  br label %58

58:                                               ; preds = %57, %24
  %59 = load i32, i32* %4, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %4, align 4
  br label %7

61:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %52
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
