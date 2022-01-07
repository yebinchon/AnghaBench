; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_int_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_set_int_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32 }

@int_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"VF not loaded since interrupt mode not msix\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Failed to enable multiple MSI-X (%d), set number of queues to %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"set number of queues to 1\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"unknown value in int_mode module parameter\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_set_int_mode(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %6 = call i64 @IS_VF(%struct.bnx2x* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i32, i32* @int_mode, align 4
  %10 = icmp ne i32 %9, 128
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %62

15:                                               ; preds = %8, %1
  %16 = load i32, i32* @int_mode, align 4
  switch i32 %16, label %57 [
    i32 128, label %17
    i32 129, label %41
    i32 130, label %44
  ]

17:                                               ; preds = %15
  %18 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %19 = call i32 @bnx2x_enable_msix(%struct.bnx2x* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %62

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = call i64 @IS_VF(%struct.bnx2x* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %62

32:                                               ; preds = %26, %23
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 1, %38
  %40 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %39)
  br label %41

41:                                               ; preds = %15, %32
  %42 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %43 = call i32 @bnx2x_enable_msi(%struct.bnx2x* %42)
  br label %44

44:                                               ; preds = %15, %41
  %45 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %46 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %45, i32 0, i32 2
  store i32 1, i32* %46, align 4
  %47 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %48 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %51 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %49, %52
  %54 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %55 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %61

57:                                               ; preds = %15
  %58 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %62

61:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %57, %30, %22, %11
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i64 @IS_VF(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @bnx2x_enable_msix(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*, ...) #1

declare dso_local i32 @bnx2x_enable_msi(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
