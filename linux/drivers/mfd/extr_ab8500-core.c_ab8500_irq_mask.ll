; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_ab8500_irq_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_ab8500_irq_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.ab8500 = type { i32* }

@AB8500_INT_GPIO6R = common dso_local global i32 0, align 4
@AB8500_INT_GPIO41R = common dso_local global i32 0, align 4
@AB9540_INT_GPIO50R = common dso_local global i32 0, align 4
@AB9540_INT_GPIO54R = common dso_local global i32 0, align 4
@AB8540_INT_GPIO43R = common dso_local global i32 0, align 4
@AB8540_INT_GPIO44R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ab8500_irq_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_irq_mask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.ab8500*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %7 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %8 = call %struct.ab8500* @irq_data_get_irq_chip_data(%struct.irq_data* %7)
  store %struct.ab8500* %8, %struct.ab8500** %3, align 8
  %9 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %10 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sdiv i32 %12, 8
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = srem i32 %14, 8
  %16 = shl i32 1, %15
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %19 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %17
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @AB8500_INT_GPIO6R, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %1
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @AB8500_INT_GPIO41R, align 4
  %32 = icmp sle i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %36 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, 2
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %34
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %33, %29, %1
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @AB9540_INT_GPIO50R, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %44
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @AB9540_INT_GPIO54R, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %55 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %53
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %52, %48, %44
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @AB8540_INT_GPIO43R, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @AB8540_INT_GPIO44R, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67, %63
  %72 = load i32, i32* %6, align 4
  %73 = shl i32 %72, 1
  %74 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %75 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %73
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %71, %67
  ret void
}

declare dso_local %struct.ab8500* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
