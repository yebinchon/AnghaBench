; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_cs_insert_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_cs_insert_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmc_cs_data = type { %struct.resource }
%struct.resource = type { i64, i64 }

@gpmc_cs = common dso_local global %struct.gpmc_cs_data* null, align 8
@gpmc_mem_lock = common dso_local global i32 0, align 4
@gpmc_mem_root = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64)* @gpmc_cs_insert_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmc_cs_insert_mem(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.gpmc_cs_data*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.gpmc_cs_data*, %struct.gpmc_cs_data** @gpmc_cs, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.gpmc_cs_data, %struct.gpmc_cs_data* %10, i64 %12
  store %struct.gpmc_cs_data* %13, %struct.gpmc_cs_data** %7, align 8
  %14 = load %struct.gpmc_cs_data*, %struct.gpmc_cs_data** %7, align 8
  %15 = getelementptr inbounds %struct.gpmc_cs_data, %struct.gpmc_cs_data* %14, i32 0, i32 0
  store %struct.resource* %15, %struct.resource** %8, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i64 @gpmc_mem_align(i64 %16)
  store i64 %17, i64* %6, align 8
  %18 = call i32 @spin_lock(i32* @gpmc_mem_lock)
  %19 = load i64, i64* %5, align 8
  %20 = load %struct.resource*, %struct.resource** %8, align 8
  %21 = getelementptr inbounds %struct.resource, %struct.resource* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add i64 %22, %23
  %25 = sub i64 %24, 1
  %26 = load %struct.resource*, %struct.resource** %8, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.resource*, %struct.resource** %8, align 8
  %29 = call i32 @request_resource(i32* @gpmc_mem_root, %struct.resource* %28)
  store i32 %29, i32* %9, align 4
  %30 = call i32 @spin_unlock(i32* @gpmc_mem_lock)
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local i64 @gpmc_mem_align(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @request_resource(i32*, %struct.resource*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
