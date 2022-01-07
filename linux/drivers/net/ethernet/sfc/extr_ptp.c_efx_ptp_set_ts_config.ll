; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_set_ts_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_set_ts_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_ptp_set_ts_config(%struct.efx_nic* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.hwtstamp_config, align 4
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %43

15:                                               ; preds = %2
  %16 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %17 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @copy_from_user(%struct.hwtstamp_config* %6, i32 %18, i32 4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %43

24:                                               ; preds = %15
  %25 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %26 = call i32 @efx_ptp_ts_init(%struct.efx_nic* %25, %struct.hwtstamp_config* %6)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %43

31:                                               ; preds = %24
  %32 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %33 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @copy_to_user(i32 %34, %struct.hwtstamp_config* %6, i32 4)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EFAULT, align 4
  %39 = sub nsw i32 0, %38
  br label %41

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %37
  %42 = phi i32 [ %39, %37 ], [ 0, %40 ]
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %29, %21, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i32 @efx_ptp_ts_init(%struct.efx_nic*, %struct.hwtstamp_config*) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
