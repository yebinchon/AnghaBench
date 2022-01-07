; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c__ipw_read_reg8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c__ipw_read_reg8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }

@IPW_INDIRECT_ADDR = common dso_local global i32 0, align 4
@IPW_INDIRECT_ADDR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c" reg = 0x%8X :\0A\00", align 1
@IPW_INDIRECT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, i32)* @_ipw_read_reg8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ipw_read_reg8(%struct.ipw_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %7 = load i32, i32* @IPW_INDIRECT_ADDR, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @IPW_INDIRECT_ADDR_MASK, align 4
  %10 = and i32 %8, %9
  %11 = call i32 @_ipw_write32(%struct.ipw_priv* %6, i32 %7, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @IPW_DEBUG_IO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %15 = load i32, i32* @IPW_INDIRECT_DATA, align 4
  %16 = call i32 @_ipw_read32(%struct.ipw_priv* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 3
  %20 = mul nsw i32 %19, 8
  %21 = ashr i32 %17, %20
  %22 = and i32 %21, 255
  ret i32 %22
}

declare dso_local i32 @_ipw_write32(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @IPW_DEBUG_IO(i8*, i32) #1

declare dso_local i32 @_ipw_read32(%struct.ipw_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
