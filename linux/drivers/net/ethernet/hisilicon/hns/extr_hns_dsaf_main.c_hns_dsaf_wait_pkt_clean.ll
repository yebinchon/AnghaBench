; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_wait_pkt_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_wait_pkt_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }

@DSAF_SERVICE_NW_NUM = common dso_local global i32 0, align 4
@HNS_MAX_WAIT_CNT = common dso_local global i32 0, align 4
@DSAF_VOQ_IN_PKT_NUM_0_REG = common dso_local global i64 0, align 8
@DSAF_XGE_NUM = common dso_local global i32 0, align 4
@DSAF_VOQ_OUT_PKT_NUM_0_REG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"hns dsaf clean wait timeout(%u - %u).\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_dsaf_wait_pkt_clean(%struct.dsaf_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsaf_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @DSAF_SERVICE_NW_NUM, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %58

13:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %42, %13
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @HNS_MAX_WAIT_CNT, align 4
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %14
  %20 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %21 = load i64, i64* @DSAF_VOQ_IN_PKT_NUM_0_REG, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @DSAF_XGE_NUM, align 4
  %24 = add nsw i32 %22, %23
  %25 = mul nsw i32 %24, 64
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %21, %26
  %28 = call i64 @dsaf_read_dev(%struct.dsaf_device* %20, i64 %27)
  store i64 %28, i64* %6, align 8
  %29 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %30 = load i64, i64* @DSAF_VOQ_OUT_PKT_NUM_0_REG, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @DSAF_XGE_NUM, align 4
  %33 = add nsw i32 %31, %32
  %34 = mul nsw i32 %33, 64
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %30, %35
  %37 = call i64 @dsaf_read_dev(%struct.dsaf_device* %29, i64 %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %19
  br label %44

42:                                               ; preds = %19
  %43 = call i32 @usleep_range(i32 100, i32 200)
  br label %14

44:                                               ; preds = %41, %14
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @HNS_MAX_WAIT_CNT, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %50 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %53)
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %58

57:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %48, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @dsaf_read_dev(%struct.dsaf_device*, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
