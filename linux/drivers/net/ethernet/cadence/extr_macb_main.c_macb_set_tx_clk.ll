; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_set_tx_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_set_tx_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"unable to generate target frequency: %ld Hz\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"adjusting tx_clk failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk*, i32, %struct.net_device*)* @macb_set_tx_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @macb_set_tx_clk(%struct.clk* %0, i32 %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %10 = load %struct.clk*, %struct.clk** %4, align 8
  %11 = icmp ne %struct.clk* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %49

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %18 [
    i32 130, label %15
    i32 129, label %16
    i32 128, label %17
  ]

15:                                               ; preds = %13
  store i64 2500000, i64* %8, align 8
  br label %19

16:                                               ; preds = %13
  store i64 25000000, i64* %8, align 8
  br label %19

17:                                               ; preds = %13
  store i64 125000000, i64* %8, align 8
  br label %19

18:                                               ; preds = %13
  br label %49

19:                                               ; preds = %17, %16, %15
  %20 = load %struct.clk*, %struct.clk** %4, align 8
  %21 = load i64, i64* %8, align 8
  %22 = call i64 @clk_round_rate(%struct.clk* %20, i64 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %49

26:                                               ; preds = %19
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sub nsw i64 %27, %28
  %30 = call i64 @abs(i64 %29)
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = sdiv i64 %32, 100000
  %34 = call i64 @DIV_ROUND_UP(i64 %31, i64 %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp sgt i64 %35, 5
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @netdev_warn(%struct.net_device* %38, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %41

41:                                               ; preds = %37, %26
  %42 = load %struct.clk*, %struct.clk** %4, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @clk_set_rate(%struct.clk* %42, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = call i32 @netdev_err(%struct.net_device* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %49

49:                                               ; preds = %12, %18, %25, %46, %41
  ret void
}

declare dso_local i64 @clk_round_rate(%struct.clk*, i64) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i64) #1

declare dso_local i64 @clk_set_rate(%struct.clk*, i64) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
