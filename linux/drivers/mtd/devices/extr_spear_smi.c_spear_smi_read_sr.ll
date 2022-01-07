; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_spear_smi.c_spear_smi_read_sr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_spear_smi.c_spear_smi_read_sr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear_smi = type { i32, i32, i64, i32 }

@SMI_CR1 = common dso_local global i64 0, align 8
@SW_MODE = common dso_local global i32 0, align 4
@WB_MODE = common dso_local global i32 0, align 4
@BANK_SHIFT = common dso_local global i32 0, align 4
@RD_STATUS_REG = common dso_local global i32 0, align 4
@TFIE = common dso_local global i32 0, align 4
@SMI_CR2 = common dso_local global i64 0, align 8
@TFF = common dso_local global i32 0, align 4
@SMI_CMD_TIMEOUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spear_smi*, i32)* @spear_smi_read_sr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_smi_read_sr(%struct.spear_smi* %0, i32 %1) #0 {
  %3 = alloca %struct.spear_smi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.spear_smi* %0, %struct.spear_smi** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %8 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %7, i32 0, i32 1
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %11 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %13 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SMI_CR1, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SW_MODE, align 4
  %20 = load i32, i32* @WB_MODE, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %18, %22
  %24 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %25 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SMI_CR1, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @BANK_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* @RD_STATUS_REG, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @TFIE, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %38 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SMI_CR2, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
  %43 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %44 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %47 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @TFF, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @SMI_CMD_TIMEOUT, align 4
  %52 = call i32 @wait_event_interruptible_timeout(i32 %45, i32 %50, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %2
  %56 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %57 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, 65535
  store i32 %59, i32* %5, align 4
  br label %67

60:                                               ; preds = %2
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @ETIMEDOUT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %60
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %70 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SMI_CR1, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %76 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SMI_CR2, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 0, i64 %79)
  %81 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %82 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
