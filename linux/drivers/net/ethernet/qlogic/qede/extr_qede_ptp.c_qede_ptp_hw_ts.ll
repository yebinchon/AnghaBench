; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ptp.c_qede_ptp_hw_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qede/extr_qede_ptp.c_qede_ptp_hw_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qede_dev = type { %struct.qede_ptp* }
%struct.qede_ptp = type { i32, i32, i32 }
%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i32, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@QED_MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"HWTSTAMP IOCTL: Requested tx_type = %d, requested rx_filters = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"config.flags is reserved for future use\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qede_ptp_hw_ts(%struct.qede_dev* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qede_dev*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.hwtstamp_config, align 8
  %7 = alloca %struct.qede_ptp*, align 8
  %8 = alloca i32, align 4
  store %struct.qede_dev* %0, %struct.qede_dev** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %9 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %10 = getelementptr inbounds %struct.qede_dev, %struct.qede_dev* %9, i32 0, i32 0
  %11 = load %struct.qede_ptp*, %struct.qede_ptp** %10, align 8
  store %struct.qede_ptp* %11, %struct.qede_ptp** %7, align 8
  %12 = load %struct.qede_ptp*, %struct.qede_ptp** %7, align 8
  %13 = icmp ne %struct.qede_ptp* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %75

17:                                               ; preds = %2
  %18 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %19 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @copy_from_user(%struct.hwtstamp_config* %6, i32 %20, i32 16)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* @EFAULT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %75

26:                                               ; preds = %17
  %27 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %28 = load i32, i32* @QED_MSG_DEBUG, align 4
  %29 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @DP_VERBOSE(%struct.qede_dev* %27, i32 %28, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  %34 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %26
  %38 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %39 = call i32 @DP_ERR(%struct.qede_dev* %38, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %75

42:                                               ; preds = %26
  %43 = load %struct.qede_ptp*, %struct.qede_ptp** %7, align 8
  %44 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.qede_ptp*, %struct.qede_ptp** %7, align 8
  %48 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.qede_ptp*, %struct.qede_ptp** %7, align 8
  %52 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.qede_dev*, %struct.qede_dev** %4, align 8
  %54 = call i32 @qede_ptp_cfg_filters(%struct.qede_dev* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %75

59:                                               ; preds = %42
  %60 = load %struct.qede_ptp*, %struct.qede_ptp** %7, align 8
  %61 = getelementptr inbounds %struct.qede_ptp, %struct.qede_ptp* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 0
  store i32 %62, i32* %63, align 8
  %64 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %65 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @copy_to_user(i32 %66, %struct.hwtstamp_config* %6, i32 16)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* @EFAULT, align 4
  %71 = sub nsw i32 0, %70
  br label %73

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72, %69
  %74 = phi i32 [ %71, %69 ], [ 0, %72 ]
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %57, %37, %23, %14
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qede_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.qede_dev*, i8*) #1

declare dso_local i32 @qede_ptp_cfg_filters(%struct.qede_dev*) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
