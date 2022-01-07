; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_irq_alloc_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_irq_alloc_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.irq_avail* }
%struct.irq_avail = type { i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"guest: allocate IRQs %#x->%#x\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl*, i32, i32*)* @irq_alloc_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_alloc_range(%struct.cxl* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.irq_avail*, align 8
  store %struct.cxl* %0, %struct.cxl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %63, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.cxl*, %struct.cxl** %5, align 8
  %14 = getelementptr inbounds %struct.cxl, %struct.cxl* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %66

19:                                               ; preds = %11
  %20 = load %struct.cxl*, %struct.cxl** %5, align 8
  %21 = getelementptr inbounds %struct.cxl, %struct.cxl* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.irq_avail*, %struct.irq_avail** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %24, i64 %26
  store %struct.irq_avail* %27, %struct.irq_avail** %10, align 8
  %28 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %29 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %32 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @bitmap_find_next_zero_area(i32 %30, i32 %33, i32 0, i32 %34, i32 0)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %38 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %62

41:                                               ; preds = %19
  %42 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %43 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @bitmap_set(i32 %44, i32 %45, i32 %46)
  %48 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %49 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32*, i32** %7, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %57, %58
  %60 = sub nsw i32 %59, 1
  %61 = call i32 @pr_devel(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %60)
  store i32 0, i32* %4, align 4
  br label %69

62:                                               ; preds = %19
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %11

66:                                               ; preds = %11
  %67 = load i32, i32* @ENOSPC, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %41
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @bitmap_find_next_zero_area(i32, i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_set(i32, i32, i32) #1

declare dso_local i32 @pr_devel(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
