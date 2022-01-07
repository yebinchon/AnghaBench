; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr.c_s5p_mfc_release_priv_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr.c_s5p_mfc_release_priv_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32, %struct.device**, i32, i64 }
%struct.device = type { i32 }
%struct.s5p_mfc_priv_buf = type { i32, i32, i64, i32* }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s5p_mfc_release_priv_buf(%struct.s5p_mfc_dev* %0, %struct.s5p_mfc_priv_buf* %1) #0 {
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca %struct.s5p_mfc_priv_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %3, align 8
  store %struct.s5p_mfc_priv_buf* %1, %struct.s5p_mfc_priv_buf** %4, align 8
  %8 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %4, align 8
  %14 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %17 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub i32 %15, %18
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = lshr i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %4, align 8
  %23 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PAGE_SHIFT, align 4
  %26 = lshr i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %28 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @bitmap_clear(i32 %29, i32 %30, i32 %31)
  br label %53

33:                                               ; preds = %2
  %34 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %35 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %34, i32 0, i32 1
  %36 = load %struct.device**, %struct.device*** %35, align 8
  %37 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %4, align 8
  %38 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.device*, %struct.device** %36, i64 %39
  %41 = load %struct.device*, %struct.device** %40, align 8
  store %struct.device* %41, %struct.device** %7, align 8
  %42 = load %struct.device*, %struct.device** %7, align 8
  %43 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %4, align 8
  %44 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %4, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %4, align 8
  %50 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dma_free_coherent(%struct.device* %42, i32 %45, i32* %48, i32 %51)
  br label %53

53:                                               ; preds = %33, %12
  %54 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %4, align 8
  %55 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %54, i32 0, i32 3
  store i32* null, i32** %55, align 8
  %56 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %4, align 8
  %57 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.s5p_mfc_priv_buf*, %struct.s5p_mfc_priv_buf** %4, align 8
  %59 = getelementptr inbounds %struct.s5p_mfc_priv_buf, %struct.s5p_mfc_priv_buf* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  ret void
}

declare dso_local i32 @bitmap_clear(i32, i32, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
