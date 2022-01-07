; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_upd_txsa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_upd_txsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.macsec_secy = type { i32 }
%struct.macsec_tx_sc = type { i64 }
%struct.macsec_tx_sa = type { i32, i32, i32 }

@MACSEC_SA_ATTR_MAX = common dso_local global i32 0, align 4
@MACSEC_ATTR_IFINDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MACSEC_SA_ATTR_PN = common dso_local global i64 0, align 8
@MACSEC_SA_ATTR_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @macsec_upd_txsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_upd_txsa(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
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
  br label %101

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
  br label %101

38:                                               ; preds = %31
  %39 = call i32 @validate_upd_sa(%struct.nlattr** %22)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %101

44:                                               ; preds = %38
  %45 = call i32 (...) @rtnl_lock()
  %46 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %47 = call i32 @genl_info_net(%struct.genl_info* %46)
  %48 = load %struct.nlattr**, %struct.nlattr*** %6, align 8
  %49 = call %struct.macsec_tx_sa* @get_txsa_from_nl(i32 %47, %struct.nlattr** %48, %struct.nlattr** %22, %struct.net_device** %7, %struct.macsec_secy** %8, %struct.macsec_tx_sc** %9, i64* %11)
  store %struct.macsec_tx_sa* %49, %struct.macsec_tx_sa** %10, align 8
  %50 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %51 = call i64 @IS_ERR(%struct.macsec_tx_sa* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = call i32 (...) @rtnl_unlock()
  %55 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %56 = call i32 @PTR_ERR(%struct.macsec_tx_sa* %55)
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %101

57:                                               ; preds = %44
  %58 = load i64, i64* @MACSEC_SA_ATTR_PN, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = icmp ne %struct.nlattr* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %64 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %63, i32 0, i32 1
  %65 = call i32 @spin_lock_bh(i32* %64)
  %66 = load i64, i64* @MACSEC_SA_ATTR_PN, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = call i32 @nla_get_u32(%struct.nlattr* %68)
  %70 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %71 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %73 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %72, i32 0, i32 1
  %74 = call i32 @spin_unlock_bh(i32* %73)
  br label %75

75:                                               ; preds = %62, %57
  %76 = load i64, i64* @MACSEC_SA_ATTR_ACTIVE, align 8
  %77 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %76
  %78 = load %struct.nlattr*, %struct.nlattr** %77, align 8
  %79 = icmp ne %struct.nlattr* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i64, i64* @MACSEC_SA_ATTR_ACTIVE, align 8
  %82 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %81
  %83 = load %struct.nlattr*, %struct.nlattr** %82, align 8
  %84 = call i32 @nla_get_u8(%struct.nlattr* %83)
  %85 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %86 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %80, %75
  %88 = load i64, i64* %11, align 8
  %89 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %9, align 8
  %90 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %95 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.macsec_secy*, %struct.macsec_secy** %8, align 8
  %98 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %99

99:                                               ; preds = %93, %87
  %100 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %101

101:                                              ; preds = %99, %53, %41, %35, %28
  %102 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %102)
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @parse_sa_config(%struct.nlattr**, %struct.nlattr**) #2

declare dso_local i32 @validate_upd_sa(%struct.nlattr**) #2

declare dso_local i32 @rtnl_lock(...) #2

declare dso_local %struct.macsec_tx_sa* @get_txsa_from_nl(i32, %struct.nlattr**, %struct.nlattr**, %struct.net_device**, %struct.macsec_secy**, %struct.macsec_tx_sc**, i64*) #2

declare dso_local i32 @genl_info_net(%struct.genl_info*) #2

declare dso_local i64 @IS_ERR(%struct.macsec_tx_sa*) #2

declare dso_local i32 @rtnl_unlock(...) #2

declare dso_local i32 @PTR_ERR(%struct.macsec_tx_sa*) #2

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
