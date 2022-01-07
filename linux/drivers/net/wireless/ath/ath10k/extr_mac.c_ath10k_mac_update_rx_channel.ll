; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_update_rx_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_update_rx_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i64, i32*, i32, i32, i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.ieee80211_vif_chanctx_switch = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cfg80211_chan_def }
%struct.cfg80211_chan_def = type { i32* }

@ath10k_mac_get_any_chandef_iter = common dso_local global i32 0, align 4
@ATH10K_STATE_RESTARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, %struct.ieee80211_chanctx_conf*, %struct.ieee80211_vif_chanctx_switch*, i32)* @ath10k_mac_update_rx_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_mac_update_rx_channel(%struct.ath10k* %0, %struct.ieee80211_chanctx_conf* %1, %struct.ieee80211_vif_chanctx_switch* %2, i32 %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %7 = alloca %struct.ieee80211_vif_chanctx_switch*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.cfg80211_chan_def*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ieee80211_chanctx_conf* %1, %struct.ieee80211_chanctx_conf** %6, align 8
  store %struct.ieee80211_vif_chanctx_switch* %2, %struct.ieee80211_vif_chanctx_switch** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.cfg80211_chan_def* null, %struct.cfg80211_chan_def** %9, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 4
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %14 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %13, i32 0, i32 3
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %17 = icmp ne %struct.ieee80211_chanctx_conf* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %7, align 8
  %20 = icmp ne %struct.ieee80211_vif_chanctx_switch* %19, null
  br label %21

21:                                               ; preds = %18, %4
  %22 = phi i1 [ false, %4 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %7, align 8
  %26 = icmp ne %struct.ieee80211_vif_chanctx_switch* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %27, %21
  %32 = phi i1 [ false, %21 ], [ %30, %27 ]
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = call i32 (...) @rcu_read_lock()
  %36 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %37 = icmp ne %struct.ieee80211_chanctx_conf* %36, null
  br i1 %37, label %62, label %38

38:                                               ; preds = %31
  %39 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %40 = call i32 @ath10k_mac_num_chanctxs(%struct.ath10k* %39)
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %44 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ath10k_mac_get_any_chandef_iter, align 4
  %47 = call i32 @ieee80211_iter_chan_contexts_atomic(i32 %45, i32 %46, %struct.cfg80211_chan_def** %9)
  %48 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %7, align 8
  %49 = icmp ne %struct.ieee80211_vif_chanctx_switch* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %7, align 8
  %52 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %51, i64 0
  %53 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store %struct.cfg80211_chan_def* %55, %struct.cfg80211_chan_def** %9, align 8
  br label %56

56:                                               ; preds = %50, %42
  %57 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %9, align 8
  %58 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %61 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  br label %89

62:                                               ; preds = %38, %31
  %63 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %64 = icmp ne %struct.ieee80211_chanctx_conf* %63, null
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %67 = call i32 @ath10k_mac_num_chanctxs(%struct.ath10k* %66)
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %78, label %69

69:                                               ; preds = %65, %62
  %70 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %71 = icmp ne %struct.ieee80211_chanctx_conf* %70, null
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %74 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @ATH10K_STATE_RESTARTED, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72, %65
  %79 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %84 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %83, i32 0, i32 1
  store i32* %82, i32** %84, align 8
  br label %88

85:                                               ; preds = %72, %69
  %86 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %87 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  br label %88

88:                                               ; preds = %85, %78
  br label %89

89:                                               ; preds = %88, %56
  %90 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @ath10k_mac_num_chanctxs(%struct.ath10k*) #1

declare dso_local i32 @ieee80211_iter_chan_contexts_atomic(i32, i32, %struct.cfg80211_chan_def**) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
