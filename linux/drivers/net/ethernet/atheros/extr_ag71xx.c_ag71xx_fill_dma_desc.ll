; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_fill_dma_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/extr_ag71xx.c_ag71xx_fill_dma_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ag71xx_ring = type { i32, i32, i32 }
%struct.ag71xx_desc = type { i32, i32 }

@DESC_MORE = common dso_local global i32 0, align 4
@DESC_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ag71xx_ring*, i32, i32)* @ag71xx_fill_dma_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ag71xx_fill_dma_desc(%struct.ag71xx_ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ag71xx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ag71xx_desc*, align 8
  %13 = alloca i32, align 4
  store %struct.ag71xx_ring* %0, %struct.ag71xx_ring** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %5, align 8
  %15 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = sub nsw i32 %17, 1
  store i32 %18, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %19 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %5, align 8
  %20 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %11, align 4
  br label %26

26:                                               ; preds = %24, %3
  br label %27

27:                                               ; preds = %83, %26
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %89

30:                                               ; preds = %27
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %13, align 4
  %32 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %5, align 8
  %33 = getelementptr inbounds %struct.ag71xx_ring, %struct.ag71xx_ring* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %8, align 4
  %39 = load %struct.ag71xx_ring*, %struct.ag71xx_ring** %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring* %39, i32 %40)
  store %struct.ag71xx_desc* %41, %struct.ag71xx_desc** %12, align 8
  %42 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %12, align 8
  %43 = call i32 @ag71xx_desc_empty(%struct.ag71xx_desc* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %30
  store i32 -1, i32* %4, align 4
  br label %91

46:                                               ; preds = %30
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %46
  %51 = load i32, i32* %11, align 4
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 4
  %55 = icmp sle i32 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* %13, align 4
  %58 = sub i32 %57, 4
  store i32 %58, i32* %13, align 4
  br label %59

59:                                               ; preds = %56, %50
  br label %60

60:                                               ; preds = %59, %46
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %12, align 8
  %63 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %7, align 4
  %69 = sub i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %60
  %73 = load i32, i32* @DESC_MORE, align 4
  %74 = load i32, i32* %13, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %72, %60
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @DESC_EMPTY, align 4
  %81 = load i32, i32* %13, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %13, align 4
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.ag71xx_desc*, %struct.ag71xx_desc** %12, align 8
  %86 = getelementptr inbounds %struct.ag71xx_desc, %struct.ag71xx_desc* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %27

89:                                               ; preds = %27
  %90 = load i32, i32* %10, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %45
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.ag71xx_desc* @ag71xx_ring_desc(%struct.ag71xx_ring*, i32) #1

declare dso_local i32 @ag71xx_desc_empty(%struct.ag71xx_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
