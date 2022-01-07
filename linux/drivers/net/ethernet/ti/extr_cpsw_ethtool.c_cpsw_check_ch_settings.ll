; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_check_ch_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_check_ch_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_common = type { %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i64 }
%struct.ethtool_channels = type { i64, i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"Maximum one tx/rx queue is allowed\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpsw_common*, %struct.ethtool_channels*)* @cpsw_check_ch_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpsw_check_ch_settings(%struct.cpsw_common* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpsw_common*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  store %struct.cpsw_common* %0, %struct.cpsw_common** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %6 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %7 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %12 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dev_err(i32 %13, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EOPNOTSUPP, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %2
  %18 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %19 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %60

25:                                               ; preds = %17
  %26 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %60

38:                                               ; preds = %30
  %39 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %43 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %41, %45
  br i1 %46, label %56, label %47

47:                                               ; preds = %38
  %48 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %49 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.cpsw_common*, %struct.cpsw_common** %4, align 8
  %52 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp sgt i64 %50, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %47, %38
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %60

59:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %56, %35, %22, %10
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
