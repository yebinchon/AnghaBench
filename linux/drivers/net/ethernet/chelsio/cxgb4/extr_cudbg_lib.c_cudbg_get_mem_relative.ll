; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_get_mem_relative.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_get_mem_relative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.cudbg_meminfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.cudbg_meminfo*, i64, i64*, i64*)* @cudbg_get_mem_relative to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cudbg_get_mem_relative(%struct.adapter* %0, %struct.cudbg_meminfo* %1, i64 %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.cudbg_meminfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store %struct.cudbg_meminfo* %1, %struct.cudbg_meminfo** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load %struct.adapter*, %struct.adapter** %7, align 8
  %15 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @cudbg_meminfo_get_mem_index(%struct.adapter* %14, %struct.cudbg_meminfo* %15, i64 %16, i64* %12)
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %13, align 4
  store i32 %21, i32* %6, align 4
  br label %78

22:                                               ; preds = %5
  %23 = load i64*, i64** %10, align 8
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %26 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i64, i64* %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %24, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %22
  %34 = load i64*, i64** %10, align 8
  store i64 0, i64* %34, align 8
  br label %46

35:                                               ; preds = %22
  %36 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %37 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %10, align 8
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %44, %42
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %35, %33
  %47 = load i64*, i64** %11, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %50 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %48, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %46
  %58 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %59 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %11, align 8
  store i64 %64, i64* %65, align 8
  br label %77

66:                                               ; preds = %46
  %67 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %8, align 8
  %68 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %11, align 8
  %75 = load i64, i64* %74, align 8
  %76 = sub nsw i64 %75, %73
  store i64 %76, i64* %74, align 8
  br label %77

77:                                               ; preds = %66, %57
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %77, %20
  %79 = load i32, i32* %6, align 4
  ret i32 %79
}

declare dso_local i32 @cudbg_meminfo_get_mem_index(%struct.adapter*, %struct.cudbg_meminfo*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
