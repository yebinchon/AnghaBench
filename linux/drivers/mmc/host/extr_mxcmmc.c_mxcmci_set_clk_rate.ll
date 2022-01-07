; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_set_clk_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_set_clk_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxcmci_host = type { i32, i32 }

@MMC_REG_CLK_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"scaler: %d divider: %d in: %d out: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxcmci_host*, i32)* @mxcmci_set_clk_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxcmci_set_clk_rate(%struct.mxcmci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mxcmci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mxcmci_host* %0, %struct.mxcmci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %9 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %10 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_get_rate(i32 %11)
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %52, %2
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 2048
  br i1 %15, label %16, label %53

16:                                               ; preds = %13
  store i32 1, i32* %5, align 4
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i32, i32* %5, align 4
  %19 = icmp ule i32 %18, 15
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, 1
  %24 = udiv i32 %21, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32, i32* %6, align 4
  %29 = mul nsw i32 %28, 2
  %30 = load i32, i32* %8, align 4
  %31 = sdiv i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %27, %20
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %41

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %17

41:                                               ; preds = %36, %17
  %42 = load i32, i32* %5, align 4
  %43 = icmp ult i32 %42, 16
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  br label %53

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 1, i32* %6, align 4
  br label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49, %48
  br label %13

53:                                               ; preds = %44, %13
  %54 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = shl i32 %55, 4
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @MMC_REG_CLK_RATE, align 4
  %60 = call i32 @mxcmci_writew(%struct.mxcmci_host* %54, i32 %58, i32 %59)
  %61 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %62 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @mmc_dev(i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %67, i32 %68)
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @mxcmci_writew(%struct.mxcmci_host*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
