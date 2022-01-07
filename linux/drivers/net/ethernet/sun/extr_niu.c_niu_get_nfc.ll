; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_nfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_nfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, i32 }
%struct.niu = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @niu_get_nfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_get_nfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.niu*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.niu* @netdev_priv(%struct.net_device* %9)
  store %struct.niu* %10, %struct.niu** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %38 [
    i32 129, label %14
    i32 128, label %18
    i32 131, label %24
    i32 130, label %29
    i32 132, label %33
  ]

14:                                               ; preds = %3
  %15 = load %struct.niu*, %struct.niu** %7, align 8
  %16 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %17 = call i32 @niu_get_hash_opts(%struct.niu* %15, %struct.ethtool_rxnfc* %16)
  store i32 %17, i32* %8, align 4
  br label %41

18:                                               ; preds = %3
  %19 = load %struct.niu*, %struct.niu** %7, align 8
  %20 = getelementptr inbounds %struct.niu, %struct.niu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  br label %41

24:                                               ; preds = %3
  %25 = load %struct.niu*, %struct.niu** %7, align 8
  %26 = call i32 @tcam_get_valid_entry_cnt(%struct.niu* %25)
  %27 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %41

29:                                               ; preds = %3
  %30 = load %struct.niu*, %struct.niu** %7, align 8
  %31 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %32 = call i32 @niu_get_ethtool_tcam_entry(%struct.niu* %30, %struct.ethtool_rxnfc* %31)
  store i32 %32, i32* %8, align 4
  br label %41

33:                                               ; preds = %3
  %34 = load %struct.niu*, %struct.niu** %7, align 8
  %35 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @niu_get_ethtool_tcam_all(%struct.niu* %34, %struct.ethtool_rxnfc* %35, i32* %36)
  store i32 %37, i32* %8, align 4
  br label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %38, %33, %29, %24, %18, %14
  %42 = load i32, i32* %8, align 4
  ret i32 %42
}

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @niu_get_hash_opts(%struct.niu*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @tcam_get_valid_entry_cnt(%struct.niu*) #1

declare dso_local i32 @niu_get_ethtool_tcam_entry(%struct.niu*, %struct.ethtool_rxnfc*) #1

declare dso_local i32 @niu_get_ethtool_tcam_all(%struct.niu*, %struct.ethtool_rxnfc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
