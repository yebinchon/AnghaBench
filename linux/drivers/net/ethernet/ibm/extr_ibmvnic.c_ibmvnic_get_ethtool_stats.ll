; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.ibmvnic_adapter = type { i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%union.ibmvnic_crq = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i32, i32 }

@IBMVNIC_CRQ_CMD = common dso_local global i32 0, align 4
@REQUEST_STATISTICS = common dso_local global i32 0, align 4
@ibmvnic_stats = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @ibmvnic_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvnic_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ibmvnic_adapter*, align 8
  %8 = alloca %union.ibmvnic_crq, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ibmvnic_adapter* %13, %struct.ibmvnic_adapter** %7, align 8
  %14 = call i32 @memset(%union.ibmvnic_crq* %8, i32 0, i32 24)
  %15 = load i32, i32* @IBMVNIC_CRQ_CMD, align 4
  %16 = bitcast %union.ibmvnic_crq* %8 to %struct.TYPE_6__*
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @REQUEST_STATISTICS, align 4
  %19 = bitcast %union.ibmvnic_crq* %8 to %struct.TYPE_6__*
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %22 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i8* @cpu_to_be32(i32 %23)
  %25 = bitcast %union.ibmvnic_crq* %8 to %struct.TYPE_6__*
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = call i8* @cpu_to_be32(i32 4)
  %28 = bitcast %union.ibmvnic_crq* %8 to %struct.TYPE_6__*
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %31 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %30, i32 0, i32 5
  %32 = call i32 @init_completion(i32* %31)
  %33 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %34 = call i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter* %33, %union.ibmvnic_crq* %8)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  br label %170

38:                                               ; preds = %3
  %39 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %40 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %39, i32 0, i32 5
  %41 = call i32 @wait_for_completion(i32* %40)
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %61, %38
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ibmvnic_stats, align 8
  %45 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %44)
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %42
  %48 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ibmvnic_stats, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @IBMVNIC_GET_STAT(%struct.ibmvnic_adapter* %48, i32 %54)
  %56 = call i32 @be64_to_cpu(i32 %55)
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %42

64:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %114, %64
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %68 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %117

71:                                               ; preds = %65
  %72 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %73 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %72, i32 0, i32 4
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %73, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  %86 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %87 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %86, i32 0, i32 4
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  %100 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %101 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %100, i32 0, i32 4
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %6, align 8
  %109 = load i32, i32* %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %71
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %65

117:                                              ; preds = %65
  store i32 0, i32* %10, align 4
  br label %118

118:                                              ; preds = %167, %117
  %119 = load i32, i32* %10, align 4
  %120 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %121 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %170

124:                                              ; preds = %118
  %125 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %126 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %125, i32 0, i32 3
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %132, i32* %136, align 4
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  %139 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %140 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %139, i32 0, i32 3
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %6, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 %146, i32* %150, align 4
  %151 = load i32, i32* %9, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %9, align 4
  %153 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %7, align 8
  %154 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %153, i32 0, i32 3
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %6, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %160, i32* %164, align 4
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %9, align 4
  br label %167

167:                                              ; preds = %124
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  br label %118

170:                                              ; preds = %37, %118
  ret void
}

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%union.ibmvnic_crq*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ibmvnic_send_crq(%struct.ibmvnic_adapter*, %union.ibmvnic_crq*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @IBMVNIC_GET_STAT(%struct.ibmvnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
