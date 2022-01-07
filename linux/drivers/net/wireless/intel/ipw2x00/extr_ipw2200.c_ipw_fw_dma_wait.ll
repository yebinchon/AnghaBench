; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_fw_dma_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_fw_dma_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c">> :\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"sram_desc.last_cb_index:0x%08X\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Timeout\0A\00", align 1
@IPW_RESET_REG = common dso_local global i32 0, align 4
@IPW_RESET_REG_MASTER_DISABLED = common dso_local global i32 0, align 4
@IPW_RESET_REG_STOP_MASTER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"<< dmaWaitSync\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @ipw_fw_dma_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_fw_dma_wait(%struct.ipw_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %6, align 8
  %7 = call i32 @IPW_DEBUG_FW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %9 = call i64 @ipw_fw_dma_command_block_index(%struct.ipw_priv* %8)
  store i64 %9, i64* %4, align 8
  %10 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 (i8*, ...) @IPW_DEBUG_FW_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %42, %31, %1
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %19 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %17, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %16
  %24 = call i32 @udelay(i32 50)
  %25 = load i64, i64* %4, align 8
  store i64 %25, i64* %5, align 8
  %26 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %27 = call i64 @ipw_fw_dma_command_block_index(%struct.ipw_priv* %26)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i64 0, i64* %6, align 8
  br label %16

32:                                               ; preds = %23
  %33 = load i64, i64* %6, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %6, align 8
  %35 = icmp sgt i64 %34, 400
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = call i32 (i8*, ...) @IPW_DEBUG_FW_INFO(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %39 = call i32 @ipw_fw_dma_dump_command_block(%struct.ipw_priv* %38)
  %40 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %41 = call i32 @ipw_fw_dma_abort(%struct.ipw_priv* %40)
  store i32 -1, i32* %2, align 4
  br label %53

42:                                               ; preds = %32
  br label %16

43:                                               ; preds = %16
  %44 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %45 = call i32 @ipw_fw_dma_abort(%struct.ipw_priv* %44)
  %46 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %47 = load i32, i32* @IPW_RESET_REG, align 4
  %48 = load i32, i32* @IPW_RESET_REG_MASTER_DISABLED, align 4
  %49 = load i32, i32* @IPW_RESET_REG_STOP_MASTER, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @ipw_set_bit(%struct.ipw_priv* %46, i32 %47, i32 %50)
  %52 = call i32 @IPW_DEBUG_FW(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %43, %36
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @IPW_DEBUG_FW(i8*) #1

declare dso_local i64 @ipw_fw_dma_command_block_index(%struct.ipw_priv*) #1

declare dso_local i32 @IPW_DEBUG_FW_INFO(i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @ipw_fw_dma_dump_command_block(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_fw_dma_abort(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_set_bit(%struct.ipw_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
