; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bnx2x = type { i32, i64, i64, i32, i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@DRV_PULSE_SEQ_MASK = common dso_local global i32 0, align 4
@func_mb = common dso_local global %struct.TYPE_2__* null, align 8
@MCP_PULSE_SEQ_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"MFW seems hanged: drv_pulse (0x%x) != mcp_pulse (0x%x)\0A\00", align 1
@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@STATS_EVENT_UPDATE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@bp = common dso_local global %struct.bnx2x* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @bnx2x_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %8 = ptrtoint %struct.bnx2x* %7 to i32
  %9 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %10 = load i32, i32* @timer, align 4
  %11 = call %struct.bnx2x* @from_timer(i32 %8, %struct.timer_list* %9, i32 %10)
  store %struct.bnx2x* %11, %struct.bnx2x** %3, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @netif_running(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %90

18:                                               ; preds = %1
  %19 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %20 = call i64 @IS_PF(%struct.bnx2x* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %18
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = call i32 @BP_NOMCP(%struct.bnx2x* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %64, label %26

26:                                               ; preds = %22
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = call i32 @BP_FW_MB_IDX(%struct.bnx2x* %27)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %30 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load i32, i32* @DRV_PULSE_SEQ_MASK, align 4
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %39 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %5, align 4
  %41 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %42 = call i32 @bnx2x_drv_pulse(%struct.bnx2x* %41)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @func_mb, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @SHMEM_RD(%struct.bnx2x* %43, i32 %49)
  %51 = load i32, i32* @MCP_PULSE_SEQ_MASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* @MCP_PULSE_SEQ_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp sgt i32 %57, 5
  br i1 %58, label %59, label %63

59:                                               ; preds = %26
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %26
  br label %64

64:                                               ; preds = %63, %22, %18
  %65 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %66 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %72 = load i32, i32* @STATS_EVENT_UPDATE, align 4
  %73 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %71, i32 %72)
  br label %74

74:                                               ; preds = %70, %64
  %75 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %76 = call i64 @IS_VF(%struct.bnx2x* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %80 = call i32 @bnx2x_timer_sriov(%struct.bnx2x* %79)
  br label %81

81:                                               ; preds = %78, %74
  %82 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %83 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %82, i32 0, i32 3
  %84 = load i64, i64* @jiffies, align 8
  %85 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %86 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = call i32 @mod_timer(i32* %83, i64 %88)
  br label %90

90:                                               ; preds = %81, %17
  ret void
}

declare dso_local %struct.bnx2x* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @netif_running(i32) #1

declare dso_local i64 @IS_PF(%struct.bnx2x*) #1

declare dso_local i32 @BP_NOMCP(%struct.bnx2x*) #1

declare dso_local i32 @BP_FW_MB_IDX(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_drv_pulse(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32) #1

declare dso_local i32 @bnx2x_stats_handle(%struct.bnx2x*, i32) #1

declare dso_local i64 @IS_VF(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_timer_sriov(%struct.bnx2x*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
