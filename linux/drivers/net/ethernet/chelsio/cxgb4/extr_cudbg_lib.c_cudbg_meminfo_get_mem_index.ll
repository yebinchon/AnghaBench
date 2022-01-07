; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_meminfo_get_mem_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_meminfo_get_mem_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.cudbg_meminfo = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EDC0_FLAG = common dso_local global i32 0, align 4
@EDC1_FLAG = common dso_local global i32 0, align 4
@MC0_FLAG = common dso_local global i32 0, align 4
@MC_FLAG = common dso_local global i32 0, align 4
@MC1_FLAG = common dso_local global i32 0, align 4
@HMA_FLAG = common dso_local global i32 0, align 4
@CUDBG_STATUS_ENTITY_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.cudbg_meminfo*, i32, i32*)* @cudbg_meminfo_get_mem_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cudbg_meminfo_get_mem_index(%struct.adapter* %0, %struct.cudbg_meminfo* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.cudbg_meminfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.cudbg_meminfo* %1, %struct.cudbg_meminfo** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* %8, align 4
  switch i32 %12, label %34 [
    i32 132, label %13
    i32 131, label %15
    i32 129, label %17
    i32 128, label %30
    i32 130, label %32
  ]

13:                                               ; preds = %4
  %14 = load i32, i32* @EDC0_FLAG, align 4
  store i32 %14, i32* %11, align 4
  br label %36

15:                                               ; preds = %4
  %16 = load i32, i32* @EDC1_FLAG, align 4
  store i32 %16, i32* %11, align 4
  br label %36

17:                                               ; preds = %4
  %18 = load %struct.adapter*, %struct.adapter** %6, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @is_t5(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @MC0_FLAG, align 4
  br label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @MC_FLAG, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %11, align 4
  br label %36

30:                                               ; preds = %4
  %31 = load i32, i32* @MC1_FLAG, align 4
  store i32 %31, i32* %11, align 4
  br label %36

32:                                               ; preds = %4
  %33 = load i32, i32* @HMA_FLAG, align 4
  store i32 %33, i32* %11, align 4
  br label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @CUDBG_STATUS_ENTITY_NOT_FOUND, align 4
  store i32 %35, i32* %5, align 4
  br label %63

36:                                               ; preds = %32, %30, %28, %15, %13
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %7, align 8
  %40 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load %struct.cudbg_meminfo*, %struct.cudbg_meminfo** %7, align 8
  %45 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %44, i32 0, i32 1
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %43
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %9, align 8
  store i32 %55, i32* %56, align 4
  store i32 0, i32* %5, align 4
  br label %63

57:                                               ; preds = %43
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %37

61:                                               ; preds = %37
  %62 = load i32, i32* @CUDBG_STATUS_ENTITY_NOT_FOUND, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %54, %34
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @is_t5(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
