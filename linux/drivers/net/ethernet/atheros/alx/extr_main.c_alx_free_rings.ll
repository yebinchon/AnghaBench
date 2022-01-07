; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_free_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_free_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_9__** }
%struct.TYPE_12__ = type { i32, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alx_priv*)* @alx_free_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alx_free_rings(%struct.alx_priv* %0) #0 {
  %2 = alloca %struct.alx_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.alx_priv* %0, %struct.alx_priv** %2, align 8
  %4 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %5 = call i32 @alx_free_buffers(%struct.alx_priv* %4)
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %46, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %9 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %49

12:                                               ; preds = %6
  %13 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %14 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %13, i32 0, i32 3
  %15 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %15, i64 %17
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = icmp ne %struct.TYPE_9__* %19, null
  br i1 %20, label %21, label %45

21:                                               ; preds = %12
  %22 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %23 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %22, i32 0, i32 3
  %24 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %24, i64 %26
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = icmp ne %struct.TYPE_7__* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %21
  %33 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %34 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %33, i32 0, i32 3
  %35 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %35, i64 %37
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kfree(i32 %43)
  br label %45

45:                                               ; preds = %32, %21, %12
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %6

49:                                               ; preds = %6
  %50 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %51 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %50, i32 0, i32 3
  %52 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %52, i64 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = icmp ne %struct.TYPE_9__* %54, null
  br i1 %55, label %56, label %76

56:                                               ; preds = %49
  %57 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %58 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %57, i32 0, i32 3
  %59 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %59, i64 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = icmp ne %struct.TYPE_8__* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %56
  %66 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %67 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %66, i32 0, i32 3
  %68 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %68, i64 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @kfree(i32 %74)
  br label %76

76:                                               ; preds = %65, %56, %49
  %77 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %78 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %101

82:                                               ; preds = %76
  %83 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %84 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %89 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %93 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %97 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @dma_free_coherent(i32* %87, i32 %91, i64 %95, i32 %99)
  br label %101

101:                                              ; preds = %82, %76
  ret void
}

declare dso_local i32 @alx_free_buffers(%struct.alx_priv*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
