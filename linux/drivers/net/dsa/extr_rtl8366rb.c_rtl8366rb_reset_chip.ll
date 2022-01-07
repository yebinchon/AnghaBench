; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rtl8366rb_reset_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rtl8366rb_reset_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_smi = type { i32, i32 }

@RTL8366RB_RESET_CTRL_REG = common dso_local global i32 0, align 4
@RTL8366RB_CHIP_CTRL_RESET_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"timeout waiting for the switch to reset\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.realtek_smi*)* @rtl8366rb_reset_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_reset_chip(%struct.realtek_smi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.realtek_smi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.realtek_smi* %0, %struct.realtek_smi** %3, align 8
  store i32 10, i32* %4, align 4
  %7 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %8 = load i32, i32* @RTL8366RB_RESET_CTRL_REG, align 4
  %9 = load i32, i32* @RTL8366RB_CHIP_CTRL_RESET_HW, align 4
  %10 = call i32 @realtek_smi_write_reg_noack(%struct.realtek_smi* %7, i32 %8, i32 %9)
  br label %11

11:                                               ; preds = %29, %1
  %12 = call i32 @usleep_range(i32 20000, i32 25000)
  %13 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %14 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RTL8366RB_RESET_CTRL_REG, align 4
  %17 = call i32 @regmap_read(i32 %15, i32 %16, i32* %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %11
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %44

22:                                               ; preds = %11
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @RTL8366RB_CHIP_CTRL_RESET_HW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %33

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %11, label %33

33:                                               ; preds = %29, %27
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %33
  %37 = load %struct.realtek_smi*, %struct.realtek_smi** %3, align 8
  %38 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %36, %20
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @realtek_smi_write_reg_noack(%struct.realtek_smi*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
