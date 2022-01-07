; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_swf_bm_pool_init_shared.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_swf_bm_pool_init_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.mvpp2_port = type { i64, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@MVPP2_BM_LONG_PKT_SIZE = common dso_local global i64 0, align 8
@MVPP2_BM_JUMBO = common dso_local global i32 0, align 4
@MVPP2_BM_LONG = common dso_local global i32 0, align 4
@MVPP2_BM_SHORT = common dso_local global i32 0, align 4
@mvpp2_pools = common dso_local global %struct.TYPE_6__* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2_port*)* @mvpp2_swf_bm_pool_init_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_swf_bm_pool_init_shared(%struct.mvpp2_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  %7 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %8 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MVPP2_BM_LONG_PKT_SIZE, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @MVPP2_BM_JUMBO, align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @MVPP2_BM_LONG, align 4
  store i32 %14, i32* %5, align 4
  br label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @MVPP2_BM_LONG, align 4
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @MVPP2_BM_SHORT, align 4
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %20 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %19, i32 0, i32 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %73, label %23

23:                                               ; preds = %18
  %24 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvpp2_pools, align 8
  %27 = load i32, i32* %4, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @mvpp2_bm_pool_use(%struct.mvpp2_port* %24, i32 %25, i32 %31)
  %33 = bitcast i8* %32 to %struct.TYPE_4__*
  %34 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %35 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %34, i32 0, i32 4
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %35, align 8
  %36 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %37 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %36, i32 0, i32 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %23
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %129

43:                                               ; preds = %23
  %44 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %45 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @BIT(i32 %46)
  %48 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %49 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %48, i32 0, i32 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 4
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %69, %43
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %57 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %64 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %63, i32 0, i32 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @mvpp2_rxq_long_pool_set(%struct.mvpp2_port* %61, i32 %62, i32 %67)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %54

72:                                               ; preds = %54
  br label %73

73:                                               ; preds = %72, %18
  %74 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %75 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %74, i32 0, i32 2
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = icmp ne %struct.TYPE_5__* %76, null
  br i1 %77, label %128, label %78

78:                                               ; preds = %73
  %79 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mvpp2_pools, align 8
  %82 = load i32, i32* %5, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @mvpp2_bm_pool_use(%struct.mvpp2_port* %79, i32 %80, i32 %86)
  %88 = bitcast i8* %87 to %struct.TYPE_5__*
  %89 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %90 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %89, i32 0, i32 2
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %90, align 8
  %91 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %92 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %91, i32 0, i32 2
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = icmp ne %struct.TYPE_5__* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %78
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %129

98:                                               ; preds = %78
  %99 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %100 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @BIT(i32 %101)
  %103 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %104 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %103, i32 0, i32 2
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %102
  store i32 %108, i32* %106, align 4
  store i32 0, i32* %6, align 4
  br label %109

109:                                              ; preds = %124, %98
  %110 = load i32, i32* %6, align 4
  %111 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %112 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %110, %113
  br i1 %114, label %115, label %127

115:                                              ; preds = %109
  %116 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %119 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %118, i32 0, i32 2
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @mvpp2_rxq_short_pool_set(%struct.mvpp2_port* %116, i32 %117, i32 %122)
  br label %124

124:                                              ; preds = %115
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %6, align 4
  br label %109

127:                                              ; preds = %109
  br label %128

128:                                              ; preds = %127, %73
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %95, %40
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i8* @mvpp2_bm_pool_use(%struct.mvpp2_port*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mvpp2_rxq_long_pool_set(%struct.mvpp2_port*, i32, i32) #1

declare dso_local i32 @mvpp2_rxq_short_pool_set(%struct.mvpp2_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
