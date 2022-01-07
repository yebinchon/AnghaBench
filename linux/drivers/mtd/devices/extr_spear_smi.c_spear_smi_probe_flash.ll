; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_spear_smi.c_spear_smi_probe_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_spear_smi.c_spear_smi_probe_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear_smi = type { i32, i32, i64, i32 }

@SMI_PROBE_TIMEOUT = common dso_local global i32 0, align 4
@SMI_CR1 = common dso_local global i64 0, align 8
@SW_MODE = common dso_local global i32 0, align 4
@OPCODE_RDID = common dso_local global i32 0, align 4
@SMI_TR = common dso_local global i64 0, align 8
@BANK_SHIFT = common dso_local global i32 0, align 4
@SEND = common dso_local global i32 0, align 4
@TX_LEN_SHIFT = common dso_local global i32 0, align 4
@RX_LEN_SHIFT = common dso_local global i32 0, align 4
@TFIE = common dso_local global i32 0, align 4
@SMI_CR2 = common dso_local global i64 0, align 8
@TFF = common dso_local global i32 0, align 4
@SMI_CMD_TIMEOUT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SMI_RR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spear_smi*, i32)* @spear_smi_probe_flash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_smi_probe_flash(%struct.spear_smi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spear_smi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.spear_smi* %0, %struct.spear_smi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @SMI_PROBE_TIMEOUT, align 4
  %11 = call i32 @spear_smi_wait_till_ready(%struct.spear_smi* %8, i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %111

16:                                               ; preds = %2
  %17 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %18 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %21 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %20, i32 0, i32 0
  store i32 0, i32* %21, align 8
  %22 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %23 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SMI_CR1, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SW_MODE, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %32 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SMI_CR1, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load i32, i32* @OPCODE_RDID, align 4
  %38 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %39 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SMI_TR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 %37, i64 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @BANK_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* @SEND, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @TX_LEN_SHIFT, align 4
  %50 = shl i32 1, %49
  %51 = or i32 %48, %50
  %52 = load i32, i32* @RX_LEN_SHIFT, align 4
  %53 = shl i32 3, %52
  %54 = or i32 %51, %53
  %55 = load i32, i32* @TFIE, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %59 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SMI_CR2, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  %64 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %65 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %68 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @TFF, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @SMI_CMD_TIMEOUT, align 4
  %73 = call i32 @wait_event_interruptible_timeout(i32 %66, i32 %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp sle i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %16
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %90

79:                                               ; preds = %16
  %80 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %81 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SMI_RR, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @readl(i64 %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = and i32 %86, 16777215
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @get_flash_index(i32 %88)
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %79, %76
  %91 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %92 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @SMI_CR1, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @readl(i64 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @SW_MODE, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %97, %99
  %101 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %102 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SMI_CR1, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 %100, i64 %105)
  %107 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %108 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %107, i32 0, i32 1
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %90, %14
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @spear_smi_wait_till_ready(%struct.spear_smi*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @get_flash_index(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
