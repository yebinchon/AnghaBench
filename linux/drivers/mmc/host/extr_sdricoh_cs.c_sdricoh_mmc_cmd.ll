; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_mmc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_mmc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdricoh_host = type { i32 }

@R21C_STATUS = common dso_local global i32 0, align 4
@R204_CMD_ARG = common dso_local global i32 0, align 4
@R200_CMD = common dso_local global i32 0, align 4
@CMD_TIMEOUT = common dso_local global i32 0, align 4
@R2E4_STATUS_RESP = common dso_local global i32 0, align 4
@STATUS_CMD_FINISHED = common dso_local global i32 0, align 4
@STATUS_CMD_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdricoh_host*, i8, i32)* @sdricoh_mmc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdricoh_mmc_cmd(%struct.sdricoh_host* %0, i8 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.sdricoh_host*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sdricoh_host* %0, %struct.sdricoh_host** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.sdricoh_host*, %struct.sdricoh_host** %4, align 8
  %11 = load i32, i32* @R21C_STATUS, align 4
  %12 = call i32 @sdricoh_writel(%struct.sdricoh_host* %10, i32 %11, i32 24)
  %13 = load %struct.sdricoh_host*, %struct.sdricoh_host** %4, align 8
  %14 = load i32, i32* @R204_CMD_ARG, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @sdricoh_writel(%struct.sdricoh_host* %13, i32 %14, i32 %15)
  %17 = load %struct.sdricoh_host*, %struct.sdricoh_host** %4, align 8
  %18 = load i32, i32* @R200_CMD, align 4
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 16777216, %20
  %22 = call i32 @sdricoh_writel(%struct.sdricoh_host* %17, i32 %18, i32 %21)
  %23 = load i8, i8* %5, align 1
  %24 = icmp ne i8 %23, 0
  br i1 %24, label %25, label %60

25:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %44, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @CMD_TIMEOUT, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %47

30:                                               ; preds = %26
  %31 = load %struct.sdricoh_host*, %struct.sdricoh_host** %4, align 8
  %32 = load i32, i32* @R21C_STATUS, align 4
  %33 = call i32 @sdricoh_readl(%struct.sdricoh_host* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.sdricoh_host*, %struct.sdricoh_host** %4, align 8
  %35 = load i32, i32* @R2E4_STATUS_RESP, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @sdricoh_writel(%struct.sdricoh_host* %34, i32 %35, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @STATUS_CMD_FINISHED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %47

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %9, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %26

47:                                               ; preds = %42, %26
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @CMD_TIMEOUT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @STATUS_CMD_TIMEOUT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51, %47
  %57 = load i32, i32* @ETIMEDOUT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56, %51
  br label %60

60:                                               ; preds = %59, %3
  %61 = load i32, i32* %8, align 4
  ret i32 %61
}

declare dso_local i32 @sdricoh_writel(%struct.sdricoh_host*, i32, i32) #1

declare dso_local i32 @sdricoh_readl(%struct.sdricoh_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
