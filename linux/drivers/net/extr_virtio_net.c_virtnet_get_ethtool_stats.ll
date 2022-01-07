; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.virtnet_info = type { i32, %struct.send_queue*, %struct.receive_queue* }
%struct.send_queue = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.receive_queue = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@VIRTNET_RQ_STATS_LEN = common dso_local global i32 0, align 4
@virtnet_rq_stats_desc = common dso_local global %struct.TYPE_8__* null, align 8
@VIRTNET_SQ_STATS_LEN = common dso_local global i32 0, align 4
@virtnet_sq_stats_desc = common dso_local global %struct.TYPE_7__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @virtnet_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtnet_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.virtnet_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.receive_queue*, align 8
  %15 = alloca %struct.send_queue*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.virtnet_info* @netdev_priv(%struct.net_device* %16)
  store %struct.virtnet_info* %17, %struct.virtnet_info** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %75, %3
  %19 = load i32, i32* %10, align 4
  %20 = load %struct.virtnet_info*, %struct.virtnet_info** %7, align 8
  %21 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %78

24:                                               ; preds = %18
  %25 = load %struct.virtnet_info*, %struct.virtnet_info** %7, align 8
  %26 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %25, i32 0, i32 2
  %27 = load %struct.receive_queue*, %struct.receive_queue** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %27, i64 %29
  store %struct.receive_queue* %30, %struct.receive_queue** %14, align 8
  %31 = load %struct.receive_queue*, %struct.receive_queue** %14, align 8
  %32 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %31, i32 0, i32 0
  %33 = bitcast %struct.TYPE_5__* %32 to i32*
  store i32* %33, i32** %12, align 8
  br label %34

34:                                               ; preds = %64, %24
  %35 = load %struct.receive_queue*, %struct.receive_queue** %14, align 8
  %36 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = call i32 @u64_stats_fetch_begin_irq(i32* %37)
  store i32 %38, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %39

39:                                               ; preds = %60, %34
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @VIRTNET_RQ_STATS_LEN, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %39
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @virtnet_rq_stats_desc, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %13, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %11, align 4
  %57 = add i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32 %53, i32* %59, align 4
  br label %60

60:                                               ; preds = %43
  %61 = load i32, i32* %11, align 4
  %62 = add i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %39

63:                                               ; preds = %39
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.receive_queue*, %struct.receive_queue** %14, align 8
  %66 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %9, align 4
  %69 = call i64 @u64_stats_fetch_retry_irq(i32* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %34, label %71

71:                                               ; preds = %64
  %72 = load i32, i32* @VIRTNET_RQ_STATS_LEN, align 4
  %73 = load i32, i32* %8, align 4
  %74 = add i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %10, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %10, align 4
  br label %18

78:                                               ; preds = %18
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %136, %78
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.virtnet_info*, %struct.virtnet_info** %7, align 8
  %82 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ult i32 %80, %83
  br i1 %84, label %85, label %139

85:                                               ; preds = %79
  %86 = load %struct.virtnet_info*, %struct.virtnet_info** %7, align 8
  %87 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %86, i32 0, i32 1
  %88 = load %struct.send_queue*, %struct.send_queue** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %88, i64 %90
  store %struct.send_queue* %91, %struct.send_queue** %15, align 8
  %92 = load %struct.send_queue*, %struct.send_queue** %15, align 8
  %93 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %92, i32 0, i32 0
  %94 = bitcast %struct.TYPE_6__* %93 to i32*
  store i32* %94, i32** %12, align 8
  br label %95

95:                                               ; preds = %125, %85
  %96 = load %struct.send_queue*, %struct.send_queue** %15, align 8
  %97 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = call i32 @u64_stats_fetch_begin_irq(i32* %98)
  store i32 %99, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %121, %95
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @VIRTNET_SQ_STATS_LEN, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %124

104:                                              ; preds = %100
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** @virtnet_sq_stats_desc, align 8
  %106 = load i32, i32* %11, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %13, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %11, align 4
  %118 = add i32 %116, %117
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  store i32 %114, i32* %120, align 4
  br label %121

121:                                              ; preds = %104
  %122 = load i32, i32* %11, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %100

124:                                              ; preds = %100
  br label %125

125:                                              ; preds = %124
  %126 = load %struct.send_queue*, %struct.send_queue** %15, align 8
  %127 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %9, align 4
  %130 = call i64 @u64_stats_fetch_retry_irq(i32* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %95, label %132

132:                                              ; preds = %125
  %133 = load i32, i32* @VIRTNET_SQ_STATS_LEN, align 4
  %134 = load i32, i32* %8, align 4
  %135 = add i32 %134, %133
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %10, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %79

139:                                              ; preds = %79
  ret void
}

declare dso_local %struct.virtnet_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @u64_stats_fetch_begin_irq(i32*) #1

declare dso_local i64 @u64_stats_fetch_retry_irq(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
