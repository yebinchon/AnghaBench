; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_get_userptr_from_host_va.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_memory.c_get_userptr_from_host_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.hl_device*, i32, i32, i32)* }
%struct.hl_mem_in = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.hl_userptr = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to pin host memory\0A\00", align 1
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to map sgt with DMA region\0A\00", align 1
@VM_TYPE_USERPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, %struct.hl_mem_in*, %struct.hl_userptr**)* @get_userptr_from_host_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_userptr_from_host_va(%struct.hl_device* %0, %struct.hl_mem_in* %1, %struct.hl_userptr** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca %struct.hl_mem_in*, align 8
  %7 = alloca %struct.hl_userptr**, align 8
  %8 = alloca %struct.hl_userptr*, align 8
  %9 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store %struct.hl_mem_in* %1, %struct.hl_mem_in** %6, align 8
  store %struct.hl_userptr** %2, %struct.hl_userptr*** %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.hl_userptr* @kzalloc(i32 24, i32 %10)
  store %struct.hl_userptr* %11, %struct.hl_userptr** %8, align 8
  %12 = load %struct.hl_userptr*, %struct.hl_userptr** %8, align 8
  %13 = icmp ne %struct.hl_userptr* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %9, align 4
  br label %80

17:                                               ; preds = %3
  %18 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %19 = load %struct.hl_mem_in*, %struct.hl_mem_in** %6, align 8
  %20 = getelementptr inbounds %struct.hl_mem_in, %struct.hl_mem_in* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hl_mem_in*, %struct.hl_mem_in** %6, align 8
  %24 = getelementptr inbounds %struct.hl_mem_in, %struct.hl_mem_in* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hl_userptr*, %struct.hl_userptr** %8, align 8
  %28 = call i32 @hl_pin_host_memory(%struct.hl_device* %18, i32 %22, i32 %26, %struct.hl_userptr* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %17
  %32 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %33 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %77

36:                                               ; preds = %17
  %37 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %38 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32 (%struct.hl_device*, i32, i32, i32)*, i32 (%struct.hl_device*, i32, i32, i32)** %40, align 8
  %42 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %43 = load %struct.hl_userptr*, %struct.hl_userptr** %8, align 8
  %44 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %43, i32 0, i32 3
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hl_userptr*, %struct.hl_userptr** %8, align 8
  %49 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %48, i32 0, i32 3
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %54 = call i32 %41(%struct.hl_device* %42, i32 %47, i32 %52, i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %36
  %58 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %59 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %73

62:                                               ; preds = %36
  %63 = load %struct.hl_userptr*, %struct.hl_userptr** %8, align 8
  %64 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %66 = load %struct.hl_userptr*, %struct.hl_userptr** %8, align 8
  %67 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @VM_TYPE_USERPTR, align 4
  %69 = load %struct.hl_userptr*, %struct.hl_userptr** %8, align 8
  %70 = getelementptr inbounds %struct.hl_userptr, %struct.hl_userptr* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.hl_userptr*, %struct.hl_userptr** %8, align 8
  %72 = load %struct.hl_userptr**, %struct.hl_userptr*** %7, align 8
  store %struct.hl_userptr* %71, %struct.hl_userptr** %72, align 8
  store i32 0, i32* %4, align 4
  br label %82

73:                                               ; preds = %57
  %74 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %75 = load %struct.hl_userptr*, %struct.hl_userptr** %8, align 8
  %76 = call i32 @hl_unpin_host_memory(%struct.hl_device* %74, %struct.hl_userptr* %75)
  br label %77

77:                                               ; preds = %73, %31
  %78 = load %struct.hl_userptr*, %struct.hl_userptr** %8, align 8
  %79 = call i32 @kfree(%struct.hl_userptr* %78)
  br label %80

80:                                               ; preds = %77, %14
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %62
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.hl_userptr* @kzalloc(i32, i32) #1

declare dso_local i32 @hl_pin_host_memory(%struct.hl_device*, i32, i32, %struct.hl_userptr*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @hl_unpin_host_memory(%struct.hl_device*, %struct.hl_userptr*) #1

declare dso_local i32 @kfree(%struct.hl_userptr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
