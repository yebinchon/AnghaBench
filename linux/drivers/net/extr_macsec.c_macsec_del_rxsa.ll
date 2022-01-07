; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_del_rxsa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_del_rxsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.macsec_secy = type { i32 }
%struct.macsec_rx_sc = type { i32* }
%struct.macsec_rx_sa = type { i64 }

@MACSEC_RXSC_ATTR_MAX = common dso_local global i32 0, align 4
@MACSEC_SA_ATTR_MAX = common dso_local global i32 0, align 4
@MACSEC_ATTR_IFINDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @macsec_del_rxsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_del_rxsa(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.macsec_secy*, align 8
  %9 = alloca %struct.macsec_rx_sc*, align 8
  %10 = alloca %struct.macsec_rx_sa*, align 8
  %11 = alloca i64, align 8
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
  br label %83

36:                                               ; preds = %2
  %37 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %38 = call i64 @parse_sa_config(%struct.nlattr** %37, %struct.nlattr** %27)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %83

43:                                               ; preds = %36
  %44 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %45 = call i64 @parse_rxsc_config(%struct.nlattr** %44, %struct.nlattr** %23)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %83

50:                                               ; preds = %43
  %51 = call i32 (...) @rtnl_lock()
  %52 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %53 = call i32 @genl_info_net(%struct.genl_info* %52)
  %54 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %55 = call %struct.macsec_rx_sa* @get_rxsa_from_nl(i32 %53, %struct.nlattr** %54, %struct.nlattr** %23, %struct.nlattr** %27, %struct.net_device** %7, %struct.macsec_secy** %8, %struct.macsec_rx_sc** %9, i64* %11)
  store %struct.macsec_rx_sa* %55, %struct.macsec_rx_sa** %10, align 8
  %56 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %57 = call i64 @IS_ERR(%struct.macsec_rx_sa* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = call i32 (...) @rtnl_unlock()
  %61 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %62 = call i32 @PTR_ERR(%struct.macsec_rx_sa* %61)
  store i32 %62, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %83

63:                                               ; preds = %50
  %64 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %65 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = call i32 (...) @rtnl_unlock()
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %83

72:                                               ; preds = %63
  %73 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %9, align 8
  %74 = getelementptr inbounds %struct.macsec_rx_sc, %struct.macsec_rx_sc* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %11, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @RCU_INIT_POINTER(i32 %78, i32* null)
  %80 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %81 = call i32 @clear_rx_sa(%struct.macsec_rx_sa* %80)
  %82 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %83

83:                                               ; preds = %72, %68, %59, %47, %40, %33
  %84 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @parse_sa_config(%struct.nlattr**, %struct.nlattr**) #2

declare dso_local i64 @parse_rxsc_config(%struct.nlattr**, %struct.nlattr**) #2

declare dso_local i32 @rtnl_lock(...) #2

declare dso_local %struct.macsec_rx_sa* @get_rxsa_from_nl(i32, %struct.nlattr**, %struct.nlattr**, %struct.nlattr**, %struct.net_device**, %struct.macsec_secy**, %struct.macsec_rx_sc**, i64*) #2

declare dso_local i32 @genl_info_net(%struct.genl_info*) #2

declare dso_local i64 @IS_ERR(%struct.macsec_rx_sa*) #2

declare dso_local i32 @rtnl_unlock(...) #2

declare dso_local i32 @PTR_ERR(%struct.macsec_rx_sa*) #2

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #2

declare dso_local i32 @clear_rx_sa(%struct.macsec_rx_sa*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
