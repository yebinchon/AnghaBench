; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_get_config_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_get_config_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_QEDE = common dso_local global i32 0, align 4
@CONFIG_QEDE_BITMAP_IDX = common dso_local global i32 0, align 4
@CONFIG_QED_SRIOV = common dso_local global i32 0, align 4
@CONFIG_QED_SRIOV_BITMAP_IDX = common dso_local global i32 0, align 4
@CONFIG_QED_RDMA = common dso_local global i32 0, align 4
@CONFIG_QEDR_BITMAP_IDX = common dso_local global i32 0, align 4
@CONFIG_QED_FCOE = common dso_local global i32 0, align 4
@CONFIG_QEDF_BITMAP_IDX = common dso_local global i32 0, align 4
@CONFIG_QED_ISCSI = common dso_local global i32 0, align 4
@CONFIG_QEDI_BITMAP_IDX = common dso_local global i32 0, align 4
@CONFIG_QED_LL2 = common dso_local global i32 0, align 4
@CONFIG_QED_LL2_BITMAP_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @qed_get_config_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_get_config_bitmap() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @CONFIG_QEDE, align 4
  %3 = call i64 @IS_ENABLED(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @CONFIG_QEDE_BITMAP_IDX, align 4
  %7 = load i32, i32* %1, align 4
  %8 = or i32 %7, %6
  store i32 %8, i32* %1, align 4
  br label %9

9:                                                ; preds = %5, %0
  %10 = load i32, i32* @CONFIG_QED_SRIOV, align 4
  %11 = call i64 @IS_ENABLED(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* @CONFIG_QED_SRIOV_BITMAP_IDX, align 4
  %15 = load i32, i32* %1, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* @CONFIG_QED_RDMA, align 4
  %19 = call i64 @IS_ENABLED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @CONFIG_QEDR_BITMAP_IDX, align 4
  %23 = load i32, i32* %1, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %1, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* @CONFIG_QED_FCOE, align 4
  %27 = call i64 @IS_ENABLED(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @CONFIG_QEDF_BITMAP_IDX, align 4
  %31 = load i32, i32* %1, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %1, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* @CONFIG_QED_ISCSI, align 4
  %35 = call i64 @IS_ENABLED(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* @CONFIG_QEDI_BITMAP_IDX, align 4
  %39 = load i32, i32* %1, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @CONFIG_QED_LL2, align 4
  %43 = call i64 @IS_ENABLED(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i32, i32* @CONFIG_QED_LL2_BITMAP_IDX, align 4
  %47 = load i32, i32* %1, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i64 @IS_ENABLED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
