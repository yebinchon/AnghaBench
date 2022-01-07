; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_pool_use.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_pool_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.mvpp2_bm_pool = type { i32, i32, i32, i64 }
%struct.mvpp2_port = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i64, %struct.mvpp2_bm_pool* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@MVPP2_BM_POOLS_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Invalid pool %d\0A\00", align 1
@mvpp2_pools = common dso_local global %struct.TYPE_9__* null, align 8
@MVPP2_BM_SHORT = common dso_local global i64 0, align 8
@MVPP2_BM_LONG = common dso_local global i64 0, align 8
@MVPP2_SKB_SHINFO_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"pool %d: %d of %d allocated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mvpp2_bm_pool* (%struct.mvpp2_port*, i32, i32)* @mvpp2_bm_pool_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mvpp2_bm_pool* @mvpp2_bm_pool_use(%struct.mvpp2_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mvpp2_bm_pool*, align 8
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mvpp2_bm_pool*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %12 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %15, i64 %17
  store %struct.mvpp2_bm_pool* %18, %struct.mvpp2_bm_pool** %8, align 8
  %19 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %20 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %19, i32 0, i32 1
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %28 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %27, i32 0, i32 1
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = call i32 @mvpp2_get_nrxqs(%struct.TYPE_10__* %29)
  %31 = mul nsw i32 %30, 2
  %32 = icmp ugt i32 %26, %31
  br i1 %32, label %44, label %33

33:                                               ; preds = %25, %3
  %34 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %35 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @MVPP2_BM_POOLS_NUM, align 4
  %43 = icmp uge i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %40, %25
  %45 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %46 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @netdev_err(%struct.TYPE_8__* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %48)
  store %struct.mvpp2_bm_pool* null, %struct.mvpp2_bm_pool** %4, align 8
  br label %145

50:                                               ; preds = %40, %33
  %51 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %52 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %134

55:                                               ; preds = %50
  %56 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %57 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %10, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %55
  %62 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %63 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %61
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %71 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mvpp2_pools, align 8
  %76 = load i64, i64* @MVPP2_BM_SHORT, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %10, align 4
  br label %86

80:                                               ; preds = %68
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mvpp2_pools, align 8
  %82 = load i64, i64* @MVPP2_BM_LONG, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %10, align 4
  br label %86

86:                                               ; preds = %80, %74
  br label %94

87:                                               ; preds = %61
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** @mvpp2_pools, align 8
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %87, %86
  br label %108

95:                                               ; preds = %55
  %96 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %97 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %96, i32 0, i32 2
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %103 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @mvpp2_bm_bufs_free(i32 %101, %struct.TYPE_10__* %104, %struct.mvpp2_bm_pool* %105, i32 %106)
  br label %108

108:                                              ; preds = %95, %94
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %111 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %7, align 4
  %113 = call i32 @MVPP2_RX_BUF_SIZE(i32 %112)
  %114 = call i64 @SKB_DATA_ALIGN(i32 %113)
  %115 = load i64, i64* @MVPP2_SKB_SHINFO_SIZE, align 8
  %116 = add nsw i64 %114, %115
  %117 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %118 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %117, i32 0, i32 3
  store i64 %116, i64* %118, align 8
  %119 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %120 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @mvpp2_bm_bufs_add(%struct.mvpp2_port* %119, %struct.mvpp2_bm_pool* %120, i32 %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %108
  %127 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %128 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %130, i32 %131)
  store %struct.mvpp2_bm_pool* null, %struct.mvpp2_bm_pool** %4, align 8
  br label %145

133:                                              ; preds = %108
  br label %134

134:                                              ; preds = %133, %50
  %135 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %136 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %135, i32 0, i32 1
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %136, align 8
  %138 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %139 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %140 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @MVPP2_RX_BUF_SIZE(i32 %141)
  %143 = call i32 @mvpp2_bm_pool_bufsize_set(%struct.TYPE_10__* %137, %struct.mvpp2_bm_pool* %138, i32 %142)
  %144 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  store %struct.mvpp2_bm_pool* %144, %struct.mvpp2_bm_pool** %4, align 8
  br label %145

145:                                              ; preds = %134, %126, %44
  %146 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %4, align 8
  ret %struct.mvpp2_bm_pool* %146
}

declare dso_local i32 @mvpp2_get_nrxqs(%struct.TYPE_10__*) #1

declare dso_local i32 @netdev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @mvpp2_bm_bufs_free(i32, %struct.TYPE_10__*, %struct.mvpp2_bm_pool*, i32) #1

declare dso_local i64 @SKB_DATA_ALIGN(i32) #1

declare dso_local i32 @MVPP2_RX_BUF_SIZE(i32) #1

declare dso_local i32 @mvpp2_bm_bufs_add(%struct.mvpp2_port*, %struct.mvpp2_bm_pool*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mvpp2_bm_pool_bufsize_set(%struct.TYPE_10__*, %struct.mvpp2_bm_pool*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
