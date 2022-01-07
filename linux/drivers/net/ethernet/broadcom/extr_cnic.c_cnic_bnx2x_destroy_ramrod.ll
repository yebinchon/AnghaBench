; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_destroy_ramrod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_destroy_ramrod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_context* }
%struct.cnic_context = type { i32, i64, i32, i32 }
%struct.bnx2x = type { i32 }
%union.l5cm_specific_data = type { i32 }

@RAMROD_CMD_ID_COMMON_CFC_DEL = common dso_local global i32 0, align 4
@NONE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@CNIC_RAMROD_TMO = common dso_local global i32 0, align 4
@CTX_FL_CID_ERROR = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, i64)* @cnic_bnx2x_destroy_ramrod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_destroy_ramrod(%struct.cnic_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cnic_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cnic_local*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca %struct.cnic_context*, align 8
  %9 = alloca %union.l5cm_specific_data, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %13 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %12, i32 0, i32 1
  %14 = load %struct.cnic_local*, %struct.cnic_local** %13, align 8
  store %struct.cnic_local* %14, %struct.cnic_local** %6, align 8
  %15 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %16 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.bnx2x* @netdev_priv(i32 %17)
  store %struct.bnx2x* %18, %struct.bnx2x** %7, align 8
  %19 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  %20 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %19, i32 0, i32 0
  %21 = load %struct.cnic_context*, %struct.cnic_context** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %21, i64 %22
  store %struct.cnic_context* %23, %struct.cnic_context** %8, align 8
  %24 = load %struct.cnic_context*, %struct.cnic_context** %8, align 8
  %25 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %24, i32 0, i32 2
  %26 = call i32 @init_waitqueue_head(i32* %25)
  %27 = load %struct.cnic_context*, %struct.cnic_context** %8, align 8
  %28 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = call i32 @memset(%union.l5cm_specific_data* %9, i32 0, i32 4)
  %30 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %31 = load %struct.cnic_context*, %struct.cnic_context** %8, align 8
  %32 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @BNX2X_HW_CID(%struct.bnx2x* %30, i32 %33)
  store i64 %34, i64* %11, align 8
  %35 = load %struct.cnic_dev*, %struct.cnic_dev** %4, align 8
  %36 = load i32, i32* @RAMROD_CMD_ID_COMMON_CFC_DEL, align 4
  %37 = load i64, i64* %11, align 8
  %38 = load i32, i32* @NONE_CONNECTION_TYPE, align 4
  %39 = call i32 @cnic_submit_kwqe_16(%struct.cnic_dev* %35, i32 %36, i64 %37, i32 %38, %union.l5cm_specific_data* %9)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %2
  %43 = load %struct.cnic_context*, %struct.cnic_context** %8, align 8
  %44 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.cnic_context*, %struct.cnic_context** %8, align 8
  %47 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @CNIC_RAMROD_TMO, align 4
  %50 = call i32 @wait_event_timeout(i32 %45, i64 %48, i32 %49)
  %51 = load i32, i32* @CTX_FL_CID_ERROR, align 4
  %52 = load %struct.cnic_context*, %struct.cnic_context** %8, align 8
  %53 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %52, i32 0, i32 0
  %54 = call i32 @test_bit(i32 %51, i32* %53)
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %42
  br label %61

61:                                               ; preds = %60, %2
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %57
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @memset(%union.l5cm_specific_data*, i32, i32) #1

declare dso_local i64 @BNX2X_HW_CID(%struct.bnx2x*, i32) #1

declare dso_local i32 @cnic_submit_kwqe_16(%struct.cnic_dev*, i32, i64, i32, %union.l5cm_specific_data*) #1

declare dso_local i32 @wait_event_timeout(i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
