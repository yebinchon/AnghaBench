; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2x = type { i32 }

@BNX2X_NUM_Q_STATS = common dso_local global i32 0, align 4
@BNX2X_NUM_STATS = common dso_local global i32 0, align 4
@BNX2X_PRI_FLAG_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @bnx2x_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %9)
  store %struct.bnx2x* %10, %struct.bnx2x** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %54 [
    i32 129, label %12
    i32 128, label %49
    i32 130, label %52
  ]

12:                                               ; preds = %2
  %13 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %14 = call i32 @is_multi(%struct.bnx2x* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %18 = call i32 @bnx2x_num_stat_queues(%struct.bnx2x* %17)
  %19 = load i32, i32* @BNX2X_NUM_Q_STATS, align 4
  %20 = mul nsw i32 %18, %19
  store i32 %20, i32* %8, align 4
  br label %22

21:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %21, %16
  %23 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %24 = call i32 @HIDE_PORT_STAT(%struct.bnx2x* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @BNX2X_NUM_STATS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @IS_PORT_STAT(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %35, %31
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %27

42:                                               ; preds = %27
  br label %47

43:                                               ; preds = %22
  %44 = load i32, i32* @BNX2X_NUM_STATS, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %43, %42
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %3, align 4
  br label %57

49:                                               ; preds = %2
  %50 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %51 = call i32 @BNX2X_NUM_TESTS(%struct.bnx2x* %50)
  store i32 %51, i32* %3, align 4
  br label %57

52:                                               ; preds = %2
  %53 = load i32, i32* @BNX2X_PRI_FLAG_LEN, align 4
  store i32 %53, i32* %3, align 4
  br label %57

54:                                               ; preds = %2
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %52, %49, %47
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_multi(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_num_stat_queues(%struct.bnx2x*) #1

declare dso_local i32 @HIDE_PORT_STAT(%struct.bnx2x*) #1

declare dso_local i32 @IS_PORT_STAT(i32) #1

declare dso_local i32 @BNX2X_NUM_TESTS(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
