; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11ac.c_mwifiex_fill_vht_cap_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11ac.c_mwifiex_fill_vht_cap_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i32 }
%struct.ieee80211_vht_cap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }

@IEEE80211_VHT_MCS_NOT_SUPPORTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_fill_vht_cap_tlv(%struct.mwifiex_private* %0, %struct.ieee80211_vht_cap* %1, i32 %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.ieee80211_vht_cap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mwifiex_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.ieee80211_vht_cap* %1, %struct.ieee80211_vht_cap** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %16 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %15, i32 0, i32 0
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %16, align 8
  store %struct.mwifiex_adapter* %17, %struct.mwifiex_adapter** %7, align 8
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %19 = load %struct.ieee80211_vht_cap*, %struct.ieee80211_vht_cap** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @mwifiex_fill_vht_cap_info(%struct.mwifiex_private* %18, %struct.ieee80211_vht_cap* %19, i32 %20)
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @GET_DEVRXMCSMAP(i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = load %struct.ieee80211_vht_cap*, %struct.ieee80211_vht_cap** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @le16_to_cpu(i8* %29)
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %13, align 4
  br label %31

31:                                               ; preds = %61, %3
  %32 = load i32, i32* %13, align 4
  %33 = icmp sle i32 %32, 8
  br i1 %33, label %34, label %64

34:                                               ; preds = %31
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @GET_VHTNSSMCS(i32 %35, i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %13, align 4
  %40 = call i32 @GET_VHTNSSMCS(i32 %38, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44, %34
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %52 = call i32 @SET_VHTNSSMCS(i32 %49, i32 %50, i32 %51)
  br label %60

53:                                               ; preds = %44
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @min(i32 %56, i32 %57)
  %59 = call i32 @SET_VHTNSSMCS(i32 %54, i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %53, %48
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %13, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %13, align 4
  br label %31

64:                                               ; preds = %31
  %65 = load i32, i32* %10, align 4
  %66 = call i8* @cpu_to_le16(i32 %65)
  %67 = load %struct.ieee80211_vht_cap*, %struct.ieee80211_vht_cap** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  store i8* %66, i8** %69, align 8
  %70 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @mwifiex_convert_mcsmap_to_maxrate(%struct.mwifiex_private* %70, i32 %71, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %14, align 4
  %75 = call i8* @cpu_to_le16(i32 %74)
  %76 = load %struct.ieee80211_vht_cap*, %struct.ieee80211_vht_cap** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i8* %75, i8** %78, align 8
  %79 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %7, align 8
  %80 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @GET_DEVTXMCSMAP(i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load %struct.ieee80211_vht_cap*, %struct.ieee80211_vht_cap** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @le16_to_cpu(i8* %86)
  store i32 %87, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %13, align 4
  br label %88

88:                                               ; preds = %118, %64
  %89 = load i32, i32* %13, align 4
  %90 = icmp sle i32 %89, 8
  br i1 %90, label %91, label %121

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %13, align 4
  %94 = call i32 @GET_VHTNSSMCS(i32 %92, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @GET_VHTNSSMCS(i32 %95, i32 %96)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %105, label %101

101:                                              ; preds = %91
  %102 = load i32, i32* %12, align 4
  %103 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %101, %91
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @IEEE80211_VHT_MCS_NOT_SUPPORTED, align 4
  %109 = call i32 @SET_VHTNSSMCS(i32 %106, i32 %107, i32 %108)
  br label %117

110:                                              ; preds = %101
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @min(i32 %113, i32 %114)
  %116 = call i32 @SET_VHTNSSMCS(i32 %111, i32 %112, i32 %115)
  br label %117

117:                                              ; preds = %110, %105
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  br label %88

121:                                              ; preds = %88
  %122 = load i32, i32* %10, align 4
  %123 = call i8* @cpu_to_le16(i32 %122)
  %124 = load %struct.ieee80211_vht_cap*, %struct.ieee80211_vht_cap** %5, align 8
  %125 = getelementptr inbounds %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  store i8* %123, i8** %126, align 8
  %127 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @mwifiex_convert_mcsmap_to_maxrate(%struct.mwifiex_private* %127, i32 %128, i32 %129)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = call i8* @cpu_to_le16(i32 %131)
  %133 = load %struct.ieee80211_vht_cap*, %struct.ieee80211_vht_cap** %5, align 8
  %134 = getelementptr inbounds %struct.ieee80211_vht_cap, %struct.ieee80211_vht_cap* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i8* %132, i8** %135, align 8
  ret void
}

declare dso_local i32 @mwifiex_fill_vht_cap_info(%struct.mwifiex_private*, %struct.ieee80211_vht_cap*, i32) #1

declare dso_local i32 @GET_DEVRXMCSMAP(i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

declare dso_local i32 @GET_VHTNSSMCS(i32, i32) #1

declare dso_local i32 @SET_VHTNSSMCS(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @mwifiex_convert_mcsmap_to_maxrate(%struct.mwifiex_private*, i32, i32) #1

declare dso_local i32 @GET_DEVTXMCSMAP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
