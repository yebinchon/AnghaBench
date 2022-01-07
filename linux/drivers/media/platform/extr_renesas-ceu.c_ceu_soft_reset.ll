; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_soft_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_soft_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceu_device = type { i32 }

@CEU_CAPSR = common dso_local global i32 0, align 4
@CEU_CAPSR_CPKIL = common dso_local global i32 0, align 4
@CEU_CSTSR = common dso_local global i32 0, align 4
@CEU_CSTRST_CPTON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"soft reset time out\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceu_device*)* @ceu_soft_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceu_soft_reset(%struct.ceu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceu_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ceu_device* %0, %struct.ceu_device** %3, align 8
  %5 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %6 = load i32, i32* @CEU_CAPSR, align 4
  %7 = load i32, i32* @CEU_CAPSR_CPKIL, align 4
  %8 = call i32 @ceu_write(%struct.ceu_device* %5, i32 %6, i32 %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %22, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp ult i32 %10, 100
  br i1 %11, label %12, label %25

12:                                               ; preds = %9
  %13 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %14 = load i32, i32* @CEU_CSTSR, align 4
  %15 = call i32 @ceu_read(%struct.ceu_device* %13, i32 %14)
  %16 = load i32, i32* @CEU_CSTRST_CPTON, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12
  br label %25

20:                                               ; preds = %12
  %21 = call i32 @udelay(i32 1)
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %4, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %9

25:                                               ; preds = %19, %9
  %26 = load i32, i32* %4, align 4
  %27 = icmp eq i32 %26, 100
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %30 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %55

35:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %49, %35
  %37 = load i32, i32* %4, align 4
  %38 = icmp ult i32 %37, 100
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %41 = load i32, i32* @CEU_CAPSR, align 4
  %42 = call i32 @ceu_read(%struct.ceu_device* %40, i32 %41)
  %43 = load i32, i32* @CEU_CAPSR_CPKIL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %55

47:                                               ; preds = %39
  %48 = call i32 @udelay(i32 1)
  br label %49

49:                                               ; preds = %47
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %36

52:                                               ; preds = %36
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %46, %28
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @ceu_write(%struct.ceu_device*, i32, i32) #1

declare dso_local i32 @ceu_read(%struct.ceu_device*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
