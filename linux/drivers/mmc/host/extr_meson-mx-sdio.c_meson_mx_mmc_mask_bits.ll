; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_mask_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_mask_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.meson_mx_mmc_host = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, i8, i32, i32)* @meson_mx_mmc_mask_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_mx_mmc_mask_bits(%struct.mmc_host* %0, i8 signext %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mmc_host*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.meson_mx_mmc_host*, align 8
  %10 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %5, align 8
  store i8 %1, i8* %6, align 1
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.mmc_host*, %struct.mmc_host** %5, align 8
  %12 = call %struct.meson_mx_mmc_host* @mmc_priv(%struct.mmc_host* %11)
  store %struct.meson_mx_mmc_host* %12, %struct.meson_mx_mmc_host** %9, align 8
  %13 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %9, align 8
  %14 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i8, i8* %6, align 1
  %17 = sext i8 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %7, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %10, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %9, align 8
  %31 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i8, i8* %6, align 1
  %34 = sext i8 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = call i32 @writel(i32 %29, i64 %35)
  ret void
}

declare dso_local %struct.meson_mx_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
