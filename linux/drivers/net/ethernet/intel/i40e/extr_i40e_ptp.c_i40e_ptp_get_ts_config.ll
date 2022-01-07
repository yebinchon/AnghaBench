; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ptp.c_i40e_ptp_get_ts_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ptp.c_i40e_ptp_get_ts_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, %struct.hwtstamp_config }
%struct.hwtstamp_config = type { i32 }
%struct.ifreq = type { i32 }

@I40E_FLAG_PTP = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_ptp_get_ts_config(%struct.i40e_pf* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.hwtstamp_config*, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %7 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %8 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %7, i32 0, i32 1
  store %struct.hwtstamp_config* %8, %struct.hwtstamp_config** %6, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @I40E_FLAG_PTP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %31

18:                                               ; preds = %2
  %19 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %20 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %6, align 8
  %23 = call i64 @copy_to_user(i32 %21, %struct.hwtstamp_config* %22, i32 4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @EFAULT, align 4
  %27 = sub nsw i32 0, %26
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32 [ %27, %25 ], [ 0, %28 ]
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
