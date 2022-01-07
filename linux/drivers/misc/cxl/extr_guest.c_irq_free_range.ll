; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_irq_free_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c_irq_free_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.irq_avail* }
%struct.irq_avail = type { i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"guest: release IRQs %#x->%#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl*, i32, i32)* @irq_free_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @irq_free_range(%struct.cxl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.irq_avail*, align 8
  store %struct.cxl* %0, %struct.cxl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %76

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %70, %16
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.cxl*, %struct.cxl** %5, align 8
  %20 = getelementptr inbounds %struct.cxl, %struct.cxl* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %73

25:                                               ; preds = %17
  %26 = load %struct.cxl*, %struct.cxl** %5, align 8
  %27 = getelementptr inbounds %struct.cxl, %struct.cxl* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.irq_avail*, %struct.irq_avail** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %30, i64 %32
  store %struct.irq_avail* %33, %struct.irq_avail** %10, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %36 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %69

39:                                               ; preds = %25
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %40, %41
  %43 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %44 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %47 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %45, %48
  %50 = icmp sle i32 %42, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %39
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %54 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  store i32 %56, i32* %9, align 4
  %57 = load %struct.irq_avail*, %struct.irq_avail** %10, align 8
  %58 = getelementptr inbounds %struct.irq_avail, %struct.irq_avail* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @bitmap_clear(i32 %59, i32 %60, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %64, %65
  %67 = sub nsw i32 %66, 1
  %68 = call i32 @pr_devel(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %67)
  store i32 0, i32* %4, align 4
  br label %76

69:                                               ; preds = %39, %25
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %17

73:                                               ; preds = %17
  %74 = load i32, i32* @ENOENT, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %73, %51, %13
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @bitmap_clear(i32, i32, i32) #1

declare dso_local i32 @pr_devel(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
