; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mfd-core.c_mfd_add_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mfd-core.c_mfd_add_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mfd_cell = type { i32 }
%struct.resource = type { i32 }
%struct.irq_domain = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfd_add_devices(%struct.device* %0, i32 %1, %struct.mfd_cell* %2, i32 %3, %struct.resource* %4, i32 %5, %struct.irq_domain* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mfd_cell*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.resource*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.irq_domain*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store %struct.device* %0, %struct.device** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.mfd_cell* %2, %struct.mfd_cell** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.resource* %4, %struct.resource** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.irq_domain* %6, %struct.irq_domain** %15, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kcalloc(i32 %19, i32 4, i32 %20)
  store i32* %21, i32** %18, align 8
  %22 = load i32*, i32** %18, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %8, align 4
  br label %71

27:                                               ; preds = %7
  store i32 0, i32* %16, align 4
  br label %28

28:                                               ; preds = %56, %27
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %59

32:                                               ; preds = %28
  %33 = load i32*, i32** %18, align 8
  %34 = load i32, i32* %16, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @atomic_set(i32* %36, i32 0)
  %38 = load %struct.device*, %struct.device** %9, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.mfd_cell*, %struct.mfd_cell** %11, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %40, i64 %42
  %44 = load i32*, i32** %18, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load %struct.resource*, %struct.resource** %13, align 8
  %49 = load i32, i32* %14, align 4
  %50 = load %struct.irq_domain*, %struct.irq_domain** %15, align 8
  %51 = call i32 @mfd_add_device(%struct.device* %38, i32 %39, %struct.mfd_cell* %43, i32* %47, %struct.resource* %48, i32 %49, %struct.irq_domain* %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %32
  br label %60

55:                                               ; preds = %32
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %16, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %16, align 4
  br label %28

59:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %71

60:                                               ; preds = %54
  %61 = load i32, i32* %16, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load %struct.device*, %struct.device** %9, align 8
  %65 = call i32 @mfd_remove_devices(%struct.device* %64)
  br label %69

66:                                               ; preds = %60
  %67 = load i32*, i32** %18, align 8
  %68 = call i32 @kfree(i32* %67)
  br label %69

69:                                               ; preds = %66, %63
  %70 = load i32, i32* %17, align 4
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %69, %59, %24
  %72 = load i32, i32* %8, align 4
  ret i32 %72
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mfd_add_device(%struct.device*, i32, %struct.mfd_cell*, i32*, %struct.resource*, i32, %struct.irq_domain*) #1

declare dso_local i32 @mfd_remove_devices(%struct.device*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
