; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_read_eq_indices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_read_eq_indices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@SGE_DBQ_CTXT_BADDR_A = common dso_local global i32 0, align 4
@MEM_EDC0 = common dso_local global i32 0, align 4
@T4_MEMORY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, i32, i32*, i32*)* @read_eq_indices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_eq_indices(%struct.adapter* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load %struct.adapter*, %struct.adapter** %5, align 8
  %13 = load i32, i32* @SGE_DBQ_CTXT_BADDR_A, align 4
  %14 = call i64 @t4_read_reg(%struct.adapter* %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 24, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %14, %17
  %19 = add nsw i64 %18, 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.adapter*, %struct.adapter** %5, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.adapter*, %struct.adapter** %5, align 8
  %24 = load i32, i32* @MEM_EDC0, align 4
  %25 = load i64, i64* %9, align 8
  %26 = load i32, i32* @T4_MEMORY_READ, align 4
  %27 = call i32 @t4_memory_rw(%struct.adapter* %23, i32 0, i32 %24, i64 %25, i32 4, i32* %10, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.adapter*, %struct.adapter** %5, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @be64_to_cpu(i32 %34)
  %36 = ashr i32 %35, 25
  %37 = and i32 %36, 65535
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @be64_to_cpu(i32 %39)
  %41 = ashr i32 %40, 9
  %42 = and i32 %41, 65535
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %33, %4
  %45 = load i32, i32* %11, align 4
  ret i32 %45
}

declare dso_local i64 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @t4_memory_rw(%struct.adapter*, i32, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
