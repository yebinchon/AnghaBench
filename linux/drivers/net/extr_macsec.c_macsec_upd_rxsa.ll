; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_upd_rxsa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_upd_rxsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.macsec_secy = type { i32 }
%struct.macsec_rx_sc = type { i32 }
%struct.macsec_rx_sa = type { i32, i32, i32 }

@MACSEC_RXSC_ATTR_MAX = common dso_local global i32 0, align 4
@MACSEC_SA_ATTR_MAX = common dso_local global i32 0, align 4
@MACSEC_ATTR_IFINDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MACSEC_SA_ATTR_PN = common dso_local global i64 0, align 8
@MACSEC_SA_ATTR_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @macsec_upd_rxsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_upd_rxsa(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.macsec_secy*, align 8
  %9 = alloca %struct.macsec_rx_sc*, align 8
  %10 = alloca %struct.macsec_rx_sa*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 0
  %18 = load %struct.nlattr**, %struct.nlattr*** %17, align 8
  store %struct.nlattr** %18, %struct.nlattr*** %6, align 8
  %19 = load i32, i32* @MACSEC_RXSC_ATTR_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load i32, i32* @MACSEC_SA_ATTR_MAX, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = alloca %struct.nlattr*, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %28 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %29 = load i64, i64* @MACSEC_ATTR_IFINDEX, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = icmp ne %struct.nlattr* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %101

36:                                               ; preds = %2
  %37 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %38 = call i64 @parse_rxsc_config(%struct.nlattr** %37, %struct.nlattr** %23)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %101

43:                                               ; preds = %36
  %44 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %45 = call i64 @parse_sa_config(%struct.nlattr** %44, %struct.nlattr** %27)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %101

50:                                               ; preds = %43
  %51 = call i32 @validate_upd_sa(%struct.nlattr** %27)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %101

56:                                               ; preds = %50
  %57 = call i32 (...) @rtnl_lock()
  %58 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %59 = call i32 @genl_info_net(%struct.genl_info* %58)
  %60 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %61 = call %struct.macsec_rx_sa* @get_rxsa_from_nl(i32 %59, %struct.nlattr** %60, %struct.nlattr** %23, %struct.nlattr** %27, %struct.net_device** %7, %struct.macsec_secy** %8, %struct.macsec_rx_sc** %9, i32* %11)
  store %struct.macsec_rx_sa* %61, %struct.macsec_rx_sa** %10, align 8
  %62 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %63 = call i64 @IS_ERR(%struct.macsec_rx_sa* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = call i32 (...) @rtnl_unlock()
  %67 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %68 = call i32 @PTR_ERR(%struct.macsec_rx_sa* %67)
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %101

69:                                               ; preds = %56
  %70 = load i64, i64* @MACSEC_SA_ATTR_PN, align 8
  %71 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %70
  %72 = load %struct.nlattr*, %struct.nlattr** %71, align 8
  %73 = icmp ne %struct.nlattr* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %76 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %75, i32 0, i32 1
  %77 = call i32 @spin_lock_bh(i32* %76)
  %78 = load i64, i64* @MACSEC_SA_ATTR_PN, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = call i32 @nla_get_u32(%struct.nlattr* %80)
  %82 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %83 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %85 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %84, i32 0, i32 1
  %86 = call i32 @spin_unlock_bh(i32* %85)
  br label %87

87:                                               ; preds = %74, %69
  %88 = load i64, i64* @MACSEC_SA_ATTR_ACTIVE, align 8
  %89 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %88
  %90 = load %struct.nlattr*, %struct.nlattr** %89, align 8
  %91 = icmp ne %struct.nlattr* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i64, i64* @MACSEC_SA_ATTR_ACTIVE, align 8
  %94 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %27, i64 %93
  %95 = load %struct.nlattr*, %struct.nlattr** %94, align 8
  %96 = call i32 @nla_get_u8(%struct.nlattr* %95)
  %97 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %98 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %92, %87
  %100 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %101

101:                                              ; preds = %99, %65, %53, %47, %40, %33
  %102 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @parse_rxsc_config(%struct.nlattr**, %struct.nlattr**) #2

declare dso_local i64 @parse_sa_config(%struct.nlattr**, %struct.nlattr**) #2

declare dso_local i32 @validate_upd_sa(%struct.nlattr**) #2

declare dso_local i32 @rtnl_lock(...) #2

declare dso_local %struct.macsec_rx_sa* @get_rxsa_from_nl(i32, %struct.nlattr**, %struct.nlattr**, %struct.nlattr**, %struct.net_device**, %struct.macsec_secy**, %struct.macsec_rx_sc**, i32*) #2

declare dso_local i32 @genl_info_net(%struct.genl_info*) #2

declare dso_local i64 @IS_ERR(%struct.macsec_rx_sa*) #2

declare dso_local i32 @rtnl_unlock(...) #2

declare dso_local i32 @PTR_ERR(%struct.macsec_rx_sa*) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
