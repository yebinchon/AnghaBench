; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_get_radio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_get_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mac80211_hwsim_data = type { i32, %struct.TYPE_3__*, i32, i32, i32, i64* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.netlink_callback = type { i32 }
%struct.hwsim_new_radio_params = type { i32, i32, i32, i32, i32, i32, i64* }

@EMSGSIZE = common dso_local global i32 0, align 4
@hwsim_genl_family = common dso_local global i32 0, align 4
@HWSIM_CMD_GET_RADIO = common dso_local global i32 0, align 4
@REGULATORY_STRICT_REG = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.mac80211_hwsim_data*, i32, i32, %struct.netlink_callback*, i32)* @mac80211_hwsim_get_radio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac80211_hwsim_get_radio(%struct.sk_buff* %0, %struct.mac80211_hwsim_data* %1, i32 %2, i32 %3, %struct.netlink_callback* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.mac80211_hwsim_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.netlink_callback*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.hwsim_new_radio_params, align 8
  %16 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store %struct.mac80211_hwsim_data* %1, %struct.mac80211_hwsim_data** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.netlink_callback* %4, %struct.netlink_callback** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = bitcast %struct.hwsim_new_radio_params* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 32, i1 false)
  %18 = load i32, i32* @EMSGSIZE, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %16, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* @HWSIM_CMD_GET_RADIO, align 4
  %25 = call i8* @genlmsg_put(%struct.sk_buff* %20, i32 %21, i32 %22, i32* @hwsim_genl_family, i32 %23, i32 %24)
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** %14, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %6
  %29 = load i32, i32* @EMSGSIZE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %123

31:                                               ; preds = %6
  %32 = load %struct.netlink_callback*, %struct.netlink_callback** %12, align 8
  %33 = icmp ne %struct.netlink_callback* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.netlink_callback*, %struct.netlink_callback** %12, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = call i32 @genl_dump_check_consistent(%struct.netlink_callback* %35, i8* %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %9, align 8
  %40 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %39, i32 0, i32 5
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %9, align 8
  %47 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %46, i32 0, i32 5
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %9, align 8
  %54 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %53, i32 0, i32 5
  %55 = load i64*, i64** %54, align 8
  %56 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %15, i32 0, i32 6
  store i64* %55, i64** %56, align 8
  br label %57

57:                                               ; preds = %52, %45, %38
  %58 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %9, align 8
  %59 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @REGULATORY_STRICT_REG, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %15, i32 0, i32 0
  store i32 %70, i32* %71, align 8
  %72 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %9, align 8
  %73 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %72, i32 0, i32 1
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @NL80211_IFTYPE_P2P_DEVICE, align 4
  %80 = call i32 @BIT(i32 %79)
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %15, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %9, align 8
  %88 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %15, i32 0, i32 5
  store i32 %89, i32* %90, align 4
  %91 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %9, align 8
  %92 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %15, i32 0, i32 4
  store i32 %93, i32* %94, align 8
  %95 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %9, align 8
  %96 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %15, i32 0, i32 3
  store i32 %97, i32* %98, align 4
  %99 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %9, align 8
  %100 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = call i32 @wiphy_name(%struct.TYPE_4__* %103)
  %105 = getelementptr inbounds %struct.hwsim_new_radio_params, %struct.hwsim_new_radio_params* %15, i32 0, i32 2
  store i32 %104, i32* %105, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %107 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %9, align 8
  %108 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @append_radio_msg(%struct.sk_buff* %106, i32 %109, %struct.hwsim_new_radio_params* %15)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %57
  br label %118

114:                                              ; preds = %57
  %115 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 @genlmsg_end(%struct.sk_buff* %115, i8* %116)
  store i32 0, i32* %7, align 4
  br label %123

118:                                              ; preds = %113
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = load i8*, i8** %14, align 8
  %121 = call i32 @genlmsg_cancel(%struct.sk_buff* %119, i8* %120)
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %7, align 4
  br label %123

123:                                              ; preds = %118, %114, %28
  %124 = load i32, i32* %7, align 4
  ret i32 %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @genl_dump_check_consistent(%struct.netlink_callback*, i8*) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @wiphy_name(%struct.TYPE_4__*) #2

declare dso_local i32 @append_radio_msg(%struct.sk_buff*, i32, %struct.hwsim_new_radio_params*) #2

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #2

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
