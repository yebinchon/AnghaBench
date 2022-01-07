; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_wait_for_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_wait_for_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Timeout waiting for link up\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Timeout waiting for link init\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i64, i64)* @bnx2x_wait_for_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_wait_for_link(%struct.bnx2x* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 1400, i32* %7, align 4
  %8 = load i64, i64* %5, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %63

10:                                               ; preds = %3
  br label %11

11:                                               ; preds = %22, %10
  %12 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @bnx2x_link_test(%struct.bnx2x* %12, i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %7, align 4
  %19 = icmp ne i32 %17, 0
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i1 [ false, %11 ], [ %19, %16 ]
  br i1 %21, label %22, label %24

22:                                               ; preds = %20
  %23 = call i32 @msleep(i32 20)
  br label %11

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp sle i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @bnx2x_link_test(%struct.bnx2x* %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %34 = call i32 @DP(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27, %24
  store i32 1400, i32* %7, align 4
  br label %36

36:                                               ; preds = %48, %35
  %37 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %38 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %7, align 4
  %45 = icmp ne i32 %43, 0
  br label %46

46:                                               ; preds = %42, %36
  %47 = phi i1 [ false, %36 ], [ %45, %42 ]
  br i1 %47, label %48, label %50

48:                                               ; preds = %46
  %49 = call i32 @msleep(i32 20)
  br label %36

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %55 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %61 = call i32 @DP(i32 %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %59, %53, %50
  br label %63

63:                                               ; preds = %62, %3
  ret void
}

declare dso_local i64 @bnx2x_link_test(%struct.bnx2x*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
