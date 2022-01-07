; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_release_hw_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_release_hw_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@HW_LOCK_MAX_RESOURCE_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"resource(0x%x) > HW_LOCK_MAX_RESOURCE_VALUE(0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MISC_REG_DRIVER_CONTROL_1 = common dso_local global i32 0, align 4
@MISC_REG_DRIVER_CONTROL_7 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"lock_status 0x%x resource_bit 0x%x. Unlock was called but lock wasn't taken!\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_release_hw_lock(%struct.bnx2x* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %13 = call i32 @BP_FUNC(%struct.bnx2x* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @HW_LOCK_MAX_RESOURCE_VALUE, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @HW_LOCK_MAX_RESOURCE_VALUE, align 4
  %20 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %56

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %24, 5
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @MISC_REG_DRIVER_CONTROL_1, align 4
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %28, 8
  %30 = add nsw i32 %27, %29
  store i32 %30, i32* %9, align 4
  br label %37

31:                                               ; preds = %23
  %32 = load i32, i32* @MISC_REG_DRIVER_CONTROL_7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 6
  %35 = mul nsw i32 %34, 8
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @REG_RD(%struct.bnx2x* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47)
  %49 = load i32, i32* @EFAULT, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %37
  %52 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @REG_WR(%struct.bnx2x* %52, i32 %53, i32 %54)
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %45, %17
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
