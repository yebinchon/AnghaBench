; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rtl8366rb_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rtl8366rb_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_smi = type { i32, i32 }

@RTL8366RB_PHY_NO_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RTL8366RB_PHY_ACCESS_CTRL_REG = common dso_local global i32 0, align 4
@RTL8366RB_PHY_CTRL_WRITE = common dso_local global i32 0, align 4
@RTL8366RB_PHY_NO_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"write PHY%d register 0x%04x @ %04x, val -> %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.realtek_smi*, i32, i32, i32)* @rtl8366rb_phy_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_phy_write(%struct.realtek_smi* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.realtek_smi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.realtek_smi* %0, %struct.realtek_smi** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @RTL8366RB_PHY_NO_MAX, align 4
  %14 = icmp sgt i32 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %56

18:                                               ; preds = %4
  %19 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %20 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @RTL8366RB_PHY_ACCESS_CTRL_REG, align 4
  %23 = load i32, i32* @RTL8366RB_PHY_CTRL_WRITE, align 4
  %24 = call i32 @regmap_write(i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %5, align 4
  br label %56

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @RTL8366RB_PHY_NO_OFFSET, align 4
  %32 = add nsw i32 %30, %31
  %33 = shl i32 1, %32
  %34 = or i32 32768, %33
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %10, align 4
  %37 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %38 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.realtek_smi*, %struct.realtek_smi** %6, align 8
  %46 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @regmap_write(i32 %47, i32 %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %29
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %5, align 4
  br label %56

55:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %53, %27, %15
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
