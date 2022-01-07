; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_set_pad_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_set_pad_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qca8k_priv = type { i32 }

@QCA8K_REG_PORT0_PAD_CTRL = common dso_local global i32 0, align 4
@QCA8K_REG_PORT6_PAD_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't set PAD_CTRL on port %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QCA8K_PORT_PAD_RGMII_EN = common dso_local global i32 0, align 4
@QCA8K_MAX_DELAY = common dso_local global i32 0, align 4
@QCA8K_REG_PORT5_PAD_CTRL = common dso_local global i32 0, align 4
@QCA8K_PORT_PAD_RGMII_RX_DELAY_EN = common dso_local global i32 0, align 4
@QCA8K_PORT_PAD_SGMII_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"xMII mode %d not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qca8k_priv*, i32, i32)* @qca8k_set_pad_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qca8k_set_pad_ctrl(%struct.qca8k_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qca8k_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qca8k_priv* %0, %struct.qca8k_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %15 [
    i32 0, label %11
    i32 6, label %13
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @QCA8K_REG_PORT0_PAD_CTRL, align 4
  store i32 %12, i32* %8, align 4
  br label %20

13:                                               ; preds = %3
  %14 = load i32, i32* @QCA8K_REG_PORT6_PAD_CTRL, align 4
  store i32 %14, i32* %8, align 4
  br label %20

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %54

20:                                               ; preds = %13, %11
  %21 = load i32, i32* %7, align 4
  switch i32 %21, label %48 [
    i32 130, label %22
    i32 129, label %28
    i32 128, label %43
  ]

22:                                               ; preds = %20
  %23 = load i32, i32* @QCA8K_PORT_PAD_RGMII_EN, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.qca8k_priv*, %struct.qca8k_priv** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @qca8k_write(%struct.qca8k_priv* %24, i32 %25, i32 %26)
  br label %53

28:                                               ; preds = %20
  %29 = load %struct.qca8k_priv*, %struct.qca8k_priv** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @QCA8K_PORT_PAD_RGMII_EN, align 4
  %32 = load i32, i32* @QCA8K_MAX_DELAY, align 4
  %33 = call i32 @QCA8K_PORT_PAD_RGMII_TX_DELAY(i32 %32)
  %34 = or i32 %31, %33
  %35 = load i32, i32* @QCA8K_MAX_DELAY, align 4
  %36 = call i32 @QCA8K_PORT_PAD_RGMII_RX_DELAY(i32 %35)
  %37 = or i32 %34, %36
  %38 = call i32 @qca8k_write(%struct.qca8k_priv* %29, i32 %30, i32 %37)
  %39 = load %struct.qca8k_priv*, %struct.qca8k_priv** %5, align 8
  %40 = load i32, i32* @QCA8K_REG_PORT5_PAD_CTRL, align 4
  %41 = load i32, i32* @QCA8K_PORT_PAD_RGMII_RX_DELAY_EN, align 4
  %42 = call i32 @qca8k_write(%struct.qca8k_priv* %39, i32 %40, i32 %41)
  br label %53

43:                                               ; preds = %20
  %44 = load %struct.qca8k_priv*, %struct.qca8k_priv** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @QCA8K_PORT_PAD_SGMII_EN, align 4
  %47 = call i32 @qca8k_write(%struct.qca8k_priv* %44, i32 %45, i32 %46)
  br label %53

48:                                               ; preds = %20
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %43, %28, %22
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %48, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @qca8k_write(%struct.qca8k_priv*, i32, i32) #1

declare dso_local i32 @QCA8K_PORT_PAD_RGMII_TX_DELAY(i32) #1

declare dso_local i32 @QCA8K_PORT_PAD_RGMII_RX_DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
