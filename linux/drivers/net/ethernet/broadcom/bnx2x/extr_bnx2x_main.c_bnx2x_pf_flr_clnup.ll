; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_pf_flr_clnup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_pf_flr_clnup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cleanup after FLR PF[%d]\0A\00", align 1
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Polling usage counters\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"PCIE Transactions still pending\0A\00", align 1
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_pf_flr_clnup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_pf_flr_clnup(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %5 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %6 = call i32 @bnx2x_flr_clnup_poll_count(%struct.bnx2x* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* @BNX2X_MSG_SP, align 4
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = call i32 @BP_ABS_FUNC(%struct.bnx2x* %8)
  %10 = call i32 (i32, i8*, ...) @DP(i32 %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ, align 4
  %13 = call i32 @REG_WR(%struct.bnx2x* %11, i32 %12, i32 1)
  %14 = load i32, i32* @BNX2X_MSG_SP, align 4
  %15 = call i32 (i32, i8*, ...) @DP(i32 %14, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @bnx2x_poll_hw_usage_counters(%struct.bnx2x* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %52

23:                                               ; preds = %1
  %24 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %25 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %26 = call i64 @BP_FUNC(%struct.bnx2x* %25)
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @bnx2x_send_final_clnup(%struct.bnx2x* %24, i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %23
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %52

34:                                               ; preds = %23
  %35 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @bnx2x_tx_hw_flushed(%struct.bnx2x* %35, i32 %36)
  %38 = call i32 @msleep(i32 100)
  %39 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %40 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @bnx2x_is_pcie_pending(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %34
  %47 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %48 = call i32 @bnx2x_hw_enable_status(%struct.bnx2x* %47)
  %49 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %50 = load i32, i32* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, align 4
  %51 = call i32 @REG_WR(%struct.bnx2x* %49, i32 %50, i32 1)
  store i32 0, i32* %2, align 4
  br label %52

52:                                               ; preds = %46, %31, %20
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @bnx2x_flr_clnup_poll_count(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @BP_ABS_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @bnx2x_poll_hw_usage_counters(%struct.bnx2x*, i32) #1

declare dso_local i64 @bnx2x_send_final_clnup(%struct.bnx2x*, i32, i32) #1

declare dso_local i64 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_tx_hw_flushed(%struct.bnx2x*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @bnx2x_is_pcie_pending(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @bnx2x_hw_enable_status(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
