; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_main.c_p54_init_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_main.c_p54_init_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.p54_common* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.p54_common = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32, %struct.ieee80211_hw* }
%struct.TYPE_3__ = type { i32 }

@p54_ops = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@REPORTS_TX_ACK_STATUS = common dso_local global i32 0, align 4
@MFP_CAPABLE = common dso_local global i32 0, align 4
@PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@SUPPORTS_PS = common dso_local global i32 0, align 4
@RX_INCLUDES_FCS = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@P54_QUEUE_BEACON = common dso_local global i64 0, align 8
@P54_QUEUE_FWSCAN = common dso_local global i64 0, align 8
@P54_QUEUE_MGMT = common dso_local global i64 0, align 8
@P54_QUEUE_CAB = common dso_local global i64 0, align 8
@P54_QUEUE_DATA = common dso_local global i64 0, align 8
@WIPHY_FLAG_PS_ON_BY_DEFAULT = common dso_local global i32 0, align 4
@p54_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_hw* @p54_init_common(i64 %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.p54_common*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = call %struct.ieee80211_hw* @ieee80211_alloc_hw(i64 %6, i32* @p54_ops)
  store %struct.ieee80211_hw* %7, %struct.ieee80211_hw** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = icmp ne %struct.ieee80211_hw* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.ieee80211_hw* null, %struct.ieee80211_hw** %2, align 8
  br label %146

11:                                               ; preds = %1
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 5
  %14 = load %struct.p54_common*, %struct.p54_common** %13, align 8
  store %struct.p54_common* %14, %struct.p54_common** %5, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %17 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %16, i32 0, i32 16
  store %struct.ieee80211_hw* %15, %struct.ieee80211_hw** %17, align 8
  %18 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  %19 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %20 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %19, i32 0, i32 15
  store i32 %18, i32* %20, align 8
  %21 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %22 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %21, i32 0, i32 0
  store i32 351, i32* %22, align 8
  %23 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %24 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %23, i32 0, i32 14
  %25 = call i32 @spin_lock_init(i32* %24)
  %26 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %27 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %26, i32 0, i32 13
  %28 = call i32 @skb_queue_head_init(i32* %27)
  %29 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %30 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %29, i32 0, i32 12
  %31 = call i32 @skb_queue_head_init(i32* %30)
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %33 = load i32, i32* @REPORTS_TX_ACK_STATUS, align 4
  %34 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %32, i32 %33)
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %36 = load i32, i32* @MFP_CAPABLE, align 4
  %37 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %35, i32 %36)
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %39 = load i32, i32* @PS_NULLFUNC_STACK, align 4
  %40 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %38, i32 %39)
  %41 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %42 = load i32, i32* @SUPPORTS_PS, align 4
  %43 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %41, i32 %42)
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %45 = load i32, i32* @RX_INCLUDES_FCS, align 4
  %46 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %44, i32 %45)
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %48 = load i32, i32* @SIGNAL_DBM, align 4
  %49 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %47, i32 %48)
  %50 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %51 = call i32 @BIT(i32 %50)
  %52 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = or i32 %51, %53
  %55 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = or i32 %54, %56
  %58 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = or i32 %57, %59
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %61, i32 0, i32 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 %60, i32* %64, align 4
  %65 = call i32 @cpu_to_le32(i32 0)
  %66 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %67 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %66, i32 0, i32 11
  store i32 %65, i32* %67, align 8
  %68 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %69 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %68, i32 0, i32 10
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i64, i64* @P54_QUEUE_BEACON, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %75 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %74, i32 0, i32 10
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i64, i64* @P54_QUEUE_FWSCAN, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  %80 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %81 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %80, i32 0, i32 10
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i64, i64* @P54_QUEUE_MGMT, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 3, i32* %85, align 4
  %86 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %87 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %86, i32 0, i32 10
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i64, i64* @P54_QUEUE_CAB, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  store i32 3, i32* %91, align 4
  %92 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %93 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %92, i32 0, i32 10
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i64, i64* @P54_QUEUE_DATA, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32 5, i32* %97, align 4
  %98 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %99 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %101 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %100, i32 0, i32 1
  store i32 -94, i32* %101, align 4
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %103 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %102, i32 0, i32 1
  store i32 4, i32* %103, align 4
  %104 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %105 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %104, i32 0, i32 2
  store i32 7, i32* %105, align 8
  %106 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %107 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %106, i32 0, i32 3
  store i32 12, i32* %107, align 4
  %108 = load i32, i32* @WIPHY_FLAG_PS_ON_BY_DEFAULT, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %111 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %110, i32 0, i32 4
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %109
  store i32 %115, i32* %113, align 4
  %116 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %117 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %116, i32 0, i32 9
  %118 = call i32 @mutex_init(i32* %117)
  %119 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %120 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %119, i32 0, i32 8
  %121 = call i32 @mutex_init(i32* %120)
  %122 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %123 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %122, i32 0, i32 7
  %124 = call i32 @init_completion(i32* %123)
  %125 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %126 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %125, i32 0, i32 6
  %127 = call i32 @init_completion(i32* %126)
  %128 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %129 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %128, i32 0, i32 5
  %130 = call i32 @init_completion(i32* %129)
  %131 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %132 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %131, i32 0, i32 4
  %133 = load i32, i32* @p54_work, align 4
  %134 = call i32 @INIT_DELAYED_WORK(i32* %132, i32 %133)
  %135 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %136 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @eth_broadcast_addr(i32 %139)
  %141 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %142 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %141, i32 0, i32 2
  store i32* null, i32** %142, align 8
  %143 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  %144 = call i32 @p54_reset_stats(%struct.p54_common* %143)
  %145 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_hw* %145, %struct.ieee80211_hw** %2, align 8
  br label %146

146:                                              ; preds = %11, %10
  %147 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  ret %struct.ieee80211_hw* %147
}

declare dso_local %struct.ieee80211_hw* @ieee80211_alloc_hw(i64, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @eth_broadcast_addr(i32) #1

declare dso_local i32 @p54_reset_stats(%struct.p54_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
