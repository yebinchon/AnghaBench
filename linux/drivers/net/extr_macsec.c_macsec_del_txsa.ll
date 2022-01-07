; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_del_txsa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_del_txsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.macsec_secy = type { i32 }
%struct.macsec_tx_sc = type { i32* }
%struct.macsec_tx_sa = type { i64 }

@MACSEC_SA_ATTR_MAX = common dso_local global i32 0, align 4
@MACSEC_ATTR_IFINDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @macsec_del_txsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_del_txsa(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.nlattr**, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.macsec_secy*, align 8
  %9 = alloca %struct.macsec_tx_sc*, align 8
  %10 = alloca %struct.macsec_tx_sa*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 0
  %17 = load %struct.nlattr**, %struct.nlattr*** %16, align 8
  store %struct.nlattr** %17, %struct.nlattr*** %6, align 8
  %18 = load i32, i32* @MACSEC_SA_ATTR_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca %struct.nlattr*, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %23 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %24 = load i64, i64* @MACSEC_ATTR_IFINDEX, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = icmp ne %struct.nlattr* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %71

31:                                               ; preds = %2
  %32 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %33 = call i64 @parse_sa_config(%struct.nlattr** %32, %struct.nlattr** %22)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %71

38:                                               ; preds = %31
  %39 = call i32 (...) @rtnl_lock()
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = call i32 @genl_info_net(%struct.genl_info* %40)
  %42 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %43 = call %struct.macsec_tx_sa* @get_txsa_from_nl(i32 %41, %struct.nlattr** %42, %struct.nlattr** %22, %struct.net_device** %7, %struct.macsec_secy** %8, %struct.macsec_tx_sc** %9, i64* %11)
  store %struct.macsec_tx_sa* %43, %struct.macsec_tx_sa** %10, align 8
  %44 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %45 = call i64 @IS_ERR(%struct.macsec_tx_sa* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = call i32 (...) @rtnl_unlock()
  %49 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %50 = call i32 @PTR_ERR(%struct.macsec_tx_sa* %49)
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %71

51:                                               ; preds = %38
  %52 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %53 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = call i32 (...) @rtnl_unlock()
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %71

60:                                               ; preds = %51
  %61 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %9, align 8
  %62 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @RCU_INIT_POINTER(i32 %66, i32* null)
  %68 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %69 = call i32 @clear_tx_sa(%struct.macsec_tx_sa* %68)
  %70 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %71

71:                                               ; preds = %60, %56, %47, %35, %28
  %72 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @parse_sa_config(%struct.nlattr**, %struct.nlattr**) #2

declare dso_local i32 @rtnl_lock(...) #2

declare dso_local %struct.macsec_tx_sa* @get_txsa_from_nl(i32, %struct.nlattr**, %struct.nlattr**, %struct.net_device**, %struct.macsec_secy**, %struct.macsec_tx_sc**, i64*) #2

declare dso_local i32 @genl_info_net(%struct.genl_info*) #2

declare dso_local i64 @IS_ERR(%struct.macsec_tx_sa*) #2

declare dso_local i32 @rtnl_unlock(...) #2

declare dso_local i32 @PTR_ERR(%struct.macsec_tx_sa*) #2

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #2

declare dso_local i32 @clear_tx_sa(%struct.macsec_tx_sa*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
