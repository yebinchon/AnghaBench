; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_set_dma_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_set_dma_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_io = type { %struct.ddb_dma*, %struct.TYPE_2__* }
%struct.ddb_dma = type { i64, i32*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.ddb* }
%struct.ddb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb_io*)* @ddb_set_dma_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_set_dma_table(%struct.ddb_io* %0) #0 {
  %2 = alloca %struct.ddb_io*, align 8
  %3 = alloca %struct.ddb*, align 8
  %4 = alloca %struct.ddb_dma*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ddb_io* %0, %struct.ddb_io** %2, align 8
  %7 = load %struct.ddb_io*, %struct.ddb_io** %2, align 8
  %8 = getelementptr inbounds %struct.ddb_io, %struct.ddb_io* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.ddb*, %struct.ddb** %10, align 8
  store %struct.ddb* %11, %struct.ddb** %3, align 8
  %12 = load %struct.ddb_io*, %struct.ddb_io** %2, align 8
  %13 = getelementptr inbounds %struct.ddb_io, %struct.ddb_io* %12, i32 0, i32 0
  %14 = load %struct.ddb_dma*, %struct.ddb_dma** %13, align 8
  store %struct.ddb_dma* %14, %struct.ddb_dma** %4, align 8
  %15 = load %struct.ddb_dma*, %struct.ddb_dma** %4, align 8
  %16 = icmp ne %struct.ddb_dma* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %78

18:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %52, %18
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.ddb_dma*, %struct.ddb_dma** %4, align 8
  %22 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %19
  %26 = load %struct.ddb_dma*, %struct.ddb_dma** %4, align 8
  %27 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load %struct.ddb*, %struct.ddb** %3, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.ddb_dma*, %struct.ddb_dma** %4, align 8
  %35 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = mul i64 %37, 8
  %39 = add i64 %36, %38
  %40 = call i32 @ddbwritel(%struct.ddb* %32, i32 %33, i64 %39)
  %41 = load %struct.ddb*, %struct.ddb** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 32
  %44 = load %struct.ddb_dma*, %struct.ddb_dma** %4, align 8
  %45 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = mul i64 %47, 8
  %49 = add i64 %46, %48
  %50 = add i64 %49, 4
  %51 = call i32 @ddbwritel(%struct.ddb* %41, i32 %43, i64 %50)
  br label %52

52:                                               ; preds = %25
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %19

55:                                               ; preds = %19
  %56 = load %struct.ddb_dma*, %struct.ddb_dma** %4, align 8
  %57 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 15
  %60 = shl i32 %59, 16
  %61 = sext i32 %60 to i64
  %62 = load %struct.ddb_dma*, %struct.ddb_dma** %4, align 8
  %63 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = and i64 %64, 31
  %66 = shl i64 %65, 11
  %67 = or i64 %61, %66
  %68 = load %struct.ddb_dma*, %struct.ddb_dma** %4, align 8
  %69 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = ashr i32 %70, 7
  %72 = and i32 %71, 2047
  %73 = sext i32 %72 to i64
  %74 = or i64 %67, %73
  %75 = trunc i64 %74 to i32
  %76 = load %struct.ddb_dma*, %struct.ddb_dma** %4, align 8
  %77 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %55, %17
  ret void
}

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
