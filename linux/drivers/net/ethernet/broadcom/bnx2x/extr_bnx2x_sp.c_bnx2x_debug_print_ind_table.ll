; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_debug_print_ind_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_debug_print_ind_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_config_rss_params = type { i32* }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Setting indirection table to:\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"0x0000: \00", align 1
@T_ETH_INDIRECTION_TABLE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"0x%02x \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"0x%04x: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_config_rss_params*)* @bnx2x_debug_print_ind_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_debug_print_ind_table(%struct.bnx2x* %0, %struct.bnx2x_config_rss_params* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_config_rss_params*, align 8
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_config_rss_params* %1, %struct.bnx2x_config_rss_params** %4, align 8
  %6 = load i32, i32* @BNX2X_MSG_SP, align 4
  %7 = call i32 (i32, i8*, ...) @DP(i32 %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @BNX2X_MSG_SP, align 4
  %9 = call i32 (i32, i8*, ...) @DP(i32 %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %41, %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @T_ETH_INDIRECTION_TABLE_SIZE, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %10
  %15 = load i32, i32* @BNX2X_MSG_SP, align 4
  %16 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %4, align 8
  %17 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i32, i8*, ...) @DP_CONT(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  %26 = load i32, i32* @T_ETH_INDIRECTION_TABLE_SIZE, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %14
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  %31 = and i32 %30, 3
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* @BNX2X_MSG_SP, align 4
  %35 = call i32 (i32, i8*, ...) @DP_CONT(i32 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %36 = load i32, i32* @BNX2X_MSG_SP, align 4
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i32 (i32, i8*, ...) @DP(i32 %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %33, %28, %14
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %10

44:                                               ; preds = %10
  %45 = load i32, i32* @BNX2X_MSG_SP, align 4
  %46 = call i32 (i32, i8*, ...) @DP_CONT(i32 %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @DP_CONT(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
