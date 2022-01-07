; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_rx_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_rx_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NIG_REG_P1_LLH_PTP_HOST_BUF_TS_MSB = common dso_local global i32 0, align 4
@NIG_REG_P0_LLH_PTP_HOST_BUF_TS_MSB = common dso_local global i32 0, align 4
@NIG_REG_P1_LLH_PTP_HOST_BUF_TS_LSB = common dso_local global i32 0, align 4
@NIG_REG_P0_LLH_PTP_HOST_BUF_TS_LSB = common dso_local global i32 0, align 4
@NIG_REG_P1_LLH_PTP_HOST_BUF_SEQID = common dso_local global i32 0, align 4
@NIG_REG_P0_LLH_PTP_HOST_BUF_SEQID = common dso_local global i32 0, align 4
@BNX2X_MSG_PTP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Rx timestamp, timestamp cycles = %llu, ns = %llu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_set_rx_ts(%struct.bnx2x* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %9 = call i32 @BP_PORT(%struct.bnx2x* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @NIG_REG_P1_LLH_PTP_HOST_BUF_TS_MSB, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @NIG_REG_P0_LLH_PTP_HOST_BUF_TS_MSB, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = call i32 @REG_RD(%struct.bnx2x* %10, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 32
  store i32 %21, i32* %6, align 4
  %22 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* @NIG_REG_P1_LLH_PTP_HOST_BUF_TS_LSB, align 4
  br label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @NIG_REG_P0_LLH_PTP_HOST_BUF_TS_LSB, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = phi i32 [ %26, %25 ], [ %28, %27 ]
  %31 = call i32 @REG_RD(%struct.bnx2x* %22, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @NIG_REG_P1_LLH_PTP_HOST_BUF_SEQID, align 4
  br label %41

39:                                               ; preds = %29
  %40 = load i32, i32* @NIG_REG_P0_LLH_PTP_HOST_BUF_SEQID, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = call i32 @REG_WR(%struct.bnx2x* %34, i32 %42, i32 65536)
  %44 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %45 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %44, i32 0, i32 0
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @timecounter_cyc2time(i32* %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @ns_to_ktime(i32 %48)
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = call %struct.TYPE_2__* @skb_hwtstamps(%struct.sk_buff* %50)
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @BNX2X_MSG_PTP, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @DP(i32 %53, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @timecounter_cyc2time(i32*, i32) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local %struct.TYPE_2__* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
