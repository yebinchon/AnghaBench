; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ethtool.c_qede_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qede_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@QEDE_NUM_STATS = common dso_local global i32 0, align 4
@QEDE_NUM_TQSTATS = common dso_local global i32 0, align 4
@QEDE_NUM_RQSTATS = common dso_local global i32 0, align 4
@QEDE_PRI_FLAG_LEN = common dso_local global i32 0, align 4
@QEDE_ETHTOOL_TEST_MAX = common dso_local global i32 0, align 4
@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unsupported stringset 0x%08x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @qede_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qede_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.qede_dev* @netdev_priv(%struct.net_device* %9)
  store %struct.qede_dev* %10, %struct.qede_dev** %6, align 8
  %11 = load i32, i32* @QEDE_NUM_STATS, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %70 [
    i32 129, label %13
    i32 130, label %61
    i32 128, label %63
  ]

13:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %27, %13
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @QEDE_NUM_STATS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @qede_is_irrelevant_stat(%struct.qede_dev* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %23, %18
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %14

30:                                               ; preds = %14
  %31 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %32 = call i32 @QEDE_TSS_COUNT(%struct.qede_dev* %31)
  %33 = load i32, i32* @QEDE_NUM_TQSTATS, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %36 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %34, %38
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %43 = call i32 @QEDE_RSS_COUNT(%struct.qede_dev* %42)
  %44 = load i32, i32* @QEDE_NUM_RQSTATS, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %7, align 4
  %48 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %49 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %30
  %53 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %54 = call i32 @QEDE_RSS_COUNT(%struct.qede_dev* %53)
  %55 = load i32, i32* @QEDE_NUM_TQSTATS, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %52, %30
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %77

61:                                               ; preds = %2
  %62 = load i32, i32* @QEDE_PRI_FLAG_LEN, align 4
  store i32 %62, i32* %3, align 4
  br label %77

63:                                               ; preds = %2
  %64 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %65 = call i32 @IS_VF(%struct.qede_dev* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @QEDE_ETHTOOL_TEST_MAX, align 4
  store i32 %68, i32* %3, align 4
  br label %77

69:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %77

70:                                               ; preds = %2
  %71 = load %struct.qede_dev*, %struct.qede_dev** %6, align 8
  %72 = load i32, i32* @QED_MSG_DEBUG, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @DP_VERBOSE(%struct.qede_dev* %71, i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %69, %67, %61, %59
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.qede_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @qede_is_irrelevant_stat(%struct.qede_dev*, i32) #1

declare dso_local i32 @QEDE_TSS_COUNT(%struct.qede_dev*) #1

declare dso_local i32 @QEDE_RSS_COUNT(%struct.qede_dev*) #1

declare dso_local i32 @IS_VF(%struct.qede_dev*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
