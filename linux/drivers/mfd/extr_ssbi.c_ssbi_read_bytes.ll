; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ssbi.c_ssbi_read_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ssbi.c_ssbi_read_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssbi = type { i64 }

@SSBI_CMD_RDWRN = common dso_local global i32 0, align 4
@MSM_SBI_CTRL_SSBI2 = common dso_local global i64 0, align 8
@SSBI2_MODE2 = common dso_local global i32 0, align 4
@SSBI_STATUS_READY = common dso_local global i32 0, align 4
@SSBI2_CMD = common dso_local global i32 0, align 4
@SSBI_STATUS_RD_READY = common dso_local global i32 0, align 4
@SSBI2_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ssbi*, i32, i32*, i32)* @ssbi_read_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssbi_read_bytes(%struct.ssbi* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ssbi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ssbi* %0, %struct.ssbi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @SSBI_CMD_RDWRN, align 4
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 255
  %15 = shl i32 %14, 16
  %16 = or i32 %12, %15
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.ssbi*, %struct.ssbi** %5, align 8
  %18 = getelementptr inbounds %struct.ssbi, %struct.ssbi* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MSM_SBI_CTRL_SSBI2, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %4
  %23 = load %struct.ssbi*, %struct.ssbi** %5, align 8
  %24 = load i32, i32* @SSBI2_MODE2, align 4
  %25 = call i32 @ssbi_readl(%struct.ssbi* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @SET_SSBI_MODE2_REG_ADDR_15_8(i32 %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.ssbi*, %struct.ssbi** %5, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @SSBI2_MODE2, align 4
  %32 = call i32 @ssbi_writel(%struct.ssbi* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %22, %4
  br label %34

34:                                               ; preds = %55, %33
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %34
  %38 = load %struct.ssbi*, %struct.ssbi** %5, align 8
  %39 = load i32, i32* @SSBI_STATUS_READY, align 4
  %40 = call i32 @ssbi_wait_mask(%struct.ssbi* %38, i32 %39, i32 0)
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %65

44:                                               ; preds = %37
  %45 = load %struct.ssbi*, %struct.ssbi** %5, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @SSBI2_CMD, align 4
  %48 = call i32 @ssbi_writel(%struct.ssbi* %45, i32 %46, i32 %47)
  %49 = load %struct.ssbi*, %struct.ssbi** %5, align 8
  %50 = load i32, i32* @SSBI_STATUS_RD_READY, align 4
  %51 = call i32 @ssbi_wait_mask(%struct.ssbi* %49, i32 %50, i32 0)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %65

55:                                               ; preds = %44
  %56 = load %struct.ssbi*, %struct.ssbi** %5, align 8
  %57 = load i32, i32* @SSBI2_RD, align 4
  %58 = call i32 @ssbi_readl(%struct.ssbi* %56, i32 %57)
  %59 = and i32 %58, 255
  %60 = load i32*, i32** %7, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  br label %34

64:                                               ; preds = %34
  br label %65

65:                                               ; preds = %64, %54, %43
  %66 = load i32, i32* %10, align 4
  ret i32 %66
}

declare dso_local i32 @ssbi_readl(%struct.ssbi*, i32) #1

declare dso_local i32 @SET_SSBI_MODE2_REG_ADDR_15_8(i32, i32) #1

declare dso_local i32 @ssbi_writel(%struct.ssbi*, i32, i32) #1

declare dso_local i32 @ssbi_wait_mask(%struct.ssbi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
