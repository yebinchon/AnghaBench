; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_dcbnl.c_fm10k_dcbnl_ieee_getets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_dcbnl.c_fm10k_dcbnl_ieee_getets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_ets = type { i32, i32*, i32, i32, i32, i64 }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@IEEE_8021QAZ_TSA_STRICT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_ets*)* @fm10k_dcbnl_ieee_getets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_dcbnl_ieee_getets(%struct.net_device* %0, %struct.ieee_ets* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ieee_ets*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ieee_ets* %1, %struct.ieee_ets** %4, align 8
  %6 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %7 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %8 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %10 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %12 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @memset(i32 %13, i32 0, i32 4)
  %15 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %16 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memset(i32 %17, i32 0, i32 4)
  %19 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %20 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @IEEE_8021QAZ_TSA_STRICT, align 4
  %23 = call i32 @memset(i32 %21, i32 %22, i32 4)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %38, %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @netdev_get_prio_tc_map(%struct.net_device* %29, i32 %30)
  %32 = load %struct.ieee_ets*, %struct.ieee_ets** %4, align 8
  %33 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %24

41:                                               ; preds = %24
  ret i32 0
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @netdev_get_prio_tc_map(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
