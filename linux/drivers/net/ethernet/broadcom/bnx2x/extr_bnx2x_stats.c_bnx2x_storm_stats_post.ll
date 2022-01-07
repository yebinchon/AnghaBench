; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_storm_stats_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_storm_stats_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@BNX2X_MSG_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Sending statistics ramrod %d\0A\00", align 1
@RAMROD_CMD_ID_COMMON_STAT_QUERY = common dso_local global i32 0, align 4
@NONE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_storm_stats_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_storm_stats_post(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %4 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %5 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %50

9:                                                ; preds = %1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %11, align 8
  %14 = call i32 @cpu_to_le16(i32 %12)
  %15 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %16 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %15, i32 0, i32 2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %14, i32* %19, align 4
  %20 = load i32, i32* @BNX2X_MSG_STATS, align 4
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = call i32 @DP(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %30 = call i32 @bnx2x_iov_adjust_stats_req(%struct.bnx2x* %29)
  %31 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %32 = call i32 @bnx2x_dp_stats(%struct.bnx2x* %31)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %34 = load i32, i32* @RAMROD_CMD_ID_COMMON_STAT_QUERY, align 4
  %35 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %36 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @U64_HI(i32 %37)
  %39 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %40 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @U64_LO(i32 %41)
  %43 = load i32, i32* @NONE_CONNECTION_TYPE, align 4
  %44 = call i32 @bnx2x_sp_post(%struct.bnx2x* %33, i32 %34, i32 0, i32 %38, i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %9
  %48 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %49 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  br label %50

50:                                               ; preds = %8, %47, %9
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @bnx2x_iov_adjust_stats_req(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_dp_stats(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_sp_post(%struct.bnx2x*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
