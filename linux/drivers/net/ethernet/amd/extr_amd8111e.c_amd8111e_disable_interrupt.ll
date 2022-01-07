; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_disable_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_amd8111e.c_amd8111e_disable_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd8111e_priv = type { i64 }

@INTREN = common dso_local global i32 0, align 4
@CMD0 = common dso_local global i64 0, align 8
@INT0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amd8111e_priv*)* @amd8111e_disable_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd8111e_disable_interrupt(%struct.amd8111e_priv* %0) #0 {
  %2 = alloca %struct.amd8111e_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.amd8111e_priv* %0, %struct.amd8111e_priv** %2, align 8
  %4 = load i32, i32* @INTREN, align 4
  %5 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %6 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CMD0, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 %4, i64 %9)
  %11 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %12 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @INT0, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl(i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %19 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @INT0, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 %17, i64 %22)
  %24 = load %struct.amd8111e_priv*, %struct.amd8111e_priv** %2, align 8
  %25 = getelementptr inbounds %struct.amd8111e_priv, %struct.amd8111e_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @INT0, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
