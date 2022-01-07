; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_safe_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_stats.c_bnx2x_stats_safe_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i64 }

@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Failed to take statistics lock for safe execution\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Failed to wait for stats pending to clear [possibly FW is stuck]\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_stats_safe_exec(%struct.bnx2x* %0, void (i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca void (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store void (i8*)* %1, void (i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 10, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %10 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %9, i32 0, i32 0
  %11 = load i32, i32* @HZ, align 4
  %12 = sdiv i32 %11, 10
  %13 = call i32 @down_timeout(i32* %10, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %56

19:                                               ; preds = %3
  %20 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %21 = call i32 @bnx2x_stats_comp(%struct.bnx2x* %20)
  br label %22

22:                                               ; preds = %39, %19
  %23 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %7, align 4
  %30 = icmp ne i32 %28, 0
  br label %31

31:                                               ; preds = %27, %22
  %32 = phi i1 [ false, %22 ], [ %30, %27 ]
  br i1 %32, label %33, label %40

33:                                               ; preds = %31
  %34 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %35 = call i64 @bnx2x_storm_stats_update(%struct.bnx2x* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %39

39:                                               ; preds = %37, %33
  br label %22

40:                                               ; preds = %31
  %41 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %42 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %52

49:                                               ; preds = %40
  %50 = load void (i8*)*, void (i8*)** %5, align 8
  %51 = load i8*, i8** %6, align 8
  call void %50(i8* %51)
  br label %52

52:                                               ; preds = %49, %45
  %53 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %54 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %53, i32 0, i32 0
  %55 = call i32 @up(i32* %54)
  br label %56

56:                                               ; preds = %52, %17
  %57 = load i32, i32* %8, align 4
  ret i32 %57
}

declare dso_local i32 @down_timeout(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @bnx2x_stats_comp(%struct.bnx2x*) #1

declare dso_local i64 @bnx2x_storm_stats_update(%struct.bnx2x*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
