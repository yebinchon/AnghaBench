; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_coresight.c_goya_coresight_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya_coresight.c_goya_coresight_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i64 }

@GOYA_PLDM_CORESIGHT_TIMEOUT_USEC = common dso_local global i32 0, align 4
@CORESIGHT_TIMEOUT_USEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Timeout while waiting for coresight, addr: 0x%llx, position: %d, up: %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, i32, i32, i32)* @goya_coresight_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_coresight_timeout(%struct.hl_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hl_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %14 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @GOYA_PLDM_CORESIGHT_TIMEOUT_USEC, align 4
  store i32 %18, i32* %12, align 4
  br label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @CORESIGHT_TIMEOUT_USEC, align 4
  store i32 %20, i32* %12, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = and i32 %28, %30
  br label %40

32:                                               ; preds = %21
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @BIT(i32 %34)
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  br label %40

40:                                               ; preds = %32, %27
  %41 = phi i32 [ %31, %27 ], [ %39, %32 ]
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @hl_poll_timeout(%struct.hl_device* %22, i32 %23, i32 %24, i32 %41, i32 1000, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %40
  %47 = load %struct.hl_device*, %struct.hl_device** %6, align 8
  %48 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @EFAULT, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %57

56:                                               ; preds = %40
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %46
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @hl_poll_timeout(%struct.hl_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
