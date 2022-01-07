; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_get_rxsa_from_nl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_get_rxsa_from_nl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macsec_rx_sa = type { i32 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.macsec_secy = type { i32 }
%struct.macsec_rx_sc = type { i32* }

@MACSEC_SA_ATTR_AN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MACSEC_NUM_AN = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.macsec_rx_sa* (%struct.net*, %struct.nlattr**, %struct.nlattr**, %struct.nlattr**, %struct.net_device**, %struct.macsec_secy**, %struct.macsec_rx_sc**, i64*)* @get_rxsa_from_nl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.macsec_rx_sa* @get_rxsa_from_nl(%struct.net* %0, %struct.nlattr** %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.net_device** %4, %struct.macsec_secy** %5, %struct.macsec_rx_sc** %6, i64* %7) #0 {
  %9 = alloca %struct.macsec_rx_sa*, align 8
  %10 = alloca %struct.net*, align 8
  %11 = alloca %struct.nlattr**, align 8
  %12 = alloca %struct.nlattr**, align 8
  %13 = alloca %struct.nlattr**, align 8
  %14 = alloca %struct.net_device**, align 8
  %15 = alloca %struct.macsec_secy**, align 8
  %16 = alloca %struct.macsec_rx_sc**, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.macsec_rx_sc*, align 8
  %19 = alloca %struct.macsec_rx_sa*, align 8
  store %struct.net* %0, %struct.net** %10, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %11, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %12, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %13, align 8
  store %struct.net_device** %4, %struct.net_device*** %14, align 8
  store %struct.macsec_secy** %5, %struct.macsec_secy*** %15, align 8
  store %struct.macsec_rx_sc** %6, %struct.macsec_rx_sc*** %16, align 8
  store i64* %7, i64** %17, align 8
  %20 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %21 = load i64, i64* @MACSEC_SA_ATTR_AN, align 8
  %22 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %20, i64 %21
  %23 = load %struct.nlattr*, %struct.nlattr** %22, align 8
  %24 = icmp ne %struct.nlattr* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.macsec_rx_sa* @ERR_PTR(i32 %27)
  store %struct.macsec_rx_sa* %28, %struct.macsec_rx_sa** %9, align 8
  br label %76

29:                                               ; preds = %8
  %30 = load %struct.nlattr**, %struct.nlattr*** %13, align 8
  %31 = load i64, i64* @MACSEC_SA_ATTR_AN, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = call i64 @nla_get_u8(%struct.nlattr* %33)
  %35 = load i64*, i64** %17, align 8
  store i64 %34, i64* %35, align 8
  %36 = load i64*, i64** %17, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MACSEC_NUM_AN, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.macsec_rx_sa* @ERR_PTR(i32 %42)
  store %struct.macsec_rx_sa* %43, %struct.macsec_rx_sa** %9, align 8
  br label %76

44:                                               ; preds = %29
  %45 = load %struct.net*, %struct.net** %10, align 8
  %46 = load %struct.nlattr**, %struct.nlattr*** %11, align 8
  %47 = load %struct.nlattr**, %struct.nlattr*** %12, align 8
  %48 = load %struct.net_device**, %struct.net_device*** %14, align 8
  %49 = load %struct.macsec_secy**, %struct.macsec_secy*** %15, align 8
  %50 = call %struct.macsec_rx_sc* @get_rxsc_from_nl(%struct.net* %45, %struct.nlattr** %46, %struct.nlattr** %47, %struct.net_device** %48, %struct.macsec_secy** %49)
  store %struct.macsec_rx_sc* %50, %struct.macsec_rx_sc** %18, align 8
  %51 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %18, align 8
  %52 = call i64 @IS_ERR(%struct.macsec_rx_sc* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %18, align 8
  %56 = call %struct.macsec_rx_sa* @ERR_CAST(%struct.macsec_rx_sc* %55)
  store %struct.macsec_rx_sa* %56, %struct.macsec_rx_sa** %9, align 8
  br label %76

57:                                               ; preds = %44
  %58 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %18, align 8
  %59 = getelementptr inbounds %struct.macsec_rx_sc, %struct.macsec_rx_sc* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64*, i64** %17, align 8
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.macsec_rx_sa* @rtnl_dereference(i32 %64)
  store %struct.macsec_rx_sa* %65, %struct.macsec_rx_sa** %19, align 8
  %66 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %19, align 8
  %67 = icmp ne %struct.macsec_rx_sa* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %57
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  %71 = call %struct.macsec_rx_sa* @ERR_PTR(i32 %70)
  store %struct.macsec_rx_sa* %71, %struct.macsec_rx_sa** %9, align 8
  br label %76

72:                                               ; preds = %57
  %73 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %18, align 8
  %74 = load %struct.macsec_rx_sc**, %struct.macsec_rx_sc*** %16, align 8
  store %struct.macsec_rx_sc* %73, %struct.macsec_rx_sc** %74, align 8
  %75 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %19, align 8
  store %struct.macsec_rx_sa* %75, %struct.macsec_rx_sa** %9, align 8
  br label %76

76:                                               ; preds = %72, %68, %54, %40, %25
  %77 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %9, align 8
  ret %struct.macsec_rx_sa* %77
}

declare dso_local %struct.macsec_rx_sa* @ERR_PTR(i32) #1

declare dso_local i64 @nla_get_u8(%struct.nlattr*) #1

declare dso_local %struct.macsec_rx_sc* @get_rxsc_from_nl(%struct.net*, %struct.nlattr**, %struct.nlattr**, %struct.net_device**, %struct.macsec_secy**) #1

declare dso_local i64 @IS_ERR(%struct.macsec_rx_sc*) #1

declare dso_local %struct.macsec_rx_sa* @ERR_CAST(%struct.macsec_rx_sc*) #1

declare dso_local %struct.macsec_rx_sa* @rtnl_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
