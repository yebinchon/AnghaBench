; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_hwtstamp_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_hwtstamp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.lio = type { i32 }
%struct.hwtstamp_config = type { i32, i32, i64 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@LIO_IFSTATE_RX_TIMESTAMP_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*)* @hwtstamp_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwtstamp_ioctl(%struct.net_device* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.lio*, align 8
  %7 = alloca %struct.hwtstamp_config, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.lio* @GET_LIO(%struct.net_device* %8)
  store %struct.lio* %9, %struct.lio** %6, align 8
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
  br label %65

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %65

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %29 [
    i32 128, label %28
    i32 129, label %28
  ]

28:                                               ; preds = %25, %25
  br label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @ERANGE, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %65

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %38 [
    i32 144, label %35
    i32 145, label %36
    i32 130, label %36
    i32 141, label %36
    i32 140, label %36
    i32 142, label %36
    i32 133, label %36
    i32 132, label %36
    i32 134, label %36
    i32 136, label %36
    i32 135, label %36
    i32 137, label %36
    i32 138, label %36
    i32 131, label %36
    i32 139, label %36
    i32 143, label %36
  ]

35:                                               ; preds = %32
  br label %41

36:                                               ; preds = %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32, %32
  %37 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 1
  store i32 145, i32* %37, align 4
  br label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @ERANGE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %65

41:                                               ; preds = %36, %35
  %42 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %7, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 145
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.lio*, %struct.lio** %6, align 8
  %47 = load i32, i32* @LIO_IFSTATE_RX_TIMESTAMP_ENABLED, align 4
  %48 = call i32 @ifstate_set(%struct.lio* %46, i32 %47)
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.lio*, %struct.lio** %6, align 8
  %51 = load i32, i32* @LIO_IFSTATE_RX_TIMESTAMP_ENABLED, align 4
  %52 = call i32 @ifstate_reset(%struct.lio* %50, i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %55 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @copy_to_user(i32 %56, %struct.hwtstamp_config* %7, i32 16)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EFAULT, align 4
  %61 = sub nsw i32 0, %60
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32 [ %61, %59 ], [ 0, %62 ]
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %38, %29, %22, %15
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i32 @ifstate_set(%struct.lio*, i32) #1

declare dso_local i32 @ifstate_reset(%struct.lio*, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
