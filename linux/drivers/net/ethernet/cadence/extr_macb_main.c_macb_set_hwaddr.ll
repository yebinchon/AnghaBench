; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_set_hwaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_set_hwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@SA1B = common dso_local global i32 0, align 4
@SA1T = common dso_local global i32 0, align 4
@SA2B = common dso_local global i32 0, align 4
@SA2T = common dso_local global i32 0, align 4
@SA3B = common dso_local global i32 0, align 4
@SA3T = common dso_local global i32 0, align 4
@SA4B = common dso_local global i32 0, align 4
@SA4T = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*)* @macb_set_hwaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_set_hwaddr(%struct.macb* %0) #0 {
  %2 = alloca %struct.macb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.macb* %0, %struct.macb** %2, align 8
  %5 = load %struct.macb*, %struct.macb** %2, align 8
  %6 = getelementptr inbounds %struct.macb, %struct.macb* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cpu_to_le32(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.macb*, %struct.macb** %2, align 8
  %14 = load i32, i32* @SA1B, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @macb_or_gem_writel(%struct.macb* %13, i32 %14, i32 %15)
  %17 = load %struct.macb*, %struct.macb** %2, align 8
  %18 = getelementptr inbounds %struct.macb, %struct.macb* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 4
  %23 = inttoptr i64 %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cpu_to_le16(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.macb*, %struct.macb** %2, align 8
  %27 = load i32, i32* @SA1T, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @macb_or_gem_writel(%struct.macb* %26, i32 %27, i32 %28)
  %30 = load %struct.macb*, %struct.macb** %2, align 8
  %31 = load i32, i32* @SA2B, align 4
  %32 = call i32 @macb_or_gem_writel(%struct.macb* %30, i32 %31, i32 0)
  %33 = load %struct.macb*, %struct.macb** %2, align 8
  %34 = load i32, i32* @SA2T, align 4
  %35 = call i32 @macb_or_gem_writel(%struct.macb* %33, i32 %34, i32 0)
  %36 = load %struct.macb*, %struct.macb** %2, align 8
  %37 = load i32, i32* @SA3B, align 4
  %38 = call i32 @macb_or_gem_writel(%struct.macb* %36, i32 %37, i32 0)
  %39 = load %struct.macb*, %struct.macb** %2, align 8
  %40 = load i32, i32* @SA3T, align 4
  %41 = call i32 @macb_or_gem_writel(%struct.macb* %39, i32 %40, i32 0)
  %42 = load %struct.macb*, %struct.macb** %2, align 8
  %43 = load i32, i32* @SA4B, align 4
  %44 = call i32 @macb_or_gem_writel(%struct.macb* %42, i32 %43, i32 0)
  %45 = load %struct.macb*, %struct.macb** %2, align 8
  %46 = load i32, i32* @SA4T, align 4
  %47 = call i32 @macb_or_gem_writel(%struct.macb* %45, i32 %46, i32 0)
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @macb_or_gem_writel(%struct.macb*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
