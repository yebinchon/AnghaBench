; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_enable_magicpkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_enable_magicpkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd8111e_priv = type { i64 }

@VAL1 = common dso_local global i32 0, align 4
@MPPLBA = common dso_local global i32 0, align 4
@CMD3 = common dso_local global i64 0, align 8
@VAL0 = common dso_local global i32 0, align 4
@MPEN_SW = common dso_local global i32 0, align 4
@CMD7 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd8111e_priv*)* @amd8111e_enable_magicpkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd8111e_enable_magicpkt(%struct.amd8111e_priv* %0) #0 {
  %2 = alloca %struct.amd8111e_priv*, align 8
  store %struct.amd8111e_priv* %0, %struct.amd8111e_priv** %2, align 8
  %3 = load i32, i32* @VAL1, align 4
  %4 = load i32, i32* @MPPLBA, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %7 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CMD3, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 %5, i64 %10)
  %12 = load i32, i32* @VAL0, align 4
  %13 = load i32, i32* @MPEN_SW, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %16 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @CMD7, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %22 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CMD7, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  ret i32 0
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
