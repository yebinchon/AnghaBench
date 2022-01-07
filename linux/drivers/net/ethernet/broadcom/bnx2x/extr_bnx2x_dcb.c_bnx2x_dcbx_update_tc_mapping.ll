; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_update_tc_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_update_tc_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@BNX2X_MAX_PRIORITY = common dso_local global i64 0, align 8
@BNX2X_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"tx_mapping %d --> %d\0A\00", align 1
@BNX2X_SP_RTNL_SETUP_TC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_dcbx_update_tc_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_update_tc_mapping(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %49, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %6, %11
  br i1 %12, label %13, label %52

13:                                               ; preds = %5
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %45, %13
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* @BNX2X_MAX_PRIORITY, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %48

18:                                               ; preds = %14
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %3, align 8
  %29 = trunc i64 %28 to i32
  %30 = shl i32 1, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %18
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %36 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* %3, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  store i64 %34, i64* %39, align 8
  %40 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %41 = load i64, i64* %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @DP(i32 %40, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %42)
  br label %44

44:                                               ; preds = %33, %18
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %3, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %14

48:                                               ; preds = %14
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %4, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %4, align 8
  br label %5

52:                                               ; preds = %5
  %53 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %54 = load i32, i32* @BNX2X_SP_RTNL_SETUP_TC, align 4
  %55 = call i32 @bnx2x_schedule_sp_rtnl(%struct.bnx2x* %53, i32 %54, i32 0)
  ret void
}

declare dso_local i32 @DP(i32, i8*, i64, i64) #1

declare dso_local i32 @bnx2x_schedule_sp_rtnl(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
