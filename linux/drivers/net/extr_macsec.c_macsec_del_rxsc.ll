; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_del_rxsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_del_rxsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.macsec_secy = type { i32 }
%struct.macsec_rx_sc = type { i32 }
%struct.TYPE_2__ = type { %struct.macsec_secy }

@MACSEC_RXSC_ATTR_MAX = common dso_local global i32 0, align 4
@MACSEC_ATTR_IFINDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MACSEC_RXSC_ATTR_SCI = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @macsec_del_rxsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_del_rxsc(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.macsec_secy*, align 8
  %9 = alloca %struct.macsec_rx_sc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 0
  %16 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  store %struct.nlattr** %16, %struct.nlattr*** %6, align 8
  %17 = load i32, i32* @MACSEC_RXSC_ATTR_MAX, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %11, align 8
  %21 = alloca %struct.nlattr*, i64 %19, align 16
  store i64 %19, i64* %12, align 8
  %22 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %23 = load i64, i64* @MACSEC_ATTR_IFINDEX, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %81

30:                                               ; preds = %2
  %31 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %32 = call i64 @parse_rxsc_config(%struct.nlattr** %31, %struct.nlattr** %21)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %81

37:                                               ; preds = %30
  %38 = load i64, i64* @MACSEC_RXSC_ATTR_SCI, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %81

45:                                               ; preds = %37
  %46 = call i32 (...) @rtnl_lock()
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = call i32 @genl_info_net(%struct.genl_info* %47)
  %49 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %50 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %49, i32 0, i32 0
  %51 = load %struct.nlattr**, %struct.nlattr*** %50, align 8
  %52 = call %struct.net_device* @get_dev_from_nl(i32 %48, %struct.nlattr** %51)
  store %struct.net_device* %52, %struct.net_device** %7, align 8
  %53 = load %struct.net_device*, %struct.net_device** %7, align 8
  %54 = call i64 @IS_ERR(%struct.net_device* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = call i32 (...) @rtnl_unlock()
  %58 = load %struct.net_device*, %struct.net_device** %7, align 8
  %59 = call i32 @PTR_ERR(%struct.net_device* %58)
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %81

60:                                               ; preds = %45
  %61 = load %struct.net_device*, %struct.net_device** %7, align 8
  %62 = call %struct.TYPE_2__* @macsec_priv(%struct.net_device* %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store %struct.macsec_secy* %63, %struct.macsec_secy** %8, align 8
  %64 = load i64, i64* @MACSEC_RXSC_ATTR_SCI, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = call i32 @nla_get_sci(%struct.nlattr* %66)
  store i32 %67, i32* %10, align 4
  %68 = load %struct.macsec_secy*, %struct.macsec_secy** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call %struct.macsec_rx_sc* @del_rx_sc(%struct.macsec_secy* %68, i32 %69)
  store %struct.macsec_rx_sc* %70, %struct.macsec_rx_sc** %9, align 8
  %71 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %9, align 8
  %72 = icmp ne %struct.macsec_rx_sc* %71, null
  br i1 %72, label %77, label %73

73:                                               ; preds = %60
  %74 = call i32 (...) @rtnl_unlock()
  %75 = load i32, i32* @ENODEV, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %81

77:                                               ; preds = %60
  %78 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %9, align 8
  %79 = call i32 @free_rx_sc(%struct.macsec_rx_sc* %78)
  %80 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %81

81:                                               ; preds = %77, %73, %56, %42, %34, %27
  %82 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %82)
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @parse_rxsc_config(%struct.nlattr**, %struct.nlattr**) #2

declare dso_local i32 @rtnl_lock(...) #2

declare dso_local %struct.net_device* @get_dev_from_nl(i32, %struct.nlattr**) #2

declare dso_local i32 @genl_info_net(%struct.genl_info*) #2

declare dso_local i64 @IS_ERR(%struct.net_device*) #2

declare dso_local i32 @rtnl_unlock(...) #2

declare dso_local i32 @PTR_ERR(%struct.net_device*) #2

declare dso_local %struct.TYPE_2__* @macsec_priv(%struct.net_device*) #2

declare dso_local i32 @nla_get_sci(%struct.nlattr*) #2

declare dso_local %struct.macsec_rx_sc* @del_rx_sc(%struct.macsec_secy*, i32) #2

declare dso_local i32 @free_rx_sc(%struct.macsec_rx_sc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
