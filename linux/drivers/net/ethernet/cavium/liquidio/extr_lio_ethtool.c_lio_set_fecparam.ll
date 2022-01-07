; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_set_fecparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_set_fecparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_fecparam = type { i32 }
%struct.lio = type { %struct.octeon_device* }
%struct.octeon_device = type { i64, i32 }

@OCTEON_CN2350_25GB_SUBSYS_ID = common dso_local global i64 0, align 8
@OCTEON_CN2360_25GB_SUBSYS_ID = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETHTOOL_FEC_OFF = common dso_local global i32 0, align 4
@ETHTOOL_FEC_RS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_fecparam*)* @lio_set_fecparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_set_fecparam(%struct.net_device* %0, %struct.ethtool_fecparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_fecparam*, align 8
  %6 = alloca %struct.lio*, align 8
  %7 = alloca %struct.octeon_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_fecparam* %1, %struct.ethtool_fecparam** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.lio* @GET_LIO(%struct.net_device* %8)
  store %struct.lio* %9, %struct.lio** %6, align 8
  %10 = load %struct.lio*, %struct.lio** %6, align 8
  %11 = getelementptr inbounds %struct.lio, %struct.lio* %10, i32 0, i32 0
  %12 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  store %struct.octeon_device* %12, %struct.octeon_device** %7, align 8
  %13 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %14 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @OCTEON_CN2350_25GB_SUBSYS_ID, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %20 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OCTEON_CN2360_25GB_SUBSYS_ID, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %18, %2
  %25 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %26 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %61

32:                                               ; preds = %24
  %33 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ETHTOOL_FEC_OFF, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load %struct.lio*, %struct.lio** %6, align 8
  %41 = call i32 @liquidio_set_fec(%struct.lio* %40, i32 0)
  br label %56

42:                                               ; preds = %32
  %43 = load %struct.ethtool_fecparam*, %struct.ethtool_fecparam** %5, align 8
  %44 = getelementptr inbounds %struct.ethtool_fecparam, %struct.ethtool_fecparam* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ETHTOOL_FEC_RS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.lio*, %struct.lio** %6, align 8
  %51 = call i32 @liquidio_set_fec(%struct.lio* %50, i32 1)
  br label %55

52:                                               ; preds = %42
  %53 = load i32, i32* @EOPNOTSUPP, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %61

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %39
  br label %60

57:                                               ; preds = %18
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %57, %52, %29
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @liquidio_set_fec(%struct.lio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
