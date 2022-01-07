; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rb8366rb_set_port_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rb8366rb_set_port_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_smi = type { i32, i32, i64 }

@RTL8366RB_LED_0_1_CTRL_REG = common dso_local global i32 0, align 4
@RTL8366RB_LED_1_OFFSET = common dso_local global i32 0, align 4
@RTL8366RB_LED_2_3_CTRL_REG = common dso_local global i32 0, align 4
@RTL8366RB_LED_3_OFFSET = common dso_local global i32 0, align 4
@RTL8366RB_INTERRUPT_CONTROL_REG = common dso_local global i32 0, align 4
@RTL8366RB_P4_RGMII_LED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no LED for port %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"error updating LED on port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.realtek_smi*, i32, i32)* @rb8366rb_set_port_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rb8366rb_set_port_led(%struct.realtek_smi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.realtek_smi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.realtek_smi* %0, %struct.realtek_smi** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 63, i32 0
  store i32 %12, i32* %7, align 4
  %13 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %14 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %85

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %70 [
    i32 0, label %20
    i32 1, label %27
    i32 2, label %38
    i32 3, label %45
    i32 4, label %56
  ]

20:                                               ; preds = %18
  %21 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %22 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @RTL8366RB_LED_0_1_CTRL_REG, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @regmap_update_bits(i32 %23, i32 %24, i32 63, i32 %25)
  store i32 %26, i32* %8, align 4
  br label %76

27:                                               ; preds = %18
  %28 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %29 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @RTL8366RB_LED_0_1_CTRL_REG, align 4
  %32 = load i32, i32* @RTL8366RB_LED_1_OFFSET, align 4
  %33 = shl i32 63, %32
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @RTL8366RB_LED_1_OFFSET, align 4
  %36 = shl i32 %34, %35
  %37 = call i32 @regmap_update_bits(i32 %30, i32 %31, i32 %33, i32 %36)
  store i32 %37, i32* %8, align 4
  br label %76

38:                                               ; preds = %18
  %39 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %40 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @RTL8366RB_LED_2_3_CTRL_REG, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @regmap_update_bits(i32 %41, i32 %42, i32 63, i32 %43)
  store i32 %44, i32* %8, align 4
  br label %76

45:                                               ; preds = %18
  %46 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %47 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @RTL8366RB_LED_2_3_CTRL_REG, align 4
  %50 = load i32, i32* @RTL8366RB_LED_3_OFFSET, align 4
  %51 = shl i32 63, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @RTL8366RB_LED_3_OFFSET, align 4
  %54 = shl i32 %52, %53
  %55 = call i32 @regmap_update_bits(i32 %48, i32 %49, i32 %51, i32 %54)
  store i32 %55, i32* %8, align 4
  br label %76

56:                                               ; preds = %18
  %57 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %58 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @RTL8366RB_INTERRUPT_CONTROL_REG, align 4
  %61 = load i32, i32* @RTL8366RB_P4_RGMII_LED, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = load i32, i32* @RTL8366RB_P4_RGMII_LED, align 4
  br label %67

66:                                               ; preds = %56
  br label %67

67:                                               ; preds = %66, %64
  %68 = phi i32 [ %65, %64 ], [ 0, %66 ]
  %69 = call i32 @regmap_update_bits(i32 %59, i32 %60, i32 %61, i32 %68)
  store i32 %69, i32* %8, align 4
  br label %76

70:                                               ; preds = %18
  %71 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %72 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %85

76:                                               ; preds = %67, %45, %38, %27, %20
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %81 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %85

85:                                               ; preds = %17, %70, %79, %76
  ret void
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
