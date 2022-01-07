; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_get_txsa_from_nl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_get_txsa_from_nl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macsec_tx_sa = type { i32 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.macsec_secy = type { %struct.macsec_tx_sc }
%struct.macsec_tx_sc = type { i32* }
%struct.TYPE_2__ = type { %struct.macsec_secy }

@MACSEC_SA_ATTR_AN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MACSEC_NUM_AN = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.macsec_tx_sa* (%struct.net*, %struct.nlattr**, %struct.nlattr**, %struct.net_device**, %struct.macsec_secy**, %struct.macsec_tx_sc**, i64*)* @get_txsa_from_nl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.macsec_tx_sa* @get_txsa_from_nl(%struct.net* %0, %struct.nlattr** %1, %struct.nlattr** %2, %struct.net_device** %3, %struct.macsec_secy** %4, %struct.macsec_tx_sc** %5, i64* %6) #0 {
  %8 = alloca %struct.macsec_tx_sa*, align 8
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.nlattr**, align 8
  %12 = alloca %struct.net_device**, align 8
  %13 = alloca %struct.macsec_secy**, align 8
  %14 = alloca %struct.macsec_tx_sc**, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.net_device*, align 8
  %17 = alloca %struct.macsec_secy*, align 8
  %18 = alloca %struct.macsec_tx_sc*, align 8
  %19 = alloca %struct.macsec_tx_sa*, align 8
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %10, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %11, align 8
  store %struct.net_device** %3, %struct.net_device*** %12, align 8
  store %struct.macsec_secy** %4, %struct.macsec_secy*** %13, align 8
  store %struct.macsec_tx_sc** %5, %struct.macsec_tx_sc*** %14, align 8
  store i64* %6, i64** %15, align 8
  %20 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %21 = load i64, i64* @MACSEC_SA_ATTR_AN, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = icmp ne %struct.nlattr* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %7
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.macsec_tx_sa* @ERR_PTR(i32 %27)
  store %struct.macsec_tx_sa* %28, %struct.macsec_tx_sa** %8, align 8
  br label %82

29:                                               ; preds = %7
  %30 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %31 = load i64, i64* @MACSEC_SA_ATTR_AN, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = call i64 @nla_get_u8(%struct.nlattr* %33)
  %35 = load i64*, i64** %15, align 8
  store i64 %34, i64* %35, align 8
  %36 = load %struct.net*, %struct.net** %9, align 8
  %37 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %38 = call %struct.net_device* @get_dev_from_nl(%struct.net* %36, %struct.nlattr** %37)
  store %struct.net_device* %38, %struct.net_device** %16, align 8
  %39 = load %struct.net_device*, %struct.net_device** %16, align 8
  %40 = call i64 @IS_ERR(%struct.net_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %29
  %43 = load %struct.net_device*, %struct.net_device** %16, align 8
  %44 = call %struct.macsec_tx_sa* @ERR_CAST(%struct.net_device* %43)
  store %struct.macsec_tx_sa* %44, %struct.macsec_tx_sa** %8, align 8
  br label %82

45:                                               ; preds = %29
  %46 = load i64*, i64** %15, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MACSEC_NUM_AN, align 8
  %49 = icmp uge i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.macsec_tx_sa* @ERR_PTR(i32 %52)
  store %struct.macsec_tx_sa* %53, %struct.macsec_tx_sa** %8, align 8
  br label %82

54:                                               ; preds = %45
  %55 = load %struct.net_device*, %struct.net_device** %16, align 8
  %56 = call %struct.TYPE_2__* @macsec_priv(%struct.net_device* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store %struct.macsec_secy* %57, %struct.macsec_secy** %17, align 8
  %58 = load %struct.macsec_secy*, %struct.macsec_secy** %17, align 8
  %59 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %58, i32 0, i32 0
  store %struct.macsec_tx_sc* %59, %struct.macsec_tx_sc** %18, align 8
  %60 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %18, align 8
  %61 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i64*, i64** %15, align 8
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.macsec_tx_sa* @rtnl_dereference(i32 %66)
  store %struct.macsec_tx_sa* %67, %struct.macsec_tx_sa** %19, align 8
  %68 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %19, align 8
  %69 = icmp ne %struct.macsec_tx_sa* %68, null
  br i1 %69, label %74, label %70

70:                                               ; preds = %54
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  %73 = call %struct.macsec_tx_sa* @ERR_PTR(i32 %72)
  store %struct.macsec_tx_sa* %73, %struct.macsec_tx_sa** %8, align 8
  br label %82

74:                                               ; preds = %54
  %75 = load %struct.net_device*, %struct.net_device** %16, align 8
  %76 = load %struct.net_device**, %struct.net_device*** %12, align 8
  store %struct.net_device* %75, %struct.net_device** %76, align 8
  %77 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %18, align 8
  %78 = load %struct.macsec_tx_sc**, %struct.macsec_tx_sc*** %14, align 8
  store %struct.macsec_tx_sc* %77, %struct.macsec_tx_sc** %78, align 8
  %79 = load %struct.macsec_secy*, %struct.macsec_secy** %17, align 8
  %80 = load %struct.macsec_secy**, %struct.macsec_secy*** %13, align 8
  store %struct.macsec_secy* %79, %struct.macsec_secy** %80, align 8
  %81 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %19, align 8
  store %struct.macsec_tx_sa* %81, %struct.macsec_tx_sa** %8, align 8
  br label %82

82:                                               ; preds = %74, %70, %50, %42, %25
  %83 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %8, align 8
  ret %struct.macsec_tx_sa* %83
}

declare dso_local %struct.macsec_tx_sa* @ERR_PTR(i32) #1

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

declare dso_local %struct.net_device* @get_dev_from_nl(%struct.net*, %struct.nlattr**) #1

declare dso_local i64 @IS_ERR(%struct.net_device*) #1

declare dso_local %struct.macsec_tx_sa* @ERR_CAST(%struct.net_device*) #1

declare dso_local %struct.TYPE_2__* @macsec_priv(%struct.net_device*) #1

declare dso_local %struct.macsec_tx_sa* @rtnl_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
