; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_prefill_rx_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_rx.c_gve_prefill_rx_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_rx_ring = type { i32, %struct.TYPE_3__, %struct.gve_priv* }
%struct.TYPE_3__ = type { i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.page** }
%struct.page = type { i32 }
%struct.gve_priv = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gve_rx_ring*)* @gve_prefill_rx_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_prefill_rx_pages(%struct.gve_rx_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gve_rx_ring*, align 8
  %4 = alloca %struct.gve_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.gve_rx_ring* %0, %struct.gve_rx_ring** %3, align 8
  %9 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %3, align 8
  %10 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %9, i32 0, i32 2
  %11 = load %struct.gve_priv*, %struct.gve_priv** %10, align 8
  store %struct.gve_priv* %11, %struct.gve_priv** %4, align 8
  %12 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %3, align 8
  %13 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kvzalloc(i32 %19, i32 %20)
  %22 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %3, align 8
  %23 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32* %21, i32** %24, align 8
  %25 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %3, align 8
  %26 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %79

33:                                               ; preds = %1
  %34 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %35 = call %struct.TYPE_4__* @gve_assign_rx_qpl(%struct.gve_priv* %34)
  %36 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %3, align 8
  %37 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %38, align 8
  store i32 0, i32* %6, align 4
  br label %39

39:                                               ; preds = %74, %33
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %77

43:                                               ; preds = %39
  %44 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %3, align 8
  %45 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.page**, %struct.page*** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.page*, %struct.page** %49, i64 %51
  %53 = load %struct.page*, %struct.page** %52, align 8
  store %struct.page* %53, %struct.page** %7, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %8, align 4
  %57 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %3, align 8
  %58 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load %struct.gve_rx_ring*, %struct.gve_rx_ring** %3, align 8
  %65 = getelementptr inbounds %struct.gve_rx_ring, %struct.gve_rx_ring* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %8, align 4
  %72 = load %struct.page*, %struct.page** %7, align 8
  %73 = call i32 @gve_setup_rx_buffer(i32* %63, i32* %70, i32 %71, %struct.page* %72)
  br label %74

74:                                               ; preds = %43
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %39

77:                                               ; preds = %39
  %78 = load i32, i32* %5, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %77, %30
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32* @kvzalloc(i32, i32) #1

declare dso_local %struct.TYPE_4__* @gve_assign_rx_qpl(%struct.gve_priv*) #1

declare dso_local i32 @gve_setup_rx_buffer(i32*, i32*, i32, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
