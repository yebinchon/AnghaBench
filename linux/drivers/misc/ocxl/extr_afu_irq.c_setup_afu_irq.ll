; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_afu_irq.c_setup_afu_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_afu_irq.c_setup_afu_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_context = type { i32 }
%struct.afu_irq = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [27 x i8] c"irq_create_mapping failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"hw_irq %d mapped to virq %u\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"ocxl-afu-%u\00", align 1
@afu_irq_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"request_irq failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocxl_context*, %struct.afu_irq*)* @setup_afu_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_afu_irq(%struct.ocxl_context* %0, %struct.afu_irq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ocxl_context*, align 8
  %5 = alloca %struct.afu_irq*, align 8
  %6 = alloca i32, align 4
  store %struct.ocxl_context* %0, %struct.ocxl_context** %4, align 8
  store %struct.afu_irq* %1, %struct.afu_irq** %5, align 8
  %7 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %8 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @irq_create_mapping(i32* null, i32 %9)
  %11 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %12 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %14 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %74

21:                                               ; preds = %2
  %22 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %23 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %26 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %31 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32* @kasprintf(i32 %29, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %35 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %37 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %21
  %41 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %42 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @irq_dispose_mapping(i32 %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %74

47:                                               ; preds = %21
  %48 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %49 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @afu_irq_handler, align 4
  %52 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %53 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %56 = call i32 @request_irq(i32 %50, i32 %51, i32 0, i32* %54, %struct.afu_irq* %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %73

59:                                               ; preds = %47
  %60 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %61 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @kfree(i32* %62)
  %64 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %65 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = load %struct.afu_irq*, %struct.afu_irq** %5, align 8
  %67 = getelementptr inbounds %struct.afu_irq, %struct.afu_irq* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @irq_dispose_mapping(i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %74

73:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %73, %59, %40, %17
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @irq_create_mapping(i32*, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32*, %struct.afu_irq*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
