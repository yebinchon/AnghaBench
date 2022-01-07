; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_spear_smi.c_spear_smi_erase_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_spear_smi.c_spear_smi_erase_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spear_smi = type { i32, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@SMI_MAX_TIME_OUT = common dso_local global i32 0, align 4
@SMI_CR1 = common dso_local global i64 0, align 8
@SW_MODE = common dso_local global i32 0, align 4
@WB_MODE = common dso_local global i32 0, align 4
@SMI_TR = common dso_local global i64 0, align 8
@BANK_SHIFT = common dso_local global i32 0, align 4
@SEND = common dso_local global i32 0, align 4
@TFIE = common dso_local global i32 0, align 4
@TX_LEN_SHIFT = common dso_local global i32 0, align 4
@SMI_CR2 = common dso_local global i64 0, align 8
@TFF = common dso_local global i32 0, align 4
@SMI_CMD_TIMEOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"sector erase failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spear_smi*, i32, i32, i32)* @spear_smi_erase_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_smi_erase_sector(%struct.spear_smi* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spear_smi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.spear_smi* %0, %struct.spear_smi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.spear_smi*, %struct.spear_smi** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @SMI_MAX_TIME_OUT, align 4
  %15 = call i32 @spear_smi_wait_till_ready(%struct.spear_smi* %12, i32 %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %11, align 4
  store i32 %19, i32* %5, align 4
  br label %117

20:                                               ; preds = %4
  %21 = load %struct.spear_smi*, %struct.spear_smi** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @spear_smi_write_enable(%struct.spear_smi* %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %117

28:                                               ; preds = %20
  %29 = load %struct.spear_smi*, %struct.spear_smi** %6, align 8
  %30 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %29, i32 0, i32 1
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.spear_smi*, %struct.spear_smi** %6, align 8
  %33 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SMI_CR1, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @SW_MODE, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @WB_MODE, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load %struct.spear_smi*, %struct.spear_smi** %6, align 8
  %45 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SMI_CR1, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.spear_smi*, %struct.spear_smi** %6, align 8
  %52 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SMI_TR, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 %50, i64 %55)
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @BANK_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* @SEND, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @TFIE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @TX_LEN_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = or i32 %63, %66
  %68 = load %struct.spear_smi*, %struct.spear_smi** %6, align 8
  %69 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SMI_CR2, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  %74 = load %struct.spear_smi*, %struct.spear_smi** %6, align 8
  %75 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.spear_smi*, %struct.spear_smi** %6, align 8
  %78 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @TFF, align 4
  %81 = and i32 %79, %80
  %82 = load i32, i32* @SMI_CMD_TIMEOUT, align 4
  %83 = call i32 @wait_event_interruptible_timeout(i32 %76, i32 %81, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %28
  %87 = load i32, i32* @EIO, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %11, align 4
  %89 = load %struct.spear_smi*, %struct.spear_smi** %6, align 8
  %90 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %89, i32 0, i32 3
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = call i32 @dev_err(i32* %92, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %99

94:                                               ; preds = %28
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %97, %94
  br label %99

99:                                               ; preds = %98, %86
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.spear_smi*, %struct.spear_smi** %6, align 8
  %102 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @SMI_CR1, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 %100, i64 %105)
  %107 = load %struct.spear_smi*, %struct.spear_smi** %6, align 8
  %108 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SMI_CR2, align 8
  %111 = add nsw i64 %109, %110
  %112 = call i32 @writel(i32 0, i64 %111)
  %113 = load %struct.spear_smi*, %struct.spear_smi** %6, align 8
  %114 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %113, i32 0, i32 1
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load i32, i32* %11, align 4
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %99, %26, %18
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @spear_smi_wait_till_ready(%struct.spear_smi*, i32, i32) #1

declare dso_local i32 @spear_smi_write_enable(%struct.spear_smi*, i32) #1

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
