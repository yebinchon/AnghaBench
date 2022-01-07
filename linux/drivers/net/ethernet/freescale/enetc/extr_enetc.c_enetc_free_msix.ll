; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_free_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_free_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_ndev_priv = type { i32, i32, i32, %struct.TYPE_2__*, %struct.enetc_int_vector**, i32**, i32** }
%struct.TYPE_2__ = type { i32 }
%struct.enetc_int_vector = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enetc_free_msix(%struct.enetc_ndev_priv* %0) #0 {
  %2 = alloca %struct.enetc_ndev_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.enetc_int_vector*, align 8
  store %struct.enetc_ndev_priv* %0, %struct.enetc_ndev_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %8 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %5
  %12 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %13 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %12, i32 0, i32 4
  %14 = load %struct.enetc_int_vector**, %struct.enetc_int_vector*** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.enetc_int_vector*, %struct.enetc_int_vector** %14, i64 %16
  %18 = load %struct.enetc_int_vector*, %struct.enetc_int_vector** %17, align 8
  store %struct.enetc_int_vector* %18, %struct.enetc_int_vector** %4, align 8
  %19 = load %struct.enetc_int_vector*, %struct.enetc_int_vector** %4, align 8
  %20 = getelementptr inbounds %struct.enetc_int_vector, %struct.enetc_int_vector* %19, i32 0, i32 0
  %21 = call i32 @netif_napi_del(i32* %20)
  br label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %5

25:                                               ; preds = %5
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %29 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %34 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %33, i32 0, i32 6
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %26

42:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %56, %42
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %46 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %51 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %50, i32 0, i32 5
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  store i32* null, i32** %55, align 8
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %43

59:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %81, %59
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %63 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %60
  %67 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %68 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %67, i32 0, i32 4
  %69 = load %struct.enetc_int_vector**, %struct.enetc_int_vector*** %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.enetc_int_vector*, %struct.enetc_int_vector** %69, i64 %71
  %73 = load %struct.enetc_int_vector*, %struct.enetc_int_vector** %72, align 8
  %74 = call i32 @kfree(%struct.enetc_int_vector* %73)
  %75 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %76 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %75, i32 0, i32 4
  %77 = load %struct.enetc_int_vector**, %struct.enetc_int_vector*** %76, align 8
  %78 = load i32, i32* %3, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.enetc_int_vector*, %struct.enetc_int_vector** %77, i64 %79
  store %struct.enetc_int_vector* null, %struct.enetc_int_vector** %80, align 8
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %60

84:                                               ; preds = %60
  %85 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %2, align 8
  %86 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pci_free_irq_vectors(i32 %89)
  ret void
}

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @kfree(%struct.enetc_int_vector*) #1

declare dso_local i32 @pci_free_irq_vectors(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
