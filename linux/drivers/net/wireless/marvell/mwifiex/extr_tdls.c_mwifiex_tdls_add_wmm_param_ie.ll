; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_tdls_add_wmm_param_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_tdls_add_wmm_param_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_wmm_param_ie = type { i32, i32*, i32, i32, i32, i32*, i64, i32 }

@__const.mwifiex_tdls_add_wmm_param_ie.ac_vi = private unnamed_addr constant [4 x i32] [i32 66, i32 67, i32 94, i32 0], align 16
@__const.mwifiex_tdls_add_wmm_param_ie.ac_vo = private unnamed_addr constant [4 x i32] [i32 98, i32 50, i32 47, i32 0], align 16
@__const.mwifiex_tdls_add_wmm_param_ie.ac_be = private unnamed_addr constant [4 x i32] [i32 3, i32 164, i32 0, i32 0], align 16
@__const.mwifiex_tdls_add_wmm_param_ie.ac_bk = private unnamed_addr constant [4 x i32] [i32 39, i32 164, i32 0, i32 0], align 16
@WLAN_EID_VENDOR_SPECIFIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwifiex_private*, %struct.sk_buff*)* @mwifiex_tdls_add_wmm_param_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_tdls_add_wmm_param_ie(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_wmm_param_ie*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca [4 x i32], align 16
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([4 x i32]* @__const.mwifiex_tdls_add_wmm_param_ie.ac_vi to i8*), i64 16, i1 false)
  %11 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([4 x i32]* @__const.mwifiex_tdls_add_wmm_param_ie.ac_vo to i8*), i64 16, i1 false)
  %12 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([4 x i32]* @__const.mwifiex_tdls_add_wmm_param_ie.ac_be to i8*), i64 16, i1 false)
  %13 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([4 x i32]* @__const.mwifiex_tdls_add_wmm_param_ie.ac_bk to i8*), i64 16, i1 false)
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call %struct.ieee80211_wmm_param_ie* @skb_put_zero(%struct.sk_buff* %14, i32 56)
  store %struct.ieee80211_wmm_param_ie* %15, %struct.ieee80211_wmm_param_ie** %5, align 8
  %16 = load i32, i32* @WLAN_EID_VENDOR_SPECIFIC, align 4
  %17 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %18 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 8
  %19 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %19, i32 0, i32 0
  store i32 54, i32* %20, align 8
  %21 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %22 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 80, i32* %28, align 4
  %29 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  store i32 242, i32* %32, align 4
  %33 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %34 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %33, i32 0, i32 2
  store i32 2, i32* %34, align 8
  %35 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %35, i32 0, i32 3
  store i32 1, i32* %36, align 4
  %37 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %37, i32 0, i32 4
  store i32 1, i32* %38, align 8
  %39 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %40 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %46 = call i32 @memcpy(i32* %44, i32* %45, i32 16)
  %47 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %52 = call i32 @memcpy(i32* %50, i32* %51, i32 16)
  %53 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %53, i32 0, i32 5
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %58 = call i32 @memcpy(i32* %56, i32* %57, i32 16)
  %59 = load %struct.ieee80211_wmm_param_ie*, %struct.ieee80211_wmm_param_ie** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211_wmm_param_ie, %struct.ieee80211_wmm_param_ie* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 3
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %64 = call i32 @memcpy(i32* %62, i32* %63, i32 16)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.ieee80211_wmm_param_ie* @skb_put_zero(%struct.sk_buff*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
