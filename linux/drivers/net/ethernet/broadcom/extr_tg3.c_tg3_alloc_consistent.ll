; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_alloc_consistent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_alloc_consistent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, %struct.TYPE_3__*, %struct.tg3_napi*, i8*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.tg3_napi = type { i32*, %struct.tg3_hw_status*, i32 }
%struct.tg3_hw_status = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@TG3_HW_STATUS_SIZE = common dso_local global i32 0, align 4
@ENABLE_RSS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_alloc_consistent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_alloc_consistent(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tg3_napi*, align 8
  %6 = alloca %struct.tg3_hw_status*, align 8
  %7 = alloca i32*, align 8
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %8 = load %struct.tg3*, %struct.tg3** %3, align 8
  %9 = getelementptr inbounds %struct.tg3, %struct.tg3* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.tg3*, %struct.tg3** %3, align 8
  %13 = getelementptr inbounds %struct.tg3, %struct.tg3* %12, i32 0, i32 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @dma_alloc_coherent(i32* %11, i32 4, i32* %13, i32 %14)
  %16 = load %struct.tg3*, %struct.tg3** %3, align 8
  %17 = getelementptr inbounds %struct.tg3, %struct.tg3* %16, i32 0, i32 3
  store i8* %15, i8** %17, align 8
  %18 = load %struct.tg3*, %struct.tg3** %3, align 8
  %19 = getelementptr inbounds %struct.tg3, %struct.tg3* %18, i32 0, i32 3
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %105

23:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %92, %23
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.tg3*, %struct.tg3** %3, align 8
  %27 = getelementptr inbounds %struct.tg3, %struct.tg3* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %95

30:                                               ; preds = %24
  %31 = load %struct.tg3*, %struct.tg3** %3, align 8
  %32 = getelementptr inbounds %struct.tg3, %struct.tg3* %31, i32 0, i32 2
  %33 = load %struct.tg3_napi*, %struct.tg3_napi** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %33, i64 %35
  store %struct.tg3_napi* %36, %struct.tg3_napi** %5, align 8
  %37 = load %struct.tg3*, %struct.tg3** %3, align 8
  %38 = getelementptr inbounds %struct.tg3, %struct.tg3* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* @TG3_HW_STATUS_SIZE, align 4
  %42 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %43 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %42, i32 0, i32 2
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @dma_alloc_coherent(i32* %40, i32 %41, i32* %43, i32 %44)
  %46 = bitcast i8* %45 to %struct.tg3_hw_status*
  %47 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %48 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %47, i32 0, i32 1
  store %struct.tg3_hw_status* %46, %struct.tg3_hw_status** %48, align 8
  %49 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %50 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %49, i32 0, i32 1
  %51 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %50, align 8
  %52 = icmp ne %struct.tg3_hw_status* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %30
  br label %105

54:                                               ; preds = %30
  %55 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %56 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %55, i32 0, i32 1
  %57 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %56, align 8
  store %struct.tg3_hw_status* %57, %struct.tg3_hw_status** %6, align 8
  %58 = load %struct.tg3*, %struct.tg3** %3, align 8
  %59 = load i32, i32* @ENABLE_RSS, align 4
  %60 = call i64 @tg3_flag(%struct.tg3* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %54
  store i32* null, i32** %7, align 8
  %63 = load i32, i32* %4, align 4
  switch i32 %63, label %79 [
    i32 1, label %64
    i32 2, label %70
    i32 3, label %73
    i32 4, label %76
  ]

64:                                               ; preds = %62
  %65 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %6, align 8
  %66 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32* %69, i32** %7, align 8
  br label %79

70:                                               ; preds = %62
  %71 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %6, align 8
  %72 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %71, i32 0, i32 3
  store i32* %72, i32** %7, align 8
  br label %79

73:                                               ; preds = %62
  %74 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %6, align 8
  %75 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %74, i32 0, i32 2
  store i32* %75, i32** %7, align 8
  br label %79

76:                                               ; preds = %62
  %77 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %6, align 8
  %78 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %77, i32 0, i32 1
  store i32* %78, i32** %7, align 8
  br label %79

79:                                               ; preds = %62, %76, %73, %70, %64
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %82 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %81, i32 0, i32 0
  store i32* %80, i32** %82, align 8
  br label %91

83:                                               ; preds = %54
  %84 = load %struct.tg3_hw_status*, %struct.tg3_hw_status** %6, align 8
  %85 = getelementptr inbounds %struct.tg3_hw_status, %struct.tg3_hw_status* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load %struct.tg3_napi*, %struct.tg3_napi** %5, align 8
  %90 = getelementptr inbounds %struct.tg3_napi, %struct.tg3_napi* %89, i32 0, i32 0
  store i32* %88, i32** %90, align 8
  br label %91

91:                                               ; preds = %83, %79
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %24

95:                                               ; preds = %24
  %96 = load %struct.tg3*, %struct.tg3** %3, align 8
  %97 = call i64 @tg3_mem_tx_acquire(%struct.tg3* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load %struct.tg3*, %struct.tg3** %3, align 8
  %101 = call i64 @tg3_mem_rx_acquire(%struct.tg3* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99, %95
  br label %105

104:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %110

105:                                              ; preds = %103, %53, %22
  %106 = load %struct.tg3*, %struct.tg3** %3, align 8
  %107 = call i32 @tg3_free_consistent(%struct.tg3* %106)
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %2, align 4
  br label %110

110:                                              ; preds = %105, %104
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i64 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_mem_tx_acquire(%struct.tg3*) #1

declare dso_local i64 @tg3_mem_rx_acquire(%struct.tg3*) #1

declare dso_local i32 @tg3_free_consistent(%struct.tg3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
