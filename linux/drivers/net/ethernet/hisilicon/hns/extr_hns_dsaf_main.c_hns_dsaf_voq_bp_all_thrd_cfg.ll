; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_voq_bp_all_thrd_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_voq_bp_all_thrd_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }

@DSAF_VOQ_NUM = common dso_local global i32 0, align 4
@DSAF_VOQ_BP_ALL_THRD_0_REG = common dso_local global i64 0, align 8
@DSAF_XGE_NUM = common dso_local global i32 0, align 4
@DSAF_VOQ_BP_ALL_DOWNTHRD_M = common dso_local global i32 0, align 4
@DSAF_VOQ_BP_ALL_DOWNTHRD_S = common dso_local global i32 0, align 4
@DSAF_VOQ_BP_ALL_UPTHRD_M = common dso_local global i32 0, align 4
@DSAF_VOQ_BP_ALL_UPTHRD_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*)* @hns_dsaf_voq_bp_all_thrd_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_voq_bp_all_thrd_cfg(%struct.dsaf_device* %0) #0 {
  %2 = alloca %struct.dsaf_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %47, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @DSAF_VOQ_NUM, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %50

9:                                                ; preds = %5
  %10 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %11 = load i64, i64* @DSAF_VOQ_BP_ALL_THRD_0_REG, align 8
  %12 = load i32, i32* %4, align 4
  %13 = mul nsw i32 64, %12
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %11, %14
  %16 = call i32 @dsaf_read_dev(%struct.dsaf_device* %10, i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DSAF_XGE_NUM, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %9
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @DSAF_VOQ_BP_ALL_DOWNTHRD_M, align 4
  %23 = load i32, i32* @DSAF_VOQ_BP_ALL_DOWNTHRD_S, align 4
  %24 = call i32 @dsaf_set_field(i32 %21, i32 %22, i32 %23, i32 930)
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @DSAF_VOQ_BP_ALL_UPTHRD_M, align 4
  %27 = load i32, i32* @DSAF_VOQ_BP_ALL_UPTHRD_S, align 4
  %28 = call i32 @dsaf_set_field(i32 %25, i32 %26, i32 %27, i32 950)
  br label %38

29:                                               ; preds = %9
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @DSAF_VOQ_BP_ALL_DOWNTHRD_M, align 4
  %32 = load i32, i32* @DSAF_VOQ_BP_ALL_DOWNTHRD_S, align 4
  %33 = call i32 @dsaf_set_field(i32 %30, i32 %31, i32 %32, i32 220)
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @DSAF_VOQ_BP_ALL_UPTHRD_M, align 4
  %36 = load i32, i32* @DSAF_VOQ_BP_ALL_UPTHRD_S, align 4
  %37 = call i32 @dsaf_set_field(i32 %34, i32 %35, i32 %36, i32 230)
  br label %38

38:                                               ; preds = %29, %20
  %39 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %40 = load i64, i64* @DSAF_VOQ_BP_ALL_THRD_0_REG, align 8
  %41 = load i32, i32* %4, align 4
  %42 = mul nsw i32 64, %41
  %43 = sext i32 %42 to i64
  %44 = add nsw i64 %40, %43
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @dsaf_write_dev(%struct.dsaf_device* %39, i64 %44, i32 %45)
  br label %47

47:                                               ; preds = %38
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %5

50:                                               ; preds = %5
  ret void
}

declare dso_local i32 @dsaf_read_dev(%struct.dsaf_device*, i64) #1

declare dso_local i32 @dsaf_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @dsaf_write_dev(%struct.dsaf_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
