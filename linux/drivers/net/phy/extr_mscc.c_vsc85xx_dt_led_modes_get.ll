; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_dt_led_modes_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_dt_led_modes_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.vsc8531_private* }
%struct.vsc8531_private = type { i32, i32* }

@.str = private unnamed_addr constant [20 x i8] c"vsc8531,led-%d-mode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32*)* @vsc85xx_dt_led_modes_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc85xx_dt_led_modes_get(%struct.phy_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vsc8531_private*, align 8
  %7 = alloca [28 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 0
  %12 = load %struct.vsc8531_private*, %struct.vsc8531_private** %11, align 8
  store %struct.vsc8531_private* %12, %struct.vsc8531_private** %6, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %48, %2
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.vsc8531_private*, %struct.vsc8531_private** %6, align 8
  %16 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %13
  %20 = getelementptr inbounds [28 x i8], [28 x i8]* %7, i64 0, i64 0
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %3, align 4
  br label %52

27:                                               ; preds = %19
  %28 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %29 = getelementptr inbounds [28 x i8], [28 x i8]* %7, i64 0, i64 0
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @vsc85xx_dt_led_mode_get(%struct.phy_device* %28, i8* %29, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %52

40:                                               ; preds = %27
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.vsc8531_private*, %struct.vsc8531_private** %6, align 8
  %43 = getelementptr inbounds %struct.vsc8531_private, %struct.vsc8531_private* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %13

51:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %38, %25
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @vsc85xx_dt_led_mode_get(%struct.phy_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
