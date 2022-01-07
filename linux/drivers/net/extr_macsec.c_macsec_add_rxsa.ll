; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_add_rxsa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_add_rxsa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.nlattr** }
%struct.nlattr = type { i32 }
%struct.net_device = type { i32 }
%struct.macsec_secy = type { i64, i32 }
%struct.macsec_rx_sc = type { i32* }
%struct.macsec_rx_sa = type { i32, %struct.macsec_rx_sc*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MACSEC_RXSC_ATTR_MAX = common dso_local global i32 0, align 4
@MACSEC_SA_ATTR_MAX = common dso_local global i32 0, align 4
@MACSEC_ATTR_IFINDEX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MACSEC_SA_ATTR_AN = common dso_local global i64 0, align 8
@MACSEC_SA_ATTR_KEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"macsec: nl: add_rxsa: bad key length: %d != %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MACSEC_SA_ATTR_PN = common dso_local global i64 0, align 8
@MACSEC_SA_ATTR_ACTIVE = common dso_local global i64 0, align 8
@MACSEC_SA_ATTR_KEYID = common dso_local global i64 0, align 8
@MACSEC_KEYID_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @macsec_add_rxsa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macsec_add_rxsa(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.macsec_secy*, align 8
  %9 = alloca %struct.macsec_rx_sc*, align 8
  %10 = alloca %struct.macsec_rx_sa*, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %17, i32 0, i32 0
  %19 = load %struct.nlattr**, %struct.nlattr*** %18, align 8
  store %struct.nlattr** %19, %struct.nlattr*** %7, align 8
  %20 = load i32, i32* @MACSEC_RXSC_ATTR_MAX, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %12, align 8
  %24 = alloca %struct.nlattr*, i64 %22, align 16
  store i64 %22, i64* %13, align 8
  %25 = load i32, i32* @MACSEC_SA_ATTR_MAX, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = alloca %struct.nlattr*, i64 %27, align 16
  store i64 %27, i64* %14, align 8
  %29 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %30 = load i64, i64* @MACSEC_ATTR_IFINDEX, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = icmp ne %struct.nlattr* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %196

37:                                               ; preds = %2
  %38 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %39 = call i64 @parse_sa_config(%struct.nlattr** %38, %struct.nlattr** %28)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %196

44:                                               ; preds = %37
  %45 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %46 = call i64 @parse_rxsc_config(%struct.nlattr** %45, %struct.nlattr** %24)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %196

51:                                               ; preds = %44
  %52 = call i32 @validate_add_rxsa(%struct.nlattr** %28)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %196

57:                                               ; preds = %51
  %58 = call i32 (...) @rtnl_lock()
  %59 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %60 = call i32 @genl_info_net(%struct.genl_info* %59)
  %61 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %62 = call %struct.macsec_rx_sc* @get_rxsc_from_nl(i32 %60, %struct.nlattr** %61, %struct.nlattr** %24, %struct.net_device** %6, %struct.macsec_secy** %8)
  store %struct.macsec_rx_sc* %62, %struct.macsec_rx_sc** %9, align 8
  %63 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %9, align 8
  %64 = call i64 @IS_ERR(%struct.macsec_rx_sc* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = call i32 (...) @rtnl_unlock()
  %68 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %9, align 8
  %69 = call i32 @PTR_ERR(%struct.macsec_rx_sc* %68)
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %196

70:                                               ; preds = %57
  %71 = load i64, i64* @MACSEC_SA_ATTR_AN, align 8
  %72 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %71
  %73 = load %struct.nlattr*, %struct.nlattr** %72, align 8
  %74 = call zeroext i8 @nla_get_u8(%struct.nlattr* %73)
  store i8 %74, i8* %11, align 1
  %75 = load i64, i64* @MACSEC_SA_ATTR_KEY, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = call i64 @nla_len(%struct.nlattr* %77)
  %79 = load %struct.macsec_secy*, %struct.macsec_secy** %8, align 8
  %80 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %70
  %84 = load i64, i64* @MACSEC_SA_ATTR_KEY, align 8
  %85 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %84
  %86 = load %struct.nlattr*, %struct.nlattr** %85, align 8
  %87 = call i64 @nla_len(%struct.nlattr* %86)
  %88 = load %struct.macsec_secy*, %struct.macsec_secy** %8, align 8
  %89 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @pr_notice(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %87, i64 %90)
  %92 = call i32 (...) @rtnl_unlock()
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %196

95:                                               ; preds = %70
  %96 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %9, align 8
  %97 = getelementptr inbounds %struct.macsec_rx_sc, %struct.macsec_rx_sc* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i8, i8* %11, align 1
  %100 = zext i8 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call %struct.macsec_rx_sa* @rtnl_dereference(i32 %102)
  store %struct.macsec_rx_sa* %103, %struct.macsec_rx_sa** %10, align 8
  %104 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %105 = icmp ne %struct.macsec_rx_sa* %104, null
  br i1 %105, label %106, label %110

106:                                              ; preds = %95
  %107 = call i32 (...) @rtnl_unlock()
  %108 = load i32, i32* @EBUSY, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %196

110:                                              ; preds = %95
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call %struct.macsec_rx_sa* @kmalloc(i32 32, i32 %111)
  store %struct.macsec_rx_sa* %112, %struct.macsec_rx_sa** %10, align 8
  %113 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %114 = icmp ne %struct.macsec_rx_sa* %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %110
  %116 = call i32 (...) @rtnl_unlock()
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %196

119:                                              ; preds = %110
  %120 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %121 = load i64, i64* @MACSEC_SA_ATTR_KEY, align 8
  %122 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %121
  %123 = load %struct.nlattr*, %struct.nlattr** %122, align 8
  %124 = call i32 @nla_data(%struct.nlattr* %123)
  %125 = load %struct.macsec_secy*, %struct.macsec_secy** %8, align 8
  %126 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.macsec_secy*, %struct.macsec_secy** %8, align 8
  %129 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @init_rx_sa(%struct.macsec_rx_sa* %120, i32 %124, i64 %127, i32 %130)
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %119
  %135 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %136 = call i32 @kfree(%struct.macsec_rx_sa* %135)
  %137 = call i32 (...) @rtnl_unlock()
  %138 = load i32, i32* %15, align 4
  store i32 %138, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %196

139:                                              ; preds = %119
  %140 = load i64, i64* @MACSEC_SA_ATTR_PN, align 8
  %141 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %140
  %142 = load %struct.nlattr*, %struct.nlattr** %141, align 8
  %143 = icmp ne %struct.nlattr* %142, null
  br i1 %143, label %144, label %157

144:                                              ; preds = %139
  %145 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %146 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %145, i32 0, i32 3
  %147 = call i32 @spin_lock_bh(i32* %146)
  %148 = load i64, i64* @MACSEC_SA_ATTR_PN, align 8
  %149 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %148
  %150 = load %struct.nlattr*, %struct.nlattr** %149, align 8
  %151 = call i32 @nla_get_u32(%struct.nlattr* %150)
  %152 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %153 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 8
  %154 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %155 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %154, i32 0, i32 3
  %156 = call i32 @spin_unlock_bh(i32* %155)
  br label %157

157:                                              ; preds = %144, %139
  %158 = load i64, i64* @MACSEC_SA_ATTR_ACTIVE, align 8
  %159 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %158
  %160 = load %struct.nlattr*, %struct.nlattr** %159, align 8
  %161 = icmp ne %struct.nlattr* %160, null
  br i1 %161, label %162, label %173

162:                                              ; preds = %157
  %163 = load i64, i64* @MACSEC_SA_ATTR_ACTIVE, align 8
  %164 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %163
  %165 = load %struct.nlattr*, %struct.nlattr** %164, align 8
  %166 = call zeroext i8 @nla_get_u8(%struct.nlattr* %165)
  %167 = icmp ne i8 %166, 0
  %168 = xor i1 %167, true
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %172 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  br label %173

173:                                              ; preds = %162, %157
  %174 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %175 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i64, i64* @MACSEC_SA_ATTR_KEYID, align 8
  %179 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %178
  %180 = load %struct.nlattr*, %struct.nlattr** %179, align 8
  %181 = load i32, i32* @MACSEC_KEYID_LEN, align 4
  %182 = call i32 @nla_memcpy(i32 %177, %struct.nlattr* %180, i32 %181)
  %183 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %9, align 8
  %184 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %185 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %184, i32 0, i32 1
  store %struct.macsec_rx_sc* %183, %struct.macsec_rx_sc** %185, align 8
  %186 = load %struct.macsec_rx_sc*, %struct.macsec_rx_sc** %9, align 8
  %187 = getelementptr inbounds %struct.macsec_rx_sc, %struct.macsec_rx_sc* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i8, i8* %11, align 1
  %190 = zext i8 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %10, align 8
  %194 = call i32 @rcu_assign_pointer(i32 %192, %struct.macsec_rx_sa* %193)
  %195 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %196

196:                                              ; preds = %173, %134, %115, %106, %83, %66, %54, %48, %41, %34
  %197 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %197)
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @parse_sa_config(%struct.nlattr**, %struct.nlattr**) #2

declare dso_local i64 @parse_rxsc_config(%struct.nlattr**, %struct.nlattr**) #2

declare dso_local i32 @validate_add_rxsa(%struct.nlattr**) #2

declare dso_local i32 @rtnl_lock(...) #2

declare dso_local %struct.macsec_rx_sc* @get_rxsc_from_nl(i32, %struct.nlattr**, %struct.nlattr**, %struct.net_device**, %struct.macsec_secy**) #2

declare dso_local i32 @genl_info_net(%struct.genl_info*) #2

declare dso_local i64 @IS_ERR(%struct.macsec_rx_sc*) #2

declare dso_local i32 @rtnl_unlock(...) #2

declare dso_local i32 @PTR_ERR(%struct.macsec_rx_sc*) #2

declare dso_local zeroext i8 @nla_get_u8(%struct.nlattr*) #2

declare dso_local i64 @nla_len(%struct.nlattr*) #2

declare dso_local i32 @pr_notice(i8*, i64, i64) #2

declare dso_local %struct.macsec_rx_sa* @rtnl_dereference(i32) #2

declare dso_local %struct.macsec_rx_sa* @kmalloc(i32, i32) #2

declare dso_local i32 @init_rx_sa(%struct.macsec_rx_sa*, i32, i64, i32) #2

declare dso_local i32 @nla_data(%struct.nlattr*) #2

declare dso_local i32 @kfree(%struct.macsec_rx_sa*) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @nla_memcpy(i32, %struct.nlattr*, i32) #2

declare dso_local i32 @rcu_assign_pointer(i32, %struct.macsec_rx_sa*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
