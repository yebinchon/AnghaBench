; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_cache_ring_qos.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_cache_ring_qos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { %struct.TYPE_6__**, %struct.TYPE_5__**, %struct.TYPE_4__*, %struct.net_device* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.net_device = type { i32 }

@RING_F_QOS = common dso_local global i64 0, align 8
@RING_F_RSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_intfc*)* @fm10k_cache_ring_qos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_cache_ring_qos(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  %12 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %13 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %12, i32 0, i32 3
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %4, align 8
  %15 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %16 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i64, i64* @RING_F_QOS, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %9, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call i32 @netdev_get_num_tc(%struct.net_device* %23)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp sle i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %107

28:                                               ; preds = %1
  %29 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %30 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %29, i32 0, i32 2
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* @RING_F_RSS, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %7, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %100, %28
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %106

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %96, %40
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %99

46:                                               ; preds = %42
  %47 = load i32, i32* %11, align 4
  %48 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %49 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %51, %52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %50, i64 %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i32 %47, i32* %57, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %60 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %61, i64 %65
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 %58, i32* %68, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %71 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %72, i64 %76
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %69, i32* %79, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %82 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %83, i64 %87
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  store i32 %80, i32* %90, align 4
  %91 = load i64, i64* %9, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %93, %91
  %95 = trunc i64 %94 to i32
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %46
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %42

99:                                               ; preds = %42
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %6, align 4
  br label %36

106:                                              ; preds = %36
  store i32 1, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %27
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @netdev_get_num_tc(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
