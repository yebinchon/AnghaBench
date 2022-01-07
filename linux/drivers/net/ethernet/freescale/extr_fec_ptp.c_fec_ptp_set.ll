; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_ptp.c_fec_ptp_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_ptp.c_fec_ptp_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.fec_enet_private = type { i32, i32 }
%struct.hwtstamp_config = type { i32, i32, i64 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@HWTSTAMP_FILTER_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fec_ptp_set(%struct.net_device* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.fec_enet_private*, align 8
  %7 = alloca %struct.hwtstamp_config, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %8)
  store %struct.fec_enet_private* %9, %struct.fec_enet_private** %6, align 8
  %10 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %11 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @copy_from_user(%struct.hwtstamp_config* %7, i32 %12, i32 16)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EFAULT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %67

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %34 [
    i32 129, label %28
    i32 128, label %31
  ]

28:                                               ; preds = %25
  %29 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %30 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %29, i32 0, i32 0
  store i32 0, i32* %30, align 4
  br label %37

31:                                               ; preds = %25
  %32 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %33 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  br label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @ERANGE, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %67

37:                                               ; preds = %31, %28
  %38 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %50 [
    i32 130, label %40
  ]

40:                                               ; preds = %37
  %41 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %42 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %47 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %46, i32 0, i32 1
  store i32 0, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 1
  store i32 130, i32* %49, align 4
  br label %55

50:                                               ; preds = %37
  %51 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %52 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load i32, i32* @HWTSTAMP_FILTER_ALL, align 4
  %54 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 1
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %50, %48
  %56 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %57 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @copy_to_user(i32 %58, %struct.hwtstamp_config* %7, i32 16)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EFAULT, align 4
  %63 = sub nsw i32 0, %62
  br label %65

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %61
  %66 = phi i32 [ %63, %61 ], [ 0, %64 ]
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %34, %22, %15
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
