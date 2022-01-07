; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_del_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_del_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { i64*, %struct.brcmf_if** }
%struct.brcmf_if = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [30 x i8] c"Null interface, bsscfgidx=%d\0A\00", align 1
@TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Enter, bsscfgidx=%d, ifidx=%d\0A\00", align 1
@brcmf_netdev_ops_pri = common dso_local global i32 0, align 4
@BRCMF_BSSIDX_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_pub*, i64, i32)* @brcmf_del_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_del_if(%struct.brcmf_pub* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_pub*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_if*, align 8
  %8 = alloca i32, align 4
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %10 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %9, i32 0, i32 1
  %11 = load %struct.brcmf_if**, %struct.brcmf_if*** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.brcmf_if*, %struct.brcmf_if** %11, i64 %12
  %14 = load %struct.brcmf_if*, %struct.brcmf_if** %13, align 8
  store %struct.brcmf_if* %14, %struct.brcmf_if** %7, align 8
  %15 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %16 = icmp ne %struct.brcmf_if* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @bphy_err(%struct.brcmf_pub* %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %107

21:                                               ; preds = %3
  %22 = load i32, i32* @TRACE, align 4
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %25 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @brcmf_dbg(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i64 %23, i32 %26)
  %28 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %29 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %8, align 4
  %31 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %32 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = icmp ne %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %78

35:                                               ; preds = %21
  %36 = load i64, i64* %5, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %40 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, @brcmf_netdev_ops_pri
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = call i32 (...) @rtnl_lock()
  %47 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %48 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = call i32 @brcmf_netdev_stop(%struct.TYPE_4__* %49)
  %51 = call i32 (...) @rtnl_unlock()
  br label %52

52:                                               ; preds = %45, %38
  br label %58

53:                                               ; preds = %35
  %54 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %55 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = call i32 @netif_stop_queue(%struct.TYPE_4__* %56)
  br label %58

58:                                               ; preds = %53, %52
  %59 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %60 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, @brcmf_netdev_ops_pri
  br i1 %64, label %65, label %72

65:                                               ; preds = %58
  %66 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %67 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %66, i32 0, i32 3
  %68 = call i32 @cancel_work_sync(i32* %67)
  %69 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %70 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %69, i32 0, i32 2
  %71 = call i32 @cancel_work_sync(i32* %70)
  br label %72

72:                                               ; preds = %65, %58
  %73 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %74 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @brcmf_net_detach(%struct.TYPE_4__* %75, i32 %76)
  br label %84

78:                                               ; preds = %21
  %79 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @brcmf_p2p_ifp_removed(%struct.brcmf_if* %79, i32 %80)
  %82 = load %struct.brcmf_if*, %struct.brcmf_if** %7, align 8
  %83 = call i32 @kfree(%struct.brcmf_if* %82)
  br label %84

84:                                               ; preds = %78, %72
  %85 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %86 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %85, i32 0, i32 1
  %87 = load %struct.brcmf_if**, %struct.brcmf_if*** %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = getelementptr inbounds %struct.brcmf_if*, %struct.brcmf_if** %87, i64 %88
  store %struct.brcmf_if* null, %struct.brcmf_if** %89, align 8
  %90 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %91 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %90, i32 0, i32 0
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* %5, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %84
  %100 = load i64, i64* @BRCMF_BSSIDX_INVALID, align 8
  %101 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %102 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  store i64 %100, i64* %106, align 8
  br label %107

107:                                              ; preds = %17, %99, %84
  ret void
}

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i64) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64, i32) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @brcmf_netdev_stop(%struct.TYPE_4__*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @netif_stop_queue(%struct.TYPE_4__*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @brcmf_net_detach(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @brcmf_p2p_ifp_removed(%struct.brcmf_if*, i32) #1

declare dso_local i32 @kfree(%struct.brcmf_if*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
