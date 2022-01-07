; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ssbi.c_ssbi_pa_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ssbi.c_ssbi_pa_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssbi = type { i32 }

@SSBI_TIMEOUT_US = common dso_local global i32 0, align 4
@SSBI_PA_CMD = common dso_local global i32 0, align 4
@SSBI_PA_RD_STATUS = common dso_local global i32 0, align 4
@SSBI_PA_RD_STATUS_TRANS_DENIED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@SSBI_PA_RD_STATUS_TRANS_DONE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssbi*, i32, i32*)* @ssbi_pa_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssbi_pa_transfer(%struct.ssbi* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssbi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ssbi* %0, %struct.ssbi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @SSBI_TIMEOUT_US, align 4
  store i32 %10, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.ssbi*, %struct.ssbi** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @SSBI_PA_CMD, align 4
  %14 = call i32 @ssbi_writel(%struct.ssbi* %11, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %43, %3
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %8, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %15
  %20 = load %struct.ssbi*, %struct.ssbi** %5, align 8
  %21 = load i32, i32* @SSBI_PA_RD_STATUS, align 4
  %22 = call i32 @ssbi_readl(%struct.ssbi* %20, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SSBI_PA_RD_STATUS_TRANS_DENIED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EPERM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %48

30:                                               ; preds = %19
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @SSBI_PA_RD_STATUS_TRANS_DONE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = and i32 %39, 255
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %35
  store i32 0, i32* %4, align 4
  br label %48

43:                                               ; preds = %30
  %44 = call i32 @udelay(i32 1)
  br label %15

45:                                               ; preds = %15
  %46 = load i32, i32* @ETIMEDOUT, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %45, %42, %27
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @ssbi_writel(%struct.ssbi*, i32, i32) #1

declare dso_local i32 @ssbi_readl(%struct.ssbi*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
