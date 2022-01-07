; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_hwtstamp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_gfar_hwtstamp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i32, i32, i64 }
%struct.gfar_private = type { i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FSL_GIANFAR_DEV_HAS_TIMER = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*)* @gfar_hwtstamp_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfar_hwtstamp_set(%struct.net_device* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.hwtstamp_config, align 8
  %7 = alloca %struct.gfar_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %8)
  store %struct.gfar_private* %9, %struct.gfar_private** %7, align 8
  %10 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %11 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @copy_from_user(%struct.hwtstamp_config* %6, i32 %12, i32 16)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %96

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %96

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %44 [
    i32 129, label %28
    i32 128, label %31
  ]

28:                                               ; preds = %25
  %29 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %30 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %47

31:                                               ; preds = %25
  %32 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %33 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @FSL_GIANFAR_DEV_HAS_TIMER, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @ERANGE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %96

41:                                               ; preds = %31
  %42 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %43 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  br label %47

44:                                               ; preds = %25
  %45 = load i32, i32* @ERANGE, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %96

47:                                               ; preds = %41, %28
  %48 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %61 [
    i32 130, label %50
  ]

50:                                               ; preds = %47
  %51 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %52 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %57 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %56, i32 0, i32 2
  store i32 0, i32* %57, align 4
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i32 @reset_gfar(%struct.net_device* %58)
  br label %60

60:                                               ; preds = %55, %50
  br label %84

61:                                               ; preds = %47
  %62 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %63 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @FSL_GIANFAR_DEV_HAS_TIMER, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %61
  %69 = load i32, i32* @ERANGE, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %96

71:                                               ; preds = %61
  %72 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %73 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %71
  %77 = load %struct.gfar_private*, %struct.gfar_private** %7, align 8
  %78 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %77, i32 0, i32 2
  store i32 1, i32* %78, align 4
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = call i32 @reset_gfar(%struct.net_device* %79)
  br label %81

81:                                               ; preds = %76, %71
  %82 = load i32, i32* @HWTSTAMP_FILTER_ALL, align 4
  %83 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %60
  %85 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %86 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @copy_to_user(i32 %87, %struct.hwtstamp_config* %6, i32 16)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32, i32* @EFAULT, align 4
  %92 = sub nsw i32 0, %91
  br label %94

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %90
  %95 = phi i32 [ %92, %90 ], [ 0, %93 ]
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %94, %68, %44, %38, %22, %15
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i32 @reset_gfar(%struct.net_device*) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
