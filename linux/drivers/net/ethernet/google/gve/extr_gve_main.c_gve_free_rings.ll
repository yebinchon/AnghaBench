; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_free_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_free_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i32*, %struct.TYPE_3__, i32*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gve_priv*)* @gve_free_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gve_free_rings(%struct.gve_priv* %0) #0 {
  %2 = alloca %struct.gve_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %2, align 8
  %5 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %6 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %36

9:                                                ; preds = %1
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %24, %9
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %13 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %11, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %10
  %18 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @gve_tx_idx_to_ntfy(%struct.gve_priv* %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @gve_remove_napi(%struct.gve_priv* %21, i32 %22)
  br label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %10

27:                                               ; preds = %10
  %28 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %29 = call i32 @gve_tx_free_rings(%struct.gve_priv* %28)
  %30 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %31 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kvfree(i32* %32)
  %34 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %35 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %34, i32 0, i32 2
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %27, %1
  %37 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %38 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %68

41:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %56, %41
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %45 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @gve_rx_idx_to_ntfy(%struct.gve_priv* %50, i32 %51)
  store i32 %52, i32* %3, align 4
  %53 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @gve_remove_napi(%struct.gve_priv* %53, i32 %54)
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %42

59:                                               ; preds = %42
  %60 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %61 = call i32 @gve_rx_free_rings(%struct.gve_priv* %60)
  %62 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %63 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @kvfree(i32* %64)
  %66 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %67 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %59, %36
  ret void
}

declare dso_local i32 @gve_tx_idx_to_ntfy(%struct.gve_priv*, i32) #1

declare dso_local i32 @gve_remove_napi(%struct.gve_priv*, i32) #1

declare dso_local i32 @gve_tx_free_rings(%struct.gve_priv*) #1

declare dso_local i32 @kvfree(i32*) #1

declare dso_local i32 @gve_rx_idx_to_ntfy(%struct.gve_priv*, i32) #1

declare dso_local i32 @gve_rx_free_rings(%struct.gve_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
