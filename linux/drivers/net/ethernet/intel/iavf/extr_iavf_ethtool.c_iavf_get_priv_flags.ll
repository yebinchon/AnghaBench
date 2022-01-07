; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_ethtool.c_iavf_get_priv_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_ethtool.c_iavf_get_priv_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_priv_flags = type { i32 }
%struct.net_device = type { i32 }
%struct.iavf_adapter = type { i32 }

@IAVF_PRIV_FLAGS_STR_LEN = common dso_local global i64 0, align 8
@iavf_gstrings_priv_flags = common dso_local global %struct.iavf_priv_flags* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*)* @iavf_get_priv_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iavf_get_priv_flags(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.iavf_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.iavf_priv_flags*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.iavf_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.iavf_adapter* %8, %struct.iavf_adapter** %3, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @IAVF_PRIV_FLAGS_STR_LEN, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %9
  %14 = load %struct.iavf_priv_flags*, %struct.iavf_priv_flags** @iavf_gstrings_priv_flags, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.iavf_priv_flags, %struct.iavf_priv_flags* %14, i64 %15
  store %struct.iavf_priv_flags* %16, %struct.iavf_priv_flags** %6, align 8
  %17 = load %struct.iavf_priv_flags*, %struct.iavf_priv_flags** %6, align 8
  %18 = getelementptr inbounds %struct.iavf_priv_flags, %struct.iavf_priv_flags* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.iavf_adapter*, %struct.iavf_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %13
  %26 = load i64, i64* %4, align 8
  %27 = call i64 @BIT(i64 %26)
  %28 = load i64, i64* %5, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %25, %13
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %4, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %4, align 8
  br label %9

34:                                               ; preds = %9
  %35 = load i64, i64* %5, align 8
  ret i64 %35
}

declare dso_local %struct.iavf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
