; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_mdio.c_davinci_mdio_init_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_mdio.c_davinci_mdio_init_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.davinci_mdio_data = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@CONTROL_MAX_DIV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.davinci_mdio_data*)* @davinci_mdio_init_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_mdio_init_clk(%struct.davinci_mdio_data* %0) #0 {
  %2 = alloca %struct.davinci_mdio_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.davinci_mdio_data* %0, %struct.davinci_mdio_data** %2, align 8
  %7 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %2, align 8
  %8 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @clk_get_rate(i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %2, align 8
  %13 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sdiv i32 %11, %15
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @CONTROL_MAX_DIV, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @CONTROL_MAX_DIV, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %1
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %2, align 8
  %26 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  %30 = mul nsw i32 1000, %29
  %31 = sdiv i32 %27, %30
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sdiv i32 88000, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = mul nsw i32 %34, 4
  %36 = call i32 @usecs_to_jiffies(i32 %35)
  %37 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %2, align 8
  %38 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %2, align 8
  %40 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %23
  %44 = load %struct.davinci_mdio_data*, %struct.davinci_mdio_data** %2, align 8
  %45 = getelementptr inbounds %struct.davinci_mdio_data, %struct.davinci_mdio_data* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %23
  ret void
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
