; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_get_rxsc_from_nl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_get_rxsc_from_nl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macsec_rx_sc = type { i32 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.macsec_secy = type { i32 }
%struct.TYPE_2__ = type { %struct.macsec_secy }

@MACSEC_RXSC_ATTR_SCI = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.macsec_rx_sc* (%struct.net*, %struct.nlattr**, %struct.nlattr**, %struct.net_device**, %struct.macsec_secy**)* @get_rxsc_from_nl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.macsec_rx_sc* @get_rxsc_from_nl(%struct.net* %0, %struct.nlattr** %1, %struct.nlattr** %2, %struct.net_device** %3, %struct.macsec_secy** %4) #0 {
  %6 = alloca %struct.macsec_rx_sc*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.net_device**, align 8
  %11 = alloca %struct.macsec_secy**, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.macsec_secy*, align 8
  %14 = alloca %struct.macsec_rx_sc*, align 8
  %15 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.net_device** %3, %struct.net_device*** %10, align 8
  store %struct.macsec_secy** %4, %struct.macsec_secy*** %11, align 8
  %16 = load %struct.net*, %struct.net** %7, align 8
  %17 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %18 = call %struct.net_device* @get_dev_from_nl(%struct.net* %16, %struct.nlattr** %17)
  store %struct.net_device* %18, %struct.net_device** %12, align 8
  %19 = load %struct.net_device*, %struct.net_device** %12, align 8
  %20 = call i64 @IS_ERR(%struct.net_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %5
  %23 = load %struct.net_device*, %struct.net_device** %12, align 8
  %24 = call %struct.macsec_rx_sc* @ERR_CAST(%struct.net_device* %23)
  store %struct.macsec_rx_sc* %24, %struct.macsec_rx_sc** %6, align 8
  br label %59

25:                                               ; preds = %5
  %26 = load %struct.net_device*, %struct.net_device** %12, align 8
  %27 = call %struct.TYPE_2__* @macsec_priv(%struct.net_device* %26)
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store %struct.macsec_secy* %28, %struct.macsec_secy** %13, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %30 = load i64, i64* @MACSEC_RXSC_ATTR_SCI, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  %37 = call %struct.macsec_rx_sc* @ERR_PTR(i32 %36)
  store %struct.macsec_rx_sc* %37, %struct.macsec_rx_sc** %6, align 8
  br label %59

38:                                               ; preds = %25
  %39 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %40 = load i64, i64* @MACSEC_RXSC_ATTR_SCI, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = call i32 @nla_get_sci(%struct.nlattr* %42)
  store i32 %43, i32* %15, align 4
  %44 = load %struct.macsec_secy*, %struct.macsec_secy** %13, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call %struct.macsec_rx_sc* @find_rx_sc_rtnl(%struct.macsec_secy* %44, i32 %45)
  store %struct.macsec_rx_sc* %46, %struct.macsec_rx_sc** %14, align 8
  %47 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %14, align 8
  %48 = icmp ne %struct.macsec_rx_sc* %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.macsec_rx_sc* @ERR_PTR(i32 %51)
  store %struct.macsec_rx_sc* %52, %struct.macsec_rx_sc** %6, align 8
  br label %59

53:                                               ; preds = %38
  %54 = load %struct.macsec_secy*, %struct.macsec_secy** %13, align 8
  %55 = load %struct.macsec_secy**, %struct.macsec_secy*** %11, align 8
  store %struct.macsec_secy* %54, %struct.macsec_secy** %55, align 8
  %56 = load %struct.net_device*, %struct.net_device** %12, align 8
  %57 = load %struct.net_device**, %struct.net_device*** %10, align 8
  store %struct.net_device* %56, %struct.net_device** %57, align 8
  %58 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %14, align 8
  store %struct.macsec_rx_sc* %58, %struct.macsec_rx_sc** %6, align 8
  br label %59

59:                                               ; preds = %53, %49, %34, %22
  %60 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %6, align 8
  ret %struct.macsec_rx_sc* %60
}

declare dso_local %struct.net_device* @get_dev_from_nl(%struct.net*, %struct.nlattr**) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local %struct.macsec_rx_sc* @ERR_CAST(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @macsec_priv(%struct.net_device*) #1

declare dso_local %struct.macsec_rx_sc* @ERR_PTR(i32) #1

declare dso_local i32 @nla_get_sci(%struct.nlattr*) #1

declare dso_local %struct.macsec_rx_sc* @find_rx_sc_rtnl(%struct.macsec_secy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
