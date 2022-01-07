; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_convert_ps_to_ns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_convert_ps_to_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmc_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpmc_timings*)* @gpmc_convert_ps_to_ns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpmc_convert_ps_to_ns(%struct.gpmc_timings* %0) #0 {
  %2 = alloca %struct.gpmc_timings*, align 8
  store %struct.gpmc_timings* %0, %struct.gpmc_timings** %2, align 8
  %3 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %4 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = sdiv i32 %5, 1000
  store i32 %6, i32* %4, align 4
  %7 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %8 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = sdiv i32 %9, 1000
  store i32 %10, i32* %8, align 4
  %11 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %12 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %13, 1000
  store i32 %14, i32* %12, align 4
  %15 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %16 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 1000
  store i32 %18, i32* %16, align 4
  %19 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %20 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 1000
  store i32 %22, i32* %20, align 4
  %23 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %24 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 1000
  store i32 %26, i32* %24, align 4
  %27 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %28 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 1000
  store i32 %30, i32* %28, align 4
  %31 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %32 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 1000
  store i32 %34, i32* %32, align 4
  %35 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %36 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 1000
  store i32 %38, i32* %36, align 4
  %39 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %40 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %39, i32 0, i32 9
  %41 = load i32, i32* %40, align 4
  %42 = sdiv i32 %41, 1000
  store i32 %42, i32* %40, align 4
  %43 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %44 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %43, i32 0, i32 10
  %45 = load i32, i32* %44, align 4
  %46 = sdiv i32 %45, 1000
  store i32 %46, i32* %44, align 4
  %47 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %48 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %49, 1000
  store i32 %50, i32* %48, align 4
  %51 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %52 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %51, i32 0, i32 12
  %53 = load i32, i32* %52, align 4
  %54 = sdiv i32 %53, 1000
  store i32 %54, i32* %52, align 4
  %55 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %56 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %55, i32 0, i32 13
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %57, 1000
  store i32 %58, i32* %56, align 4
  %59 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %60 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %59, i32 0, i32 14
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 1000
  store i32 %62, i32* %60, align 4
  %63 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %64 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %63, i32 0, i32 15
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %65, 1000
  store i32 %66, i32* %64, align 4
  %67 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %68 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %67, i32 0, i32 16
  %69 = load i32, i32* %68, align 4
  %70 = sdiv i32 %69, 1000
  store i32 %70, i32* %68, align 4
  %71 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %72 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %71, i32 0, i32 17
  %73 = load i32, i32* %72, align 4
  %74 = sdiv i32 %73, 1000
  store i32 %74, i32* %72, align 4
  %75 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %76 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %75, i32 0, i32 18
  %77 = load i32, i32* %76, align 4
  %78 = sdiv i32 %77, 1000
  store i32 %78, i32* %76, align 4
  %79 = load %struct.gpmc_timings*, %struct.gpmc_timings** %2, align 8
  %80 = getelementptr inbounds %struct.gpmc_timings, %struct.gpmc_timings* %79, i32 0, i32 19
  %81 = load i32, i32* %80, align 4
  %82 = sdiv i32 %81, 1000
  store i32 %82, i32* %80, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
