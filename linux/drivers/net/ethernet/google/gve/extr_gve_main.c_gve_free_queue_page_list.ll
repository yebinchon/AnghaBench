; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_free_queue_page_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_free_queue_page_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i32, %struct.TYPE_2__*, %struct.gve_queue_page_list* }
%struct.TYPE_2__ = type { i32 }
%struct.gve_queue_page_list = type { i32, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gve_priv*, i32)* @gve_free_queue_page_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gve_free_queue_page_list(%struct.gve_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.gve_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gve_queue_page_list*, align 8
  %6 = alloca i32, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %8 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %7, i32 0, i32 2
  %9 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %9, i64 %11
  store %struct.gve_queue_page_list* %12, %struct.gve_queue_page_list** %5, align 8
  %13 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %5, align 8
  %14 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %74

18:                                               ; preds = %2
  %19 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %5, align 8
  %20 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  br label %62

24:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %54, %24
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %5, align 8
  %28 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %33 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %5, align 8
  %37 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %5, align 8
  %44 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @gve_qpl_dma_dir(%struct.gve_priv* %50, i32 %51)
  %53 = call i32 @gve_free_page(i32* %35, i32 %42, i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %31
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %25

57:                                               ; preds = %25
  %58 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %5, align 8
  %59 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @kvfree(i32* %60)
  br label %62

62:                                               ; preds = %57, %23
  %63 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %5, align 8
  %64 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @kvfree(i32* %65)
  %67 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %5, align 8
  %68 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.gve_priv*, %struct.gve_priv** %3, align 8
  %71 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sub nsw i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %62, %17
  ret void
}

declare dso_local i32 @gve_free_page(i32*, i32, i32, i32) #1

declare dso_local i32 @gve_qpl_dma_dir(%struct.gve_priv*, i32) #1

declare dso_local i32 @kvfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
