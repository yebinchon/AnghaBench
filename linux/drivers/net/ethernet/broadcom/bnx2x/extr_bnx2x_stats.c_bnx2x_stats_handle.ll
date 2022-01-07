; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (%struct.bnx2x*)* }
%struct.bnx2x = type { i32, i32, i32 }

@STATS_EVENT_UPDATE = common dso_local global i32 0, align 4
@BNX2X_MSG_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Unlikely stats' lock contention [event %d]\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to take stats lock [event %d]\0A\00", align 1
@bnx2x_stats_stm = common dso_local global %struct.TYPE_2__** null, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"state %d -> event %d -> state %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_stats_handle(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %7 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %10 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @unlikely(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %83

15:                                               ; preds = %2
  %16 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %16, i32 0, i32 1
  %18 = call i64 @down_trylock(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @STATS_EVENT_UPDATE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  br label %83

25:                                               ; preds = %20
  %26 = load i32, i32* @BNX2X_MSG_STATS, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i8*, i32, ...) @DP(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %30 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %29, i32 0, i32 1
  %31 = load i32, i32* @HZ, align 4
  %32 = sdiv i32 %31, 10
  %33 = call i32 @down_timeout(i32* %30, i32 %32)
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %83

39:                                               ; preds = %25
  br label %40

40:                                               ; preds = %39, %15
  %41 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @bnx2x_stats_stm, align 8
  %42 = load i32, i32* %5, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %41, i64 %43
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i32 (%struct.bnx2x*)*, i32 (%struct.bnx2x*)** %49, align 8
  %51 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %52 = call i32 %50(%struct.bnx2x* %51)
  %53 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @bnx2x_stats_stm, align 8
  %54 = load i32, i32* %5, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %53, i64 %55
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %64 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %66 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %65, i32 0, i32 1
  %67 = call i32 @up(i32* %66)
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @STATS_EVENT_UPDATE, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %75, label %71

71:                                               ; preds = %40
  %72 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %73 = call i64 @netif_msg_timer(%struct.bnx2x* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %71, %40
  %76 = load i32, i32* @BNX2X_MSG_STATS, align 4
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %80 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, i32, ...) @DP(i32 %76, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %77, i32 %78, i32 %81)
  br label %83

83:                                               ; preds = %14, %24, %36, %75, %71
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @down_trylock(i32*) #1

declare dso_local i32 @DP(i32, i8*, i32, ...) #1

declare dso_local i32 @down_timeout(i32*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32) #1

declare dso_local i32 @up(i32*) #1

declare dso_local i64 @netif_msg_timer(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
