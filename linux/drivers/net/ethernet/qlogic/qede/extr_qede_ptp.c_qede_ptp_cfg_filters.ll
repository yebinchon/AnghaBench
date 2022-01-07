; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ptp.c_qede_ptp_cfg_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ptp.c_qede_ptp_cfg_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { i32, i32, %struct.qede_ptp* }
%struct.qede_ptp = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, i32, i32)* }

@QED_PTP_HWTSTAMP_TX_ON = common dso_local global i32 0, align 4
@QED_PTP_FILTER_NONE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"TS IOCTL not called\0A\00", align 1
@QEDE_FLAGS_TX_TIMESTAMPING_EN = common dso_local global i32 0, align 4
@QED_PTP_HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"One-step timestamping is not supported\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@QED_PTP_FILTER_ALL = common dso_local global i32 0, align 4
@QED_PTP_FILTER_V1_L4_EVENT = common dso_local global i32 0, align 4
@QED_PTP_FILTER_V1_L4_GEN = common dso_local global i32 0, align 4
@QED_PTP_FILTER_V2_L4_EVENT = common dso_local global i32 0, align 4
@QED_PTP_FILTER_V2_L4_GEN = common dso_local global i32 0, align 4
@QED_PTP_FILTER_V2_L2_EVENT = common dso_local global i32 0, align 4
@QED_PTP_FILTER_V2_L2_GEN = common dso_local global i32 0, align 4
@QED_PTP_FILTER_V2_EVENT = common dso_local global i32 0, align 4
@QED_PTP_FILTER_V2_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qede_dev*)* @qede_ptp_cfg_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qede_ptp_cfg_filters(%struct.qede_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qede_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qede_ptp*, align 8
  store %struct.qede_dev* %0, %struct.qede_dev** %3, align 8
  %7 = load i32, i32* @QED_PTP_HWTSTAMP_TX_ON, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* @QED_PTP_FILTER_NONE, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %10 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %9, i32 0, i32 2
  %11 = load %struct.qede_ptp*, %struct.qede_ptp** %10, align 8
  store %struct.qede_ptp* %11, %struct.qede_ptp** %6, align 8
  %12 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %13 = icmp ne %struct.qede_ptp* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %106

17:                                               ; preds = %1
  %18 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %19 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %24 = call i32 @DP_INFO(%struct.qede_dev* %23, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %106

25:                                               ; preds = %17
  %26 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %27 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %46 [
    i32 129, label %29
    i32 130, label %35
    i32 128, label %41
  ]

29:                                               ; preds = %25
  %30 = load i32, i32* @QEDE_FLAGS_TX_TIMESTAMPING_EN, align 4
  %31 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %32 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %31, i32 0, i32 1
  %33 = call i32 @set_bit(i32 %30, i32* %32)
  %34 = load i32, i32* @QED_PTP_HWTSTAMP_TX_ON, align 4
  store i32 %34, i32* %4, align 4
  br label %46

35:                                               ; preds = %25
  %36 = load i32, i32* @QEDE_FLAGS_TX_TIMESTAMPING_EN, align 4
  %37 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %38 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %37, i32 0, i32 1
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  %40 = load i32, i32* @QED_PTP_HWTSTAMP_TX_OFF, align 4
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %25
  %42 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %43 = call i32 @DP_ERR(%struct.qede_dev* %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ERANGE, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %106

46:                                               ; preds = %25, %35, %29
  %47 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %48 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %47, i32 0, i32 2
  %49 = call i32 @spin_lock_bh(i32* %48)
  %50 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %51 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %91 [
    i32 145, label %53
    i32 146, label %55
    i32 131, label %55
    i32 144, label %55
    i32 142, label %59
    i32 141, label %63
    i32 143, label %63
    i32 134, label %67
    i32 133, label %71
    i32 135, label %71
    i32 137, label %75
    i32 136, label %79
    i32 138, label %79
    i32 139, label %83
    i32 132, label %87
    i32 140, label %87
  ]

53:                                               ; preds = %46
  %54 = load i32, i32* @QED_PTP_FILTER_NONE, align 4
  store i32 %54, i32* %5, align 4
  br label %91

55:                                               ; preds = %46, %46, %46
  %56 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %57 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %56, i32 0, i32 1
  store i32 145, i32* %57, align 4
  %58 = load i32, i32* @QED_PTP_FILTER_ALL, align 4
  store i32 %58, i32* %5, align 4
  br label %91

59:                                               ; preds = %46
  %60 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %61 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %60, i32 0, i32 1
  store i32 142, i32* %61, align 4
  %62 = load i32, i32* @QED_PTP_FILTER_V1_L4_EVENT, align 4
  store i32 %62, i32* %5, align 4
  br label %91

63:                                               ; preds = %46, %46
  %64 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %65 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %64, i32 0, i32 1
  store i32 142, i32* %65, align 4
  %66 = load i32, i32* @QED_PTP_FILTER_V1_L4_GEN, align 4
  store i32 %66, i32* %5, align 4
  br label %91

67:                                               ; preds = %46
  %68 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %69 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %68, i32 0, i32 1
  store i32 134, i32* %69, align 4
  %70 = load i32, i32* @QED_PTP_FILTER_V2_L4_EVENT, align 4
  store i32 %70, i32* %5, align 4
  br label %91

71:                                               ; preds = %46, %46
  %72 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %73 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %72, i32 0, i32 1
  store i32 134, i32* %73, align 4
  %74 = load i32, i32* @QED_PTP_FILTER_V2_L4_GEN, align 4
  store i32 %74, i32* %5, align 4
  br label %91

75:                                               ; preds = %46
  %76 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %77 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %76, i32 0, i32 1
  store i32 137, i32* %77, align 4
  %78 = load i32, i32* @QED_PTP_FILTER_V2_L2_EVENT, align 4
  store i32 %78, i32* %5, align 4
  br label %91

79:                                               ; preds = %46, %46
  %80 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %81 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %80, i32 0, i32 1
  store i32 137, i32* %81, align 4
  %82 = load i32, i32* @QED_PTP_FILTER_V2_L2_GEN, align 4
  store i32 %82, i32* %5, align 4
  br label %91

83:                                               ; preds = %46
  %84 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %85 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %84, i32 0, i32 1
  store i32 139, i32* %85, align 4
  %86 = load i32, i32* @QED_PTP_FILTER_V2_EVENT, align 4
  store i32 %86, i32* %5, align 4
  br label %91

87:                                               ; preds = %46, %46
  %88 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %89 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %88, i32 0, i32 1
  store i32 139, i32* %89, align 4
  %90 = load i32, i32* @QED_PTP_FILTER_V2_GEN, align 4
  store i32 %90, i32* %5, align 4
  br label %91

91:                                               ; preds = %46, %87, %83, %79, %75, %71, %67, %63, %59, %55, %53
  %92 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %93 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %92, i32 0, i32 3
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %95, align 8
  %97 = load %struct.qede_dev*, %struct.qede_dev** %3, align 8
  %98 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %4, align 4
  %102 = call i32 %96(i32 %99, i32 %100, i32 %101)
  %103 = load %struct.qede_ptp*, %struct.qede_ptp** %6, align 8
  %104 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %103, i32 0, i32 2
  %105 = call i32 @spin_unlock_bh(i32* %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %91, %41, %22, %14
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @DP_INFO(%struct.qede_dev*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
