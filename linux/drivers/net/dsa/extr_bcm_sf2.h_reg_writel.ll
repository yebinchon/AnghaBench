; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.h_reg_writel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.h_reg_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sf2_priv = type { i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sf2_priv*, i32, i64)* @reg_writel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_writel(%struct.bcm_sf2_priv* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.bcm_sf2_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.bcm_sf2_priv* %0, %struct.bcm_sf2_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %9 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %12 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %10, %16
  %18 = call i32 @writel_relaxed(i32 %7, i64 %17)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
