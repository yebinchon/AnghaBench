; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_free_all_descbuffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_free_all_descbuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i32, i32, i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)* }
%struct.b43_dmadesc_meta = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_dmaring*)* @free_all_descbuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_all_descbuffers(%struct.b43_dmaring* %0) #0 {
  %2 = alloca %struct.b43_dmaring*, align 8
  %3 = alloca %struct.b43_dmadesc_meta*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %2, align 8
  %5 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %6 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %76

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %73, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %14 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %76

17:                                               ; preds = %11
  %18 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %19 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)*, i32 (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)** %21, align 8
  %23 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 %22(%struct.b43_dmaring* %23, i32 %24, %struct.b43_dmadesc_meta** %3)
  %26 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %3, align 8
  %27 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %17
  %31 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %3, align 8
  %32 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = call i64 @b43_dma_ptr_is_poisoned(%struct.TYPE_4__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %30, %17
  %37 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %38 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @B43_WARN_ON(i32 %42)
  br label %73

44:                                               ; preds = %30
  %45 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %46 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %51 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %3, align 8
  %52 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %3, align 8
  %55 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @unmap_descbuffer(%struct.b43_dmaring* %50, i32 %53, i32 %58, i32 1)
  br label %69

60:                                               ; preds = %44
  %61 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %62 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %3, align 8
  %63 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %66 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @unmap_descbuffer(%struct.b43_dmaring* %61, i32 %64, i32 %67, i32 0)
  br label %69

69:                                               ; preds = %60, %49
  %70 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %71 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %3, align 8
  %72 = call i32 @free_descriptor_buffer(%struct.b43_dmaring* %70, %struct.b43_dmadesc_meta* %71)
  br label %73

73:                                               ; preds = %69, %36
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %11

76:                                               ; preds = %9, %11
  ret void
}

declare dso_local i64 @b43_dma_ptr_is_poisoned(%struct.TYPE_4__*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @unmap_descbuffer(%struct.b43_dmaring*, i32, i32, i32) #1

declare dso_local i32 @free_descriptor_buffer(%struct.b43_dmaring*, %struct.b43_dmadesc_meta*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
