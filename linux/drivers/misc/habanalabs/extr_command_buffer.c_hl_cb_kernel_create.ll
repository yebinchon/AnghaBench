; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_buffer.c_hl_cb_kernel_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_buffer.c_hl_cb_kernel_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_cb = type { i32 }
%struct.hl_device = type { i32, i32 }

@HL_KERNEL_ASID_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to allocate CB for the kernel driver %d\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Kernel CB handle invalid 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hl_cb* @hl_cb_kernel_create(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hl_cb*, align 8
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hl_cb*, align 8
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %10 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %11 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %10, i32 0, i32 0
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @HL_KERNEL_ASID_ID, align 4
  %14 = call i32 @hl_cb_create(%struct.hl_device* %9, i32* %11, i32 %12, i32* %6, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %19 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %21)
  store %struct.hl_cb* null, %struct.hl_cb** %3, align 8
  br label %51

23:                                               ; preds = %2
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, %24
  store i32 %26, i32* %6, align 4
  %27 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %28 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %29 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %28, i32 0, i32 0
  %30 = load i32, i32* %6, align 4
  %31 = call %struct.hl_cb* @hl_cb_get(%struct.hl_device* %27, i32* %29, i32 %30)
  store %struct.hl_cb* %31, %struct.hl_cb** %7, align 8
  %32 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %33 = icmp ne %struct.hl_cb* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @WARN(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  %39 = icmp ne %struct.hl_cb* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %23
  br label %43

41:                                               ; preds = %23
  %42 = load %struct.hl_cb*, %struct.hl_cb** %7, align 8
  store %struct.hl_cb* %42, %struct.hl_cb** %3, align 8
  br label %51

43:                                               ; preds = %40
  %44 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %45 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %46 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %45, i32 0, i32 0
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @PAGE_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = call i32 @hl_cb_destroy(%struct.hl_device* %44, i32* %46, i32 %49)
  store %struct.hl_cb* null, %struct.hl_cb** %3, align 8
  br label %51

51:                                               ; preds = %43, %41, %17
  %52 = load %struct.hl_cb*, %struct.hl_cb** %3, align 8
  ret %struct.hl_cb* %52
}

declare dso_local i32 @hl_cb_create(%struct.hl_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.hl_cb* @hl_cb_get(%struct.hl_device*, i32*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

declare dso_local i32 @hl_cb_destroy(%struct.hl_device*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
