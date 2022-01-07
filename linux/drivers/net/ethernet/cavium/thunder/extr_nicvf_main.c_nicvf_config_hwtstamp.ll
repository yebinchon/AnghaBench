; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_config_hwtstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_config_hwtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i32, i32, i64 }
%struct.nicvf = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*)* @nicvf_config_hwtstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_config_hwtstamp(%struct.net_device* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.hwtstamp_config, align 8
  %7 = alloca %struct.nicvf*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.nicvf* @netdev_priv(%struct.net_device* %8)
  store %struct.nicvf* %9, %struct.nicvf** %7, align 8
  %10 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %11 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %73

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
  br label %73

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %73

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %37 [
    i32 129, label %36
    i32 128, label %36
  ]

36:                                               ; preds = %33, %33
  br label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @ERANGE, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %73

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %50 [
    i32 143, label %43
    i32 144, label %46
    i32 130, label %46
    i32 141, label %46
    i32 140, label %46
    i32 142, label %46
    i32 133, label %46
    i32 132, label %46
    i32 134, label %46
    i32 136, label %46
    i32 135, label %46
    i32 137, label %46
    i32 138, label %46
    i32 131, label %46
    i32 139, label %46
  ]

43:                                               ; preds = %40
  %44 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %45 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  br label %53

46:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40
  %47 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %48 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %6, i32 0, i32 1
  store i32 144, i32* %49, align 4
  br label %53

50:                                               ; preds = %40
  %51 = load i32, i32* @ERANGE, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %73

53:                                               ; preds = %46, %43
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = call i64 @netif_running(%struct.net_device* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %59 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %60 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @nicvf_config_hw_rx_tstamp(%struct.nicvf* %58, i32 %61)
  br label %63

63:                                               ; preds = %57, %53
  %64 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %65 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @copy_to_user(i32 %66, %struct.hwtstamp_config* %6, i32 16)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* @EFAULT, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %69, %50, %37, %30, %23, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @nicvf_config_hw_rx_tstamp(%struct.nicvf*, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
