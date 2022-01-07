; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_cxgb4vf_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_cxgb4vf_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64, i64, i64 }
%struct.port_info = type { i32, i32, %struct.adapter* }
%struct.adapter = type { i32, %struct.sge }
%struct.sge = type { %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@MAX_RX_BUFFERS = common dso_local global i64 0, align 8
@MAX_TXQ_ENTRIES = common dso_local global i64 0, align 8
@MAX_RSPQ_ENTRIES = common dso_local global i64 0, align 8
@MIN_RSPQ_ENTRIES = common dso_local global i64 0, align 8
@MIN_FL_ENTRIES = common dso_local global i64 0, align 8
@MIN_TXQ_ENTRIES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CXGB4VF_FULL_INIT_DONE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MIN_FL_RESID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @cxgb4vf_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgb4vf_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.port_info*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.sge*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.port_info* @netdev_priv(%struct.net_device* %10)
  store %struct.port_info* %11, %struct.port_info** %6, align 8
  %12 = load %struct.port_info*, %struct.port_info** %6, align 8
  %13 = getelementptr inbounds %struct.port_info, %struct.port_info* %12, i32 0, i32 2
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %7, align 8
  %15 = load %struct.adapter*, %struct.adapter** %7, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  store %struct.sge* %16, %struct.sge** %8, align 8
  %17 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MAX_RX_BUFFERS, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %57, label %22

22:                                               ; preds = %2
  %23 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %22
  %28 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAX_TXQ_ENTRIES, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %57, label %33

33:                                               ; preds = %27
  %34 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MAX_RSPQ_ENTRIES, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %57, label %39

39:                                               ; preds = %33
  %40 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MIN_RSPQ_ENTRIES, align 8
  %44 = icmp slt i64 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %39
  %46 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MIN_FL_ENTRIES, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %53 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MIN_TXQ_ENTRIES, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %45, %39, %33, %27, %22, %2
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %124

60:                                               ; preds = %51
  %61 = load %struct.adapter*, %struct.adapter** %7, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CXGB4VF_FULL_INIT_DONE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  br label %124

70:                                               ; preds = %60
  %71 = load %struct.port_info*, %struct.port_info** %6, align 8
  %72 = getelementptr inbounds %struct.port_info, %struct.port_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %120, %70
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.port_info*, %struct.port_info** %6, align 8
  %77 = getelementptr inbounds %struct.port_info, %struct.port_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.port_info*, %struct.port_info** %6, align 8
  %80 = getelementptr inbounds %struct.port_info, %struct.port_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = icmp slt i32 %75, %82
  br i1 %83, label %84, label %123

84:                                               ; preds = %74
  %85 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %86 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @MIN_FL_RESID, align 8
  %89 = add nsw i64 %87, %88
  %90 = load %struct.sge*, %struct.sge** %8, align 8
  %91 = getelementptr inbounds %struct.sge, %struct.sge* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i64 %89, i64* %97, align 8
  %98 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %99 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.sge*, %struct.sge** %8, align 8
  %102 = getelementptr inbounds %struct.sge, %struct.sge* %101, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i64 %100, i64* %108, align 8
  %109 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %110 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.sge*, %struct.sge** %8, align 8
  %113 = getelementptr inbounds %struct.sge, %struct.sge* %112, i32 0, i32 0
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store i64 %111, i64* %119, align 8
  br label %120

120:                                              ; preds = %84
  %121 = load i32, i32* %9, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %74

123:                                              ; preds = %74
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %67, %57
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
