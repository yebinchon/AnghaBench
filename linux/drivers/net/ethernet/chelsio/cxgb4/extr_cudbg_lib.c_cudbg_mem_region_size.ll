; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_mem_region_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_mem_region_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_error = type { i32 }
%struct.cudbg_meminfo = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cudbg_init*, %struct.cudbg_error*, i64)* @cudbg_mem_region_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cudbg_mem_region_size(%struct.cudbg_init* %0, %struct.cudbg_error* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_meminfo, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store %struct.cudbg_error* %1, %struct.cudbg_error** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %13 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %12, i32 0, i32 0
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %8, align 8
  %15 = call i32 @memset(%struct.cudbg_meminfo* %9, i32 0, i32 8)
  %16 = load %struct.adapter*, %struct.adapter** %8, align 8
  %17 = call i32 @cudbg_fill_meminfo(%struct.adapter* %16, %struct.cudbg_meminfo* %9)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %4, align 8
  br label %49

23:                                               ; preds = %3
  %24 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %25 = load %struct.cudbg_error*, %struct.cudbg_error** %6, align 8
  %26 = call i32 @cudbg_t4_fwcache(%struct.cudbg_init* %24, %struct.cudbg_error* %25)
  %27 = load %struct.adapter*, %struct.adapter** %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @cudbg_meminfo_get_mem_index(%struct.adapter* %27, %struct.cudbg_meminfo* %9, i64 %28, i64* %10)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %4, align 8
  br label %49

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %9, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i64, i64* %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %9, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub i64 %41, %47
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %35, %32, %20
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local i32 @memset(%struct.cudbg_meminfo*, i32, i32) #1

declare dso_local i32 @cudbg_fill_meminfo(%struct.adapter*, %struct.cudbg_meminfo*) #1

declare dso_local i32 @cudbg_t4_fwcache(%struct.cudbg_init*, %struct.cudbg_error*) #1

declare dso_local i32 @cudbg_meminfo_get_mem_index(%struct.adapter*, %struct.cudbg_meminfo*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
