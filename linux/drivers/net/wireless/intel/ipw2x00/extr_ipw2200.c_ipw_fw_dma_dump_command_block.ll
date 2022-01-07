; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_fw_dma_dump_command_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_fw_dma_dump_command_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c">> :\0A\00", align 1
@IPW_DMA_I_CURRENT_CB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Current CB is 0x%x\0A\00", align 1
@IPW_DMA_I_DMA_CONTROL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"IPW_DMA_I_DMA_CONTROL is 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Current CB Control Field is 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Current CB Source Field is 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"Current CB Destination Field is 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Current CB Status Field is 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_fw_dma_dump_command_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_fw_dma_dump_command_block(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = call i32 @IPW_DEBUG_FW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %8 = load i32, i32* @IPW_DMA_I_CURRENT_CB, align 4
  %9 = call i32 @ipw_read_reg32(%struct.ipw_priv* %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @IPW_DEBUG_FW_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %13 = load i32, i32* @IPW_DMA_I_DMA_CONTROL, align 4
  %14 = call i32 @ipw_read_reg32(%struct.ipw_priv* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @IPW_DEBUG_FW_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %3, align 4
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ipw_read_reg32(%struct.ipw_priv* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @IPW_DEBUG_FW_INFO(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %5, align 4
  %27 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ipw_read_reg32(%struct.ipw_priv* %27, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @IPW_DEBUG_FW_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = add i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @ipw_read_reg32(%struct.ipw_priv* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @IPW_DEBUG_FW_INFO(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, 4
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %5, align 4
  %45 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @ipw_read_reg32(%struct.ipw_priv* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @IPW_DEBUG_FW_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %48)
  %50 = call i32 @IPW_DEBUG_FW(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @IPW_DEBUG_FW(i8*) #1

declare dso_local i32 @ipw_read_reg32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @IPW_DEBUG_FW_INFO(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
