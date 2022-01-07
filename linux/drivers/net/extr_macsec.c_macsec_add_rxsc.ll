; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_add_rxsc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_add_rxsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.macsec_rx_sc = type { i32 }

@MACSEC_UNDEF_SCI = common dso_local global i32 0, align 4
@MACSEC_RXSC_ATTR_MAX = common dso_local global i32 0, align 4
@MACSEC_ATTR_IFINDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MACSEC_RXSC_ATTR_SCI = common dso_local global i64 0, align 8
@MACSEC_RXSC_ATTR_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @macsec_add_rxsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_add_rxsc(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca %struct.macsec_rx_sc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %13 = load i32, i32* @MACSEC_UNDEF_SCI, align 4
  store i32 %13, i32* %7, align 4
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 0
  %16 = load %struct.nlattr**, %struct.nlattr*** %15, align 8
  store %struct.nlattr** %16, %struct.nlattr*** %8, align 8
  %17 = load i32, i32* @MACSEC_RXSC_ATTR_MAX, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca %struct.nlattr*, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %23 = load i64, i64* @MACSEC_ATTR_IFINDEX, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %92

30:                                               ; preds = %2
  %31 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %32 = call i64 @parse_rxsc_config(%struct.nlattr** %31, %struct.nlattr** %21)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %92

37:                                               ; preds = %30
  %38 = call i32 @validate_add_rxsc(%struct.nlattr** %21)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %92

43:                                               ; preds = %37
  %44 = call i32 (...) @rtnl_lock()
  %45 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %46 = call i32 @genl_info_net(%struct.genl_info* %45)
  %47 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %48 = call %struct.net_device* @get_dev_from_nl(i32 %46, %struct.nlattr** %47)
  store %struct.net_device* %48, %struct.net_device** %6, align 8
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = call i64 @IS_ERR(%struct.net_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = call i32 (...) @rtnl_unlock()
  %54 = load %struct.net_device*, %struct.net_device** %6, align 8
  %55 = call i32 @PTR_ERR(%struct.net_device* %54)
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %92

56:                                               ; preds = %43
  %57 = load i64, i64* @MACSEC_RXSC_ATTR_SCI, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = call i32 @nla_get_sci(%struct.nlattr* %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.net_device*, %struct.net_device** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call %struct.net_device* @create_rx_sc(%struct.net_device* %61, i32 %62)
  %64 = bitcast %struct.net_device* %63 to %struct.macsec_rx_sc*
  store %struct.macsec_rx_sc* %64, %struct.macsec_rx_sc** %9, align 8
  %65 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %9, align 8
  %66 = bitcast %struct.macsec_rx_sc* %65 to %struct.net_device*
  %67 = call i64 @IS_ERR(%struct.net_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %56
  %70 = call i32 (...) @rtnl_unlock()
  %71 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %9, align 8
  %72 = bitcast %struct.macsec_rx_sc* %71 to %struct.net_device*
  %73 = call i32 @PTR_ERR(%struct.net_device* %72)
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %92

74:                                               ; preds = %56
  %75 = load i64, i64* @MACSEC_RXSC_ATTR_ACTIVE, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = icmp ne %struct.nlattr* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %74
  %80 = load i64, i64* @MACSEC_RXSC_ATTR_ACTIVE, align 8
  %81 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %80
  %82 = load %struct.nlattr*, %struct.nlattr** %81, align 8
  %83 = call i32 @nla_get_u8(%struct.nlattr* %82)
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %9, align 8
  %89 = getelementptr inbounds %struct.macsec_rx_sc, %struct.macsec_rx_sc* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %79, %74
  %91 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %92

92:                                               ; preds = %90, %69, %52, %40, %34, %27
  %93 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @parse_rxsc_config(%struct.nlattr**, %struct.nlattr**) #2

declare dso_local i32 @validate_add_rxsc(%struct.nlattr**) #2

declare dso_local i32 @rtnl_lock(...) #2

declare dso_local %struct.net_device* @get_dev_from_nl(i32, %struct.nlattr**) #2

declare dso_local i32 @genl_info_net(%struct.genl_info*) #2

declare dso_local i64 @IS_ERR(%struct.net_device*) #2

declare dso_local i32 @rtnl_unlock(...) #2

declare dso_local i32 @PTR_ERR(%struct.net_device*) #2

declare dso_local i32 @nla_get_sci(%struct.nlattr*) #2

declare dso_local %struct.net_device* @create_rx_sc(%struct.net_device*, i32) #2

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
