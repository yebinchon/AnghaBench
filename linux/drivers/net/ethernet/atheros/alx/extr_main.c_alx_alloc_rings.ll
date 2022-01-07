; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_alloc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_alloc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32, i32, i32, i32, %struct.TYPE_8__**, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Allocation of tx buffer failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Allocation of rx buffer failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_priv*)* @alx_alloc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_alloc_rings(%struct.alx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alx_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.alx_priv* %0, %struct.alx_priv** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %7 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = mul i64 4, %9
  %11 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %12 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = mul i64 %10, %14
  %16 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %17 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = add i64 %15, %20
  %22 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %23 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 4, %25
  %27 = add i64 %21, %26
  %28 = trunc i64 %27 to i32
  %29 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %30 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 8
  %32 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %33 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %38 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %42 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32 @dma_alloc_coherent(i32* %36, i32 %40, i32* %43, i32 %44)
  %46 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %47 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 4
  %49 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %50 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %1
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %113

57:                                               ; preds = %1
  %58 = call i32 @BUILD_BUG_ON(i32 4)
  %59 = call i32 @BUILD_BUG_ON(i32 4)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %89, %57
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %63 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %60
  %67 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %68 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %69 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %68, i32 0, i32 4
  %70 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %70, i64 %72
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @alx_alloc_tx_ring(%struct.alx_priv* %67, i32 %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %66
  %82 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %83 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @netdev_err(i32 %84, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %2, align 4
  br label %113

88:                                               ; preds = %66
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %60

92:                                               ; preds = %60
  %93 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %94 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %95 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %94, i32 0, i32 4
  %96 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %96, i64 0
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @alx_alloc_rx_ring(%struct.alx_priv* %93, i32 %100, i32 %101)
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %92
  %106 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %107 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @netdev_err(i32 %108, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %113

112:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %105, %81, %54
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @alx_alloc_tx_ring(%struct.alx_priv*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @alx_alloc_rx_ring(%struct.alx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
