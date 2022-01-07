; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_veth.c_veth_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i32, i32 }
%struct.ethtool_stats = type { i32 }
%struct.veth_priv = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.veth_rq_stats }
%struct.veth_rq_stats = type { i32 }

@VETH_RQ_STATS_LEN = common dso_local global i32 0, align 4
@veth_rq_stats_desc = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @veth_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @veth_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.veth_priv*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.veth_rq_stats*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.veth_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.veth_priv* %17, %struct.veth_priv** %7, align 8
  %18 = load %struct.veth_priv*, %struct.veth_priv** %7, align 8
  %19 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.net_device* @rtnl_dereference(i32 %20)
  store %struct.net_device* %21, %struct.net_device** %8, align 8
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = icmp ne %struct.net_device* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.net_device*, %struct.net_device** %8, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  br label %29

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32 [ %27, %24 ], [ 0, %28 ]
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %30, i32* %32, align 4
  store i32 1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %89, %29
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %92

39:                                               ; preds = %33
  %40 = load %struct.veth_priv*, %struct.veth_priv** %7, align 8
  %41 = getelementptr inbounds %struct.veth_priv, %struct.veth_priv* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store %struct.veth_rq_stats* %46, %struct.veth_rq_stats** %12, align 8
  %47 = load %struct.veth_rq_stats*, %struct.veth_rq_stats** %12, align 8
  %48 = bitcast %struct.veth_rq_stats* %47 to i8*
  store i8* %48, i8** %13, align 8
  br label %49

49:                                               ; preds = %79, %39
  %50 = load %struct.veth_rq_stats*, %struct.veth_rq_stats** %12, align 8
  %51 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %50, i32 0, i32 0
  %52 = call i32 @u64_stats_fetch_begin_irq(i32* %51)
  store i32 %52, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %75, %49
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @VETH_RQ_STATS_LEN, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %78

57:                                               ; preds = %53
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @veth_rq_stats_desc, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %15, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = load i64, i64* %15, align 8
  %66 = getelementptr i8, i8* %64, i64 %65
  %67 = bitcast i8* %66 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  store i32 %68, i32* %74, align 4
  br label %75

75:                                               ; preds = %57
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %53

78:                                               ; preds = %53
  br label %79

79:                                               ; preds = %78
  %80 = load %struct.veth_rq_stats*, %struct.veth_rq_stats** %12, align 8
  %81 = getelementptr inbounds %struct.veth_rq_stats, %struct.veth_rq_stats* %80, i32 0, i32 0
  %82 = load i32, i32* %14, align 4
  %83 = call i64 @u64_stats_fetch_retry_irq(i32* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %49, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* @VETH_RQ_STATS_LEN, align 4
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %33

92:                                               ; preds = %33
  ret void
}

declare dso_local %struct.veth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.net_device* @rtnl_dereference(i32) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
