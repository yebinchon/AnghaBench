; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_set_ucode_ptrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_4965.c_il4965_set_ucode_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@BSM_DRAM_INST_PTR_REG = common dso_local global i32 0, align 4
@BSM_DRAM_DATA_PTR_REG = common dso_local global i32 0, align 4
@BSM_DRAM_DATA_BYTECOUNT_REG = common dso_local global i32 0, align 4
@BSM_DRAM_INST_BYTECOUNT_REG = common dso_local global i32 0, align 4
@BSM_DRAM_INST_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Runtime uCode pointers are set.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il4965_set_ucode_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il4965_set_ucode_ptrs(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %7 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = ashr i32 %9, 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %14, 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %17 = load i32, i32* @BSM_DRAM_INST_PTR_REG, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @il_wr_prph(%struct.il_priv* %16, i32 %17, i32 %18)
  %20 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %21 = load i32, i32* @BSM_DRAM_DATA_PTR_REG, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @il_wr_prph(%struct.il_priv* %20, i32 %21, i32 %22)
  %24 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %25 = load i32, i32* @BSM_DRAM_DATA_BYTECOUNT_REG, align 4
  %26 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @il_wr_prph(%struct.il_priv* %24, i32 %25, i32 %29)
  %31 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %32 = load i32, i32* @BSM_DRAM_INST_BYTECOUNT_REG, align 4
  %33 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %34 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @BSM_DRAM_INST_LOAD, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @il_wr_prph(%struct.il_priv* %31, i32 %32, i32 %38)
  %40 = call i32 @D_INFO(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @il_wr_prph(%struct.il_priv*, i32, i32) #1

declare dso_local i32 @D_INFO(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
