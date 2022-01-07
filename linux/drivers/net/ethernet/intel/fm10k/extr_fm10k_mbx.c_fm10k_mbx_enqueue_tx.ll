; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_enqueue_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_mbx.c_fm10k_mbx_enqueue_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { i32 }
%struct.fm10k_mbx_info = type { i32, %struct.TYPE_2__, i32, i32, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_mbx_info.1 = type opaque

@FM10K_MBX_ERR_NO_MBX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fm10k_hw*, %struct.fm10k_mbx_info*, i64*)* @fm10k_mbx_enqueue_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fm10k_mbx_enqueue_tx(%struct.fm10k_hw* %0, %struct.fm10k_mbx_info* %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca %struct.fm10k_mbx_info*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %5, align 8
  store %struct.fm10k_mbx_info* %1, %struct.fm10k_mbx_info** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %11 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %14 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %18 [
    i32 129, label %16
    i32 128, label %16
  ]

16:                                               ; preds = %3, %3
  %17 = load i64, i64* @FM10K_MBX_ERR_NO_MBX, align 8
  store i64 %17, i64* %4, align 8
  br label %78

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %21 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %20, i32 0, i32 5
  %22 = load i64*, i64** %7, align 8
  %23 = call i64 @fm10k_fifo_enqueue(i32* %21, i64* %22)
  store i64 %23, i64* %9, align 8
  br label %24

24:                                               ; preds = %32, %19
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i1 [ false, %24 ], [ %29, %27 ]
  br i1 %31, label %32, label %52

32:                                               ; preds = %30
  %33 = load i64, i64* %8, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %8, align 8
  %35 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %36 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @udelay(i32 %37)
  %39 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %40 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*)*, i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*)** %41, align 8
  %43 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %44 = bitcast %struct.fm10k_hw* %43 to %struct.fm10k_hw.0*
  %45 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %46 = bitcast %struct.fm10k_mbx_info* %45 to %struct.fm10k_mbx_info.1*
  %47 = call i32 %42(%struct.fm10k_hw.0* %44, %struct.fm10k_mbx_info.1* %46)
  %48 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %49 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %48, i32 0, i32 5
  %50 = load i64*, i64** %7, align 8
  %51 = call i64 @fm10k_fifo_enqueue(i32* %49, i64* %50)
  store i64 %51, i64* %9, align 8
  br label %24

52:                                               ; preds = %30
  %53 = load i64, i64* %9, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %57 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %56, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %59 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %55, %52
  %63 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %64 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %69 = getelementptr inbounds %struct.fm10k_mbx_info, %struct.fm10k_mbx_info* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*)*, i32 (%struct.fm10k_hw.0*, %struct.fm10k_mbx_info.1*)** %70, align 8
  %72 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %73 = bitcast %struct.fm10k_hw* %72 to %struct.fm10k_hw.0*
  %74 = load %struct.fm10k_mbx_info*, %struct.fm10k_mbx_info** %6, align 8
  %75 = bitcast %struct.fm10k_mbx_info* %74 to %struct.fm10k_mbx_info.1*
  %76 = call i32 %71(%struct.fm10k_hw.0* %73, %struct.fm10k_mbx_info.1* %75)
  br label %77

77:                                               ; preds = %67, %62
  store i64 0, i64* %4, align 8
  br label %78

78:                                               ; preds = %77, %16
  %79 = load i64, i64* %4, align 8
  ret i64 %79
}

declare dso_local i64 @fm10k_fifo_enqueue(i32*, i64*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
