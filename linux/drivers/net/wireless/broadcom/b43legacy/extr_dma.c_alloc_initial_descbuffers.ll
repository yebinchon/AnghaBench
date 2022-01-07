; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_alloc_initial_descbuffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_alloc_initial_descbuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmaring = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.b43legacy_dmadesc32 = type { i32 }
%struct.b43legacy_dmadesc_meta = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate initial descbuffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_dmaring*)* @alloc_initial_descbuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_initial_descbuffers(%struct.b43legacy_dmaring* %0) #0 {
  %2 = alloca %struct.b43legacy_dmaring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43legacy_dmadesc32*, align 8
  %6 = alloca %struct.b43legacy_dmadesc_meta*, align 8
  store %struct.b43legacy_dmaring* %0, %struct.b43legacy_dmaring** %2, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %34, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %12 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %17 = load i32, i32* %3, align 4
  %18 = call %struct.b43legacy_dmadesc32* @op32_idx2desc(%struct.b43legacy_dmaring* %16, i32 %17, %struct.b43legacy_dmadesc_meta** %6)
  store %struct.b43legacy_dmadesc32* %18, %struct.b43legacy_dmadesc32** %5, align 8
  %19 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %20 = load %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc32** %5, align 8
  %21 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32 @setup_rx_descbuffer(%struct.b43legacy_dmaring* %19, %struct.b43legacy_dmadesc32* %20, %struct.b43legacy_dmadesc_meta* %21, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %15
  %27 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %28 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @b43legacyerr(i32 %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %46

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %9

37:                                               ; preds = %9
  %38 = call i32 (...) @mb()
  %39 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %40 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %43 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %71, %37
  %45 = load i32, i32* %4, align 4
  ret i32 %45

46:                                               ; preds = %26
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %68, %46
  %50 = load i32, i32* %3, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call %struct.b43legacy_dmadesc32* @op32_idx2desc(%struct.b43legacy_dmaring* %53, i32 %54, %struct.b43legacy_dmadesc_meta** %6)
  store %struct.b43legacy_dmadesc32* %55, %struct.b43legacy_dmadesc32** %5, align 8
  %56 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %57 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %58 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %2, align 8
  %61 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @unmap_descbuffer(%struct.b43legacy_dmaring* %56, i32 %59, i32 %62, i32 0)
  %64 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %6, align 8
  %65 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_kfree_skb(i32 %66)
  br label %68

68:                                               ; preds = %52
  %69 = load i32, i32* %3, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %3, align 4
  br label %49

71:                                               ; preds = %49
  br label %44
}

declare dso_local %struct.b43legacy_dmadesc32* @op32_idx2desc(%struct.b43legacy_dmaring*, i32, %struct.b43legacy_dmadesc_meta**) #1

declare dso_local i32 @setup_rx_descbuffer(%struct.b43legacy_dmaring*, %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc_meta*, i32) #1

declare dso_local i32 @b43legacyerr(i32, i8*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @unmap_descbuffer(%struct.b43legacy_dmaring*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
