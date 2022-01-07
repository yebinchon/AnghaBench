; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_add_txsa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_add_txsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.macsec_secy = type { i64, i32, i32, %struct.macsec_tx_sc }
%struct.macsec_tx_sc = type { i8, i32* }
%struct.macsec_tx_sa = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.macsec_secy }

@MACSEC_SA_ATTR_MAX = common dso_local global i32 0, align 4
@MACSEC_ATTR_IFINDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MACSEC_SA_ATTR_AN = common dso_local global i64 0, align 8
@MACSEC_SA_ATTR_KEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"macsec: nl: add_txsa: bad key length: %d != %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MACSEC_SA_ATTR_KEYID = common dso_local global i64 0, align 8
@MACSEC_KEYID_LEN = common dso_local global i32 0, align 4
@MACSEC_SA_ATTR_PN = common dso_local global i64 0, align 8
@MACSEC_SA_ATTR_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @macsec_add_txsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_add_txsa(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.macsec_secy*, align 8
  %9 = alloca %struct.macsec_tx_sc*, align 8
  %10 = alloca %struct.macsec_tx_sa*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 0
  %18 = load %struct.nlattr**, %struct.nlattr*** %17, align 8
  store %struct.nlattr** %18, %struct.nlattr*** %7, align 8
  %19 = load i32, i32* @MACSEC_SA_ATTR_MAX, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca %struct.nlattr*, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %25 = load i64, i64* @MACSEC_ATTR_IFINDEX, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = icmp ne %struct.nlattr* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %196

32:                                               ; preds = %2
  %33 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %34 = call i64 @parse_sa_config(%struct.nlattr** %33, %struct.nlattr** %23)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %196

39:                                               ; preds = %32
  %40 = call i32 @validate_add_txsa(%struct.nlattr** %23)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %196

45:                                               ; preds = %39
  %46 = call i32 (...) @rtnl_lock()
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = call i32 @genl_info_net(%struct.genl_info* %47)
  %49 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %50 = call %struct.net_device* @get_dev_from_nl(i32 %48, %struct.nlattr** %49)
  store %struct.net_device* %50, %struct.net_device** %6, align 8
  %51 = load %struct.net_device*, %struct.net_device** %6, align 8
  %52 = call i64 @IS_ERR(%struct.net_device* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = call i32 (...) @rtnl_unlock()
  %56 = load %struct.net_device*, %struct.net_device** %6, align 8
  %57 = call i32 @PTR_ERR(%struct.net_device* %56)
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %196

58:                                               ; preds = %45
  %59 = load %struct.net_device*, %struct.net_device** %6, align 8
  %60 = call %struct.TYPE_4__* @macsec_priv(%struct.net_device* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store %struct.macsec_secy* %61, %struct.macsec_secy** %8, align 8
  %62 = load %struct.macsec_secy*, %struct.macsec_secy** %8, align 8
  %63 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %62, i32 0, i32 3
  store %struct.macsec_tx_sc* %63, %struct.macsec_tx_sc** %9, align 8
  %64 = load i64, i64* @MACSEC_SA_ATTR_AN, align 8
  %65 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %64
  %66 = load %struct.nlattr*, %struct.nlattr** %65, align 8
  %67 = call zeroext i8 @nla_get_u8(%struct.nlattr* %66)
  store i8 %67, i8* %11, align 1
  %68 = load i64, i64* @MACSEC_SA_ATTR_KEY, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = call i64 @nla_len(%struct.nlattr* %70)
  %72 = load %struct.macsec_secy*, %struct.macsec_secy** %8, align 8
  %73 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %71, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %58
  %77 = load i64, i64* @MACSEC_SA_ATTR_KEY, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = call i64 @nla_len(%struct.nlattr* %79)
  %81 = load %struct.macsec_secy*, %struct.macsec_secy** %8, align 8
  %82 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @pr_notice(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %80, i64 %83)
  %85 = call i32 (...) @rtnl_unlock()
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %196

88:                                               ; preds = %58
  %89 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %9, align 8
  %90 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i8, i8* %11, align 1
  %93 = zext i8 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.macsec_tx_sa* @rtnl_dereference(i32 %95)
  store %struct.macsec_tx_sa* %96, %struct.macsec_tx_sa** %10, align 8
  %97 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %98 = icmp ne %struct.macsec_tx_sa* %97, null
  br i1 %98, label %99, label %103

99:                                               ; preds = %88
  %100 = call i32 (...) @rtnl_unlock()
  %101 = load i32, i32* @EBUSY, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %196

103:                                              ; preds = %88
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call %struct.macsec_tx_sa* @kmalloc(i32 16, i32 %104)
  store %struct.macsec_tx_sa* %105, %struct.macsec_tx_sa** %10, align 8
  %106 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %107 = icmp ne %struct.macsec_tx_sa* %106, null
  br i1 %107, label %112, label %108

108:                                              ; preds = %103
  %109 = call i32 (...) @rtnl_unlock()
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %196

112:                                              ; preds = %103
  %113 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %114 = load i64, i64* @MACSEC_SA_ATTR_KEY, align 8
  %115 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %114
  %116 = load %struct.nlattr*, %struct.nlattr** %115, align 8
  %117 = call i32 @nla_data(%struct.nlattr* %116)
  %118 = load %struct.macsec_secy*, %struct.macsec_secy** %8, align 8
  %119 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.macsec_secy*, %struct.macsec_secy** %8, align 8
  %122 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @init_tx_sa(%struct.macsec_tx_sa* %113, i32 %117, i64 %120, i32 %123)
  store i32 %124, i32* %14, align 4
  %125 = load i32, i32* %14, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %112
  %128 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %129 = call i32 @kfree(%struct.macsec_tx_sa* %128)
  %130 = call i32 (...) @rtnl_unlock()
  %131 = load i32, i32* %14, align 4
  store i32 %131, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %196

132:                                              ; preds = %112
  %133 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %134 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* @MACSEC_SA_ATTR_KEYID, align 8
  %138 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %137
  %139 = load %struct.nlattr*, %struct.nlattr** %138, align 8
  %140 = load i32, i32* @MACSEC_KEYID_LEN, align 4
  %141 = call i32 @nla_memcpy(i32 %136, %struct.nlattr* %139, i32 %140)
  %142 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %143 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %142, i32 0, i32 1
  %144 = call i32 @spin_lock_bh(i32* %143)
  %145 = load i64, i64* @MACSEC_SA_ATTR_PN, align 8
  %146 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %145
  %147 = load %struct.nlattr*, %struct.nlattr** %146, align 8
  %148 = call i32 @nla_get_u32(%struct.nlattr* %147)
  %149 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %150 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 4
  %151 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %152 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %151, i32 0, i32 1
  %153 = call i32 @spin_unlock_bh(i32* %152)
  %154 = load i64, i64* @MACSEC_SA_ATTR_ACTIVE, align 8
  %155 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %154
  %156 = load %struct.nlattr*, %struct.nlattr** %155, align 8
  %157 = icmp ne %struct.nlattr* %156, null
  br i1 %157, label %158, label %169

158:                                              ; preds = %132
  %159 = load i64, i64* @MACSEC_SA_ATTR_ACTIVE, align 8
  %160 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %159
  %161 = load %struct.nlattr*, %struct.nlattr** %160, align 8
  %162 = call zeroext i8 @nla_get_u8(%struct.nlattr* %161)
  %163 = icmp ne i8 %162, 0
  %164 = xor i1 %163, true
  %165 = xor i1 %164, true
  %166 = zext i1 %165 to i32
  %167 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %168 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %167, i32 0, i32 0
  store i32 %166, i32* %168, align 4
  br label %169

169:                                              ; preds = %158, %132
  %170 = load i8, i8* %11, align 1
  %171 = zext i8 %170 to i32
  %172 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %9, align 8
  %173 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %172, i32 0, i32 0
  %174 = load i8, i8* %173, align 8
  %175 = zext i8 %174 to i32
  %176 = icmp eq i32 %171, %175
  br i1 %176, label %177, label %185

177:                                              ; preds = %169
  %178 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %179 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %177
  %183 = load %struct.macsec_secy*, %struct.macsec_secy** %8, align 8
  %184 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %183, i32 0, i32 1
  store i32 1, i32* %184, align 8
  br label %185

185:                                              ; preds = %182, %177, %169
  %186 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %9, align 8
  %187 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = load i8, i8* %11, align 1
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %10, align 8
  %194 = call i32 @rcu_assign_pointer(i32 %192, %struct.macsec_tx_sa* %193)
  %195 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %196

196:                                              ; preds = %185, %127, %108, %99, %76, %54, %42, %36, %29
  %197 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %197)
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @parse_sa_config(%struct.nlattr**, %struct.nlattr**) #2

declare dso_local i32 @validate_add_txsa(%struct.nlattr**) #2

declare dso_local i32 @rtnl_lock(...) #2

declare dso_local %struct.net_device* @get_dev_from_nl(i32, %struct.nlattr**) #2

declare dso_local i32 @genl_info_net(%struct.genl_info*) #2

declare dso_local i64 @IS_ERR(%struct.net_device*) #2

declare dso_local i32 @rtnl_unlock(...) #2

declare dso_local i32 @PTR_ERR(%struct.net_device*) #2

declare dso_local %struct.TYPE_4__* @macsec_priv(%struct.net_device*) #2

declare dso_local zeroext i8 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i64 @nla_len(%struct.nlattr*) #2

declare dso_local i32 @pr_notice(i8*, i64, i64) #2

declare dso_local %struct.macsec_tx_sa* @rtnl_dereference(i32) #2

declare dso_local %struct.macsec_tx_sa* @kmalloc(i32, i32) #2

declare dso_local i32 @init_tx_sa(%struct.macsec_tx_sa*, i32, i64, i32) #2

declare dso_local i32 @nla_data(%struct.nlattr*) #2

declare dso_local i32 @kfree(%struct.macsec_tx_sa*) #2

declare dso_local i32 @nla_memcpy(i32, %struct.nlattr*, i32) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @rcu_assign_pointer(i32, %struct.macsec_tx_sa*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
