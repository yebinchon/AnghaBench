; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_swf_bm_pool_init_percpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_swf_bm_pool_init_percpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.mvpp2_port = type { i32, i32*, i32*, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mvpp2_bm_pool = type { i32 }

@MVPP2_BM_SHORT = common dso_local global i64 0, align 8
@mvpp2_pools = common dso_local global %struct.TYPE_6__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@MVPP2_BM_LONG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*)* @mvpp2_swf_bm_pool_init_percpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_swf_bm_pool_init_percpu(%struct.mvpp2_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca %struct.mvpp2_bm_pool*, align 8
  %5 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %56, %1
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %9 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %59

12:                                               ; preds = %6
  %13 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %14 = load i64, i64* @MVPP2_BM_SHORT, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvpp2_pools, align 8
  %17 = load i64, i64* @MVPP2_BM_SHORT, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.mvpp2_bm_pool* @mvpp2_bm_pool_use_percpu(%struct.mvpp2_port* %13, i64 %14, i32 %15, i32 %20)
  store %struct.mvpp2_bm_pool* %21, %struct.mvpp2_bm_pool** %4, align 8
  %22 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %4, align 8
  %23 = icmp ne %struct.mvpp2_bm_pool* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %12
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %130

27:                                               ; preds = %12
  %28 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %29 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @BIT(i32 %30)
  %32 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %33 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %32, i32 0, i32 3
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %31
  store i32 %42, i32* %40, align 4
  %43 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %46 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %45, i32 0, i32 3
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mvpp2_rxq_short_pool_set(%struct.mvpp2_port* %43, i32 %44, i32 %54)
  br label %56

56:                                               ; preds = %27
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %6

59:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %122, %59
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %63 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %125

66:                                               ; preds = %60
  %67 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %68 = load i64, i64* @MVPP2_BM_LONG, align 8
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %71 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %69, %72
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvpp2_pools, align 8
  %75 = load i64, i64* @MVPP2_BM_LONG, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.mvpp2_bm_pool* @mvpp2_bm_pool_use_percpu(%struct.mvpp2_port* %67, i64 %68, i32 %73, i32 %78)
  store %struct.mvpp2_bm_pool* %79, %struct.mvpp2_bm_pool** %4, align 8
  %80 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %4, align 8
  %81 = icmp ne %struct.mvpp2_bm_pool* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %66
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %130

85:                                               ; preds = %66
  %86 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %87 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @BIT(i32 %88)
  %90 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %91 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %90, i32 0, i32 3
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %97 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = add nsw i32 %95, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %89
  store i32 %104, i32* %102, align 4
  %105 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %108 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %107, i32 0, i32 3
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %114 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %112, %115
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @mvpp2_rxq_long_pool_set(%struct.mvpp2_port* %105, i32 %106, i32 %120)
  br label %122

122:                                              ; preds = %85
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %60

125:                                              ; preds = %60
  %126 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %127 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %126, i32 0, i32 2
  store i32* null, i32** %127, align 8
  %128 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %129 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %128, i32 0, i32 1
  store i32* null, i32** %129, align 8
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %125, %82, %24
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.mvpp2_bm_pool* @mvpp2_bm_pool_use_percpu(%struct.mvpp2_port*, i64, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mvpp2_rxq_short_pool_set(%struct.mvpp2_port*, i32, i32) #1

declare dso_local i32 @mvpp2_rxq_long_pool_set(%struct.mvpp2_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
