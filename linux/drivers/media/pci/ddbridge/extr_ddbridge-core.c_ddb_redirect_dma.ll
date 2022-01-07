; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_redirect_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_redirect_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { i32 }
%struct.ddb_dma = type { i64, i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb*, %struct.ddb_dma*, %struct.ddb_dma*)* @ddb_redirect_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_redirect_dma(%struct.ddb* %0, %struct.ddb_dma* %1, %struct.ddb_dma* %2) #0 {
  %4 = alloca %struct.ddb*, align 8
  %5 = alloca %struct.ddb_dma*, align 8
  %6 = alloca %struct.ddb_dma*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ddb* %0, %struct.ddb** %4, align 8
  store %struct.ddb_dma* %1, %struct.ddb_dma** %5, align 8
  store %struct.ddb_dma* %2, %struct.ddb_dma** %6, align 8
  %10 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %11 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.ddb_dma*, %struct.ddb_dma** %5, align 8
  %14 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ddb_dma*, %struct.ddb_dma** %5, align 8
  %16 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %47, %3
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %21 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ult i64 %19, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %18
  %25 = load %struct.ddb_dma*, %struct.ddb_dma** %6, align 8
  %26 = getelementptr inbounds %struct.ddb_dma, %struct.ddb_dma* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.ddb*, %struct.ddb** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %7, align 8
  %35 = mul i64 %34, 8
  %36 = add i64 %33, %35
  %37 = call i32 @ddbwritel(%struct.ddb* %31, i32 %32, i64 %36)
  %38 = load %struct.ddb*, %struct.ddb** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = ashr i32 %39, 32
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* %7, align 8
  %43 = mul i64 %42, 8
  %44 = add i64 %41, %43
  %45 = add i64 %44, 4
  %46 = call i32 @ddbwritel(%struct.ddb* %38, i32 %40, i64 %45)
  br label %47

47:                                               ; preds = %24
  %48 = load i64, i64* %7, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %7, align 8
  br label %18

50:                                               ; preds = %18
  ret void
}

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
