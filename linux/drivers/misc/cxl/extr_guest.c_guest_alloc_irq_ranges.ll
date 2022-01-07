; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_guest_alloc_irq_ranges.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_guest_alloc_irq_ranges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_irq_ranges = type { i32*, i32* }
%struct.cxl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CXL_IRQ_RANGES = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_irq_ranges*, %struct.cxl*, i32)* @guest_alloc_irq_ranges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guest_alloc_irq_ranges(%struct.cxl_irq_ranges* %0, %struct.cxl* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxl_irq_ranges*, align 8
  %6 = alloca %struct.cxl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cxl_irq_ranges* %0, %struct.cxl_irq_ranges** %5, align 8
  store %struct.cxl* %1, %struct.cxl** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %5, align 8
  %12 = call i32 @memset(%struct.cxl_irq_ranges* %11, i32 0, i32 16)
  %13 = load %struct.cxl*, %struct.cxl** %6, align 8
  %14 = getelementptr inbounds %struct.cxl, %struct.cxl* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %63, %3
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @CXL_IRQ_RANGES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ]
  br i1 %26, label %27, label %66

27:                                               ; preds = %25
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %38, %27
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.cxl*, %struct.cxl** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @irq_alloc_range(%struct.cxl* %33, i32 %34, i32* %10)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %41

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  %40 = sdiv i32 %39, 2
  store i32 %40, i32* %9, align 4
  br label %29

41:                                               ; preds = %37, %29
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  br label %76

45:                                               ; preds = %41
  %46 = load i32, i32* %10, align 4
  %47 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %5, align 8
  %48 = getelementptr inbounds %struct.cxl_irq_ranges, %struct.cxl_irq_ranges* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %46, i32* %52, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %5, align 8
  %55 = getelementptr inbounds %struct.cxl_irq_ranges, %struct.cxl_irq_ranges* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sub i32 %61, %60
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %45
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %18

66:                                               ; preds = %25
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %76

70:                                               ; preds = %66
  %71 = load %struct.cxl*, %struct.cxl** %6, align 8
  %72 = getelementptr inbounds %struct.cxl, %struct.cxl* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  store i32 0, i32* %4, align 4
  br label %109

76:                                               ; preds = %69, %44
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %98, %76
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @CXL_IRQ_RANGES, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %77
  %82 = load %struct.cxl*, %struct.cxl** %6, align 8
  %83 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %5, align 8
  %84 = getelementptr inbounds %struct.cxl_irq_ranges, %struct.cxl_irq_ranges* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.cxl_irq_ranges*, %struct.cxl_irq_ranges** %5, align 8
  %91 = getelementptr inbounds %struct.cxl_irq_ranges, %struct.cxl_irq_ranges* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @irq_free_range(%struct.cxl* %82, i32 %89, i32 %96)
  br label %98

98:                                               ; preds = %81
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %77

101:                                              ; preds = %77
  %102 = load %struct.cxl*, %struct.cxl** %6, align 8
  %103 = getelementptr inbounds %struct.cxl, %struct.cxl* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load i32, i32* @ENOSPC, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %101, %70
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @memset(%struct.cxl_irq_ranges*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @irq_alloc_range(%struct.cxl*, i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @irq_free_range(%struct.cxl*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
