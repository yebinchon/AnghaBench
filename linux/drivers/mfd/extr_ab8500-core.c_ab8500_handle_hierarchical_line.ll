; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_ab8500_handle_hierarchical_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ab8500-core.c_ab8500_handle_hierarchical_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ab8500 = type { i32, i32*, i32*, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Register offset 0x%2x not declared\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@AB8500_INT_GPIO6F = common dso_local global i32 0, align 4
@AB8500_INT_GPIO41F = common dso_local global i32 0, align 4
@AB9540_INT_GPIO50F = common dso_local global i32 0, align 4
@AB9540_INT_GPIO54F = common dso_local global i32 0, align 4
@AB8540_INT_GPIO43F = common dso_local global i32 0, align 4
@AB8540_INT_GPIO44F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ab8500*, i32, i32)* @ab8500_handle_hierarchical_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_handle_hierarchical_line(%struct.ab8500* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ab8500*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ab8500* %0, %struct.ab8500** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %29, %3
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.ab8500*, %struct.ab8500** %5, align 8
  %14 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.ab8500*, %struct.ab8500** %5, align 8
  %19 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %32

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  br label %11

32:                                               ; preds = %27, %11
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.ab8500*, %struct.ab8500** %5, align 8
  %35 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.ab8500*, %struct.ab8500** %5, align 8
  %40 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @ENXIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %112

46:                                               ; preds = %32
  %47 = load %struct.ab8500*, %struct.ab8500** %5, align 8
  %48 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = xor i32 %53, -1
  %55 = load i32, i32* %7, align 4
  %56 = and i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %104, %46
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %111

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @__ffs(i32 %61)
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %10, align 4
  %64 = shl i32 %63, 3
  %65 = load i32, i32* %8, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = shl i32 1, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @AB8500_INT_GPIO6F, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %60
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @AB8500_INT_GPIO41F, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %75
  %80 = load i32, i32* %9, align 4
  %81 = sub nsw i32 %80, 16
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %75, %60
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @AB9540_INT_GPIO50F, align 4
  %85 = icmp sge i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @AB9540_INT_GPIO54F, align 4
  %89 = icmp sle i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %91, 8
  store i32 %92, i32* %9, align 4
  br label %93

93:                                               ; preds = %90, %86, %82
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @AB8540_INT_GPIO43F, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %101, label %97

97:                                               ; preds = %93
  %98 = load i32, i32* %9, align 4
  %99 = load i32, i32* @AB8540_INT_GPIO44F, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %97, %93
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %101, %97
  %105 = load %struct.ab8500*, %struct.ab8500** %5, align 8
  %106 = getelementptr inbounds %struct.ab8500, %struct.ab8500* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @irq_create_mapping(i32 %107, i32 %108)
  %110 = call i32 @handle_nested_irq(i32 %109)
  br label %57

111:                                              ; preds = %57
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %38
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @handle_nested_irq(i32) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
