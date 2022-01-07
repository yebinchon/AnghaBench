; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_wanxl.c_wanxl_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_wanxl.c_wanxl_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.card = type { i64 }

@PLX_CONTROL = common dso_local global i64 0, align 8
@PLX_CTL_RESET = common dso_local global i32 0, align 4
@PLX_MAILBOX_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.card*)* @wanxl_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wanxl_reset(%struct.card* %0) #0 {
  %2 = alloca %struct.card*, align 8
  %3 = alloca i32, align 4
  store %struct.card* %0, %struct.card** %2, align 8
  %4 = load %struct.card*, %struct.card** %2, align 8
  %5 = getelementptr inbounds %struct.card, %struct.card* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PLX_CONTROL, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  %10 = load i32, i32* @PLX_CTL_RESET, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.card*, %struct.card** %2, align 8
  %14 = getelementptr inbounds %struct.card, %struct.card* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PLX_MAILBOX_0, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 128, i64 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @PLX_CTL_RESET, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.card*, %struct.card** %2, align 8
  %23 = getelementptr inbounds %struct.card, %struct.card* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PLX_CONTROL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load %struct.card*, %struct.card** %2, align 8
  %29 = getelementptr inbounds %struct.card, %struct.card* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PLX_CONTROL, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @readl(i64 %32)
  %34 = call i32 @udelay(i32 1)
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.card*, %struct.card** %2, align 8
  %37 = getelementptr inbounds %struct.card, %struct.card* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PLX_CONTROL, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  %42 = load %struct.card*, %struct.card** %2, align 8
  %43 = getelementptr inbounds %struct.card, %struct.card* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PLX_CONTROL, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @readl(i64 %46)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
