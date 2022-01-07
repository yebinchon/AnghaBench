; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_buffer.c_hl_cb_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_buffer.c_hl_cb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_cb = type { i32, i64, i32 }
%struct.hl_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* (%struct.hl_device*, i32, i32*, i32)* }

@HL_KERNEL_ASID_ID = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"failed to allocate %d of dma memory for CB\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hl_cb* (%struct.hl_device*, i32, i32)* @hl_cb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hl_cb* @hl_cb_alloc(%struct.hl_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hl_cb*, align 8
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hl_cb*, align 8
  %9 = alloca i8*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @HL_KERNEL_ASID_ID, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.hl_cb* @kzalloc(i32 24, i32 %14)
  store %struct.hl_cb* %15, %struct.hl_cb** %8, align 8
  br label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.hl_cb* @kzalloc(i32 24, i32 %17)
  store %struct.hl_cb* %18, %struct.hl_cb** %8, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.hl_cb*, %struct.hl_cb** %8, align 8
  %21 = icmp ne %struct.hl_cb* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  store %struct.hl_cb* null, %struct.hl_cb** %4, align 8
  br label %73

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @HL_KERNEL_ASID_ID, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %29 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8* (%struct.hl_device*, i32, i32*, i32)*, i8* (%struct.hl_device*, i32, i32*, i32)** %31, align 8
  %33 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.hl_cb*, %struct.hl_cb** %8, align 8
  %36 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %35, i32 0, i32 2
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call i8* %32(%struct.hl_device* %33, i32 %34, i32* %36, i32 %37)
  store i8* %38, i8** %9, align 8
  br label %53

39:                                               ; preds = %23
  %40 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %41 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i8* (%struct.hl_device*, i32, i32*, i32)*, i8* (%struct.hl_device*, i32, i32*, i32)** %43, align 8
  %45 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.hl_cb*, %struct.hl_cb** %8, align 8
  %48 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %47, i32 0, i32 2
  %49 = load i32, i32* @GFP_USER, align 4
  %50 = load i32, i32* @__GFP_ZERO, align 4
  %51 = or i32 %49, %50
  %52 = call i8* %44(%struct.hl_device* %45, i32 %46, i32* %48, i32 %51)
  store i8* %52, i8** %9, align 8
  br label %53

53:                                               ; preds = %39, %27
  %54 = load i8*, i8** %9, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %64, label %56

56:                                               ; preds = %53
  %57 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %58 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @dev_err(i32 %59, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.hl_cb*, %struct.hl_cb** %8, align 8
  %63 = call i32 @kfree(%struct.hl_cb* %62)
  store %struct.hl_cb* null, %struct.hl_cb** %4, align 8
  br label %73

64:                                               ; preds = %53
  %65 = load i8*, i8** %9, align 8
  %66 = ptrtoint i8* %65 to i64
  %67 = load %struct.hl_cb*, %struct.hl_cb** %8, align 8
  %68 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.hl_cb*, %struct.hl_cb** %8, align 8
  %71 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.hl_cb*, %struct.hl_cb** %8, align 8
  store %struct.hl_cb* %72, %struct.hl_cb** %4, align 8
  br label %73

73:                                               ; preds = %64, %56, %22
  %74 = load %struct.hl_cb*, %struct.hl_cb** %4, align 8
  ret %struct.hl_cb* %74
}

declare dso_local %struct.hl_cb* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.hl_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
