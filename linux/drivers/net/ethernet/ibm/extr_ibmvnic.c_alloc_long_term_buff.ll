; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_alloc_long_term_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_alloc_long_term_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ibmvnic_long_term_buff = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Couldn't alloc long term buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Couldn't map long term buffer,rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*, %struct.ibmvnic_long_term_buff*, i32)* @alloc_long_term_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_long_term_buff(%struct.ibmvnic_adapter* %0, %struct.ibmvnic_long_term_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibmvnic_adapter*, align 8
  %6 = alloca %struct.ibmvnic_long_term_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %5, align 8
  store %struct.ibmvnic_long_term_buff* %1, %struct.ibmvnic_long_term_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %6, align 8
  %16 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.device*, %struct.device** %8, align 8
  %18 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %6, align 8
  %19 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %6, align 8
  %22 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %21, i32 0, i32 1
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32 @dma_alloc_coherent(%struct.device* %17, i32 %20, i32* %22, i32 %23)
  %25 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %6, align 8
  %26 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %6, align 8
  %28 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %3
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %101

36:                                               ; preds = %3
  %37 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %38 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %6, align 8
  %41 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %47 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %46, i32 0, i32 1
  %48 = call i32 @init_completion(i32* %47)
  %49 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %50 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %6, align 8
  %51 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %6, align 8
  %54 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %6, align 8
  %57 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @send_request_map(%struct.ibmvnic_adapter* %49, i32 %52, i32 %55, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %36
  %63 = load %struct.device*, %struct.device** %8, align 8
  %64 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %6, align 8
  %65 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %6, align 8
  %68 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %6, align 8
  %71 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dma_free_coherent(%struct.device* %63, i32 %66, i32 %69, i32 %72)
  %74 = load i32, i32* %9, align 4
  store i32 %74, i32* %4, align 4
  br label %101

75:                                               ; preds = %36
  %76 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %77 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %76, i32 0, i32 1
  %78 = call i32 @wait_for_completion(i32* %77)
  %79 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %80 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %75
  %84 = load %struct.device*, %struct.device** %8, align 8
  %85 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %86 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  %89 = load %struct.device*, %struct.device** %8, align 8
  %90 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %6, align 8
  %91 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %6, align 8
  %94 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ibmvnic_long_term_buff*, %struct.ibmvnic_long_term_buff** %6, align 8
  %97 = getelementptr inbounds %struct.ibmvnic_long_term_buff, %struct.ibmvnic_long_term_buff* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @dma_free_coherent(%struct.device* %89, i32 %92, i32 %95, i32 %98)
  store i32 -1, i32* %4, align 4
  br label %101

100:                                              ; preds = %75
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %83, %62, %31
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @send_request_map(%struct.ibmvnic_adapter*, i32, i32, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
