; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_switch_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_bm_switch_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32, i32, %struct.mvpp2_port**, i32* }
%struct.mvpp2_port = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MVPP2_BM_POOLS_NUM = common dso_local global i32 0, align 4
@MVPP2_MAX_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*, i32)* @mvpp2_bm_switch_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_bm_switch_buffers(%struct.mvpp2* %0, i32 %1) #0 {
  %3 = alloca %struct.mvpp2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvpp2_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.mvpp2* %0, %struct.mvpp2** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @MVPP2_BM_POOLS_NUM, align 4
  store i32 %10, i32* %5, align 4
  store %struct.mvpp2_port* null, %struct.mvpp2_port** %7, align 8
  %11 = load i32, i32* @MVPP2_MAX_PORTS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %47, %2
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %18 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %15
  %22 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %23 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %22, i32 0, i32 2
  %24 = load %struct.mvpp2_port**, %struct.mvpp2_port*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mvpp2_port*, %struct.mvpp2_port** %24, i64 %26
  %28 = load %struct.mvpp2_port*, %struct.mvpp2_port** %27, align 8
  store %struct.mvpp2_port* %28, %struct.mvpp2_port** %7, align 8
  %29 = load %struct.mvpp2_port*, %struct.mvpp2_port** %7, align 8
  %30 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i32 @netif_running(%struct.TYPE_6__* %31)
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %14, i64 %34
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %14, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %21
  %42 = load %struct.mvpp2_port*, %struct.mvpp2_port** %7, align 8
  %43 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %42, i32 0, i32 1
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = call i32 @mvpp2_stop(%struct.TYPE_6__* %44)
  br label %46

46:                                               ; preds = %41, %21
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %15

50:                                               ; preds = %15
  %51 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %52 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.mvpp2_port*, %struct.mvpp2_port** %7, align 8
  %57 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, 2
  store i32 %59, i32* %5, align 4
  br label %60

60:                                               ; preds = %55, %50
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %80, %60
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = load %struct.mvpp2_port*, %struct.mvpp2_port** %7, align 8
  %67 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %73 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %74 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @mvpp2_bm_pool_destroy(i32 %71, %struct.mvpp2* %72, i32* %78)
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %61

83:                                               ; preds = %61
  %84 = load %struct.mvpp2_port*, %struct.mvpp2_port** %7, align 8
  %85 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %91 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @devm_kfree(i32 %89, i32* %92)
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %96 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  %97 = load %struct.mvpp2_port*, %struct.mvpp2_port** %7, align 8
  %98 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %97, i32 0, i32 1
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %104 = call i32 @mvpp2_bm_init(i32 %102, %struct.mvpp2* %103)
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %132, %83
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %108 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %106, %109
  br i1 %110, label %111, label %135

111:                                              ; preds = %105
  %112 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %113 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %112, i32 0, i32 2
  %114 = load %struct.mvpp2_port**, %struct.mvpp2_port*** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.mvpp2_port*, %struct.mvpp2_port** %114, i64 %116
  %118 = load %struct.mvpp2_port*, %struct.mvpp2_port** %117, align 8
  store %struct.mvpp2_port* %118, %struct.mvpp2_port** %7, align 8
  %119 = load %struct.mvpp2_port*, %struct.mvpp2_port** %7, align 8
  %120 = call i32 @mvpp2_swf_bm_pool_init(%struct.mvpp2_port* %119)
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %14, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %111
  %127 = load %struct.mvpp2_port*, %struct.mvpp2_port** %7, align 8
  %128 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %127, i32 0, i32 1
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = call i32 @mvpp2_open(%struct.TYPE_6__* %129)
  br label %131

131:                                              ; preds = %126, %111
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %105

135:                                              ; preds = %105
  %136 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %136)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @netif_running(%struct.TYPE_6__*) #2

declare dso_local i32 @mvpp2_stop(%struct.TYPE_6__*) #2

declare dso_local i32 @mvpp2_bm_pool_destroy(i32, %struct.mvpp2*, i32*) #2

declare dso_local i32 @devm_kfree(i32, i32*) #2

declare dso_local i32 @mvpp2_bm_init(i32, %struct.mvpp2*) #2

declare dso_local i32 @mvpp2_swf_bm_pool_init(%struct.mvpp2_port*) #2

declare dso_local i32 @mvpp2_open(%struct.TYPE_6__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
