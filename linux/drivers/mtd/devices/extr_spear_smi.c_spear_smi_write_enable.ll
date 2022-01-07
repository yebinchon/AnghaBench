; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_spear_smi.c_spear_smi_write_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_spear_smi.c_spear_smi_write_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear_smi = type { i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@SMI_CR1 = common dso_local global i64 0, align 8
@SW_MODE = common dso_local global i32 0, align 4
@BANK_SHIFT = common dso_local global i32 0, align 4
@WE = common dso_local global i32 0, align 4
@TFIE = common dso_local global i32 0, align 4
@SMI_CR2 = common dso_local global i64 0, align 8
@TFF = common dso_local global i32 0, align 4
@SMI_CMD_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"smi controller failed on write enable\0A\00", align 1
@WM_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"couldn't enable write\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spear_smi*, i32)* @spear_smi_write_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_smi_write_enable(%struct.spear_smi* %0, i32 %1) #0 {
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
  %13 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SMI_CR1, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SW_MODE, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %23 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SMI_CR1, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @BANK_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* @WE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @TFIE, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %36 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SMI_CR2, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  %41 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %42 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %45 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @TFF, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @SMI_CMD_TIMEOUT, align 4
  %50 = call i32 @wait_event_interruptible_timeout(i32 %43, i32 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %53 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SMI_CR1, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 %51, i64 %56)
  %58 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %59 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SMI_CR2, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 0, i64 %62)
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %2
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  %69 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %70 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @dev_err(i32* %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %98

74:                                               ; preds = %2
  %75 = load i32, i32* %5, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %74
  %78 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %79 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @WM_SHIFT, align 4
  %83 = add nsw i32 %81, %82
  %84 = shl i32 1, %83
  %85 = and i32 %80, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %96

88:                                               ; preds = %77
  %89 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %90 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %89, i32 0, i32 2
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %88, %87
  br label %97

97:                                               ; preds = %96, %74
  br label %98

98:                                               ; preds = %97, %66
  %99 = load %struct.spear_smi*, %struct.spear_smi** %3, align 8
  %100 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %99, i32 0, i32 1
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @wait_event_interruptible_timeout(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
