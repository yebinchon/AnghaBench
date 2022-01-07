; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_ab8500_irq_unmask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_ab8500_irq_unmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }
%struct.ab8500 = type { i32* }

@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@AB8500_INT_GPIO6R = common dso_local global i32 0, align 4
@AB8500_INT_GPIO41R = common dso_local global i32 0, align 4
@AB9540_INT_GPIO50R = common dso_local global i32 0, align 4
@AB9540_INT_GPIO54R = common dso_local global i32 0, align 4
@AB8540_INT_GPIO43R = common dso_local global i32 0, align 4
@AB8540_INT_GPIO44R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ab8500_irq_unmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ab8500_irq_unmask(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca %struct.ab8500*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %8 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %9 = call %struct.ab8500* @irq_data_get_irq_chip_data(%struct.irq_data* %8)
  store %struct.ab8500* %9, %struct.ab8500** %3, align 8
  %10 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %11 = call i32 @irqd_get_trigger_type(%struct.irq_data* %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %13 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = sdiv i32 %15, 8
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = srem i32 %17, 8
  %19 = shl i32 1, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %28 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %26
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %24, %1
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %114

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @AB8500_INT_GPIO6R, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %40
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @AB8500_INT_GPIO41R, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %52 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %50
  store i32 %59, i32* %57, align 4
  br label %113

60:                                               ; preds = %44, %40
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @AB9540_INT_GPIO50R, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %60
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @AB9540_INT_GPIO54R, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %72 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = and i32 %78, %70
  store i32 %79, i32* %77, align 4
  br label %112

80:                                               ; preds = %64, %60
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @AB8540_INT_GPIO43R, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* @AB8540_INT_GPIO44R, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %100

88:                                               ; preds = %84, %80
  %89 = load i32, i32* %7, align 4
  %90 = shl i32 %89, 1
  %91 = xor i32 %90, -1
  %92 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %93 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %91
  store i32 %99, i32* %97, align 4
  br label %111

100:                                              ; preds = %84
  %101 = load i32, i32* %7, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %104 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, %102
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %100, %88
  br label %112

112:                                              ; preds = %111, %68
  br label %113

113:                                              ; preds = %112, %48
  br label %125

114:                                              ; preds = %35
  %115 = load i32, i32* %7, align 4
  %116 = xor i32 %115, -1
  %117 = load %struct.ab8500*, %struct.ab8500** %3, align 8
  %118 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, %116
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %114, %113
  ret void
}

declare dso_local %struct.ab8500* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @irqd_get_trigger_type(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
