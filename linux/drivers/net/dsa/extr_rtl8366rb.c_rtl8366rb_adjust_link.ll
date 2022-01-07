; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rtl8366rb_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_rtl8366rb.c_rtl8366rb_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.realtek_smi* }
%struct.realtek_smi = type { i32, i32, i32 }
%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"adjust link on CPU port (%d)\0A\00", align 1
@RTL8366RB_MAC_FORCE_CTRL_REG = common dso_local global i32 0, align 4
@RTL8366RB_PAACR2 = common dso_local global i32 0, align 4
@RTL8366RB_PAACR_CPU_PORT = common dso_local global i32 0, align 4
@RTL8366RB_PECR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, %struct.phy_device*)* @rtl8366rb_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8366rb_adjust_link(%struct.dsa_switch* %0, i32 %1, %struct.phy_device* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca %struct.realtek_smi*, align 8
  %8 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.phy_device* %2, %struct.phy_device** %6, align 8
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %10 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %9, i32 0, i32 0
  %11 = load %struct.realtek_smi*, %struct.realtek_smi** %10, align 8
  store %struct.realtek_smi* %11, %struct.realtek_smi** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.realtek_smi*, %struct.realtek_smi** %7, align 8
  %14 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %58

18:                                               ; preds = %3
  %19 = load %struct.realtek_smi*, %struct.realtek_smi** %7, align 8
  %20 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dev_info(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.realtek_smi*, %struct.realtek_smi** %7, align 8
  %25 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RTL8366RB_MAC_FORCE_CTRL_REG, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @BIT(i32 %30)
  %32 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %29, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %18
  br label %58

36:                                               ; preds = %18
  %37 = load %struct.realtek_smi*, %struct.realtek_smi** %7, align 8
  %38 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @RTL8366RB_PAACR2, align 4
  %41 = load i32, i32* @RTL8366RB_PAACR_CPU_PORT, align 4
  %42 = shl i32 %41, 8
  %43 = call i32 @regmap_update_bits(i32 %39, i32 %40, i32 65280, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %58

47:                                               ; preds = %36
  %48 = load %struct.realtek_smi*, %struct.realtek_smi** %7, align 8
  %49 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @RTL8366RB_PECR, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @BIT(i32 %52)
  %54 = call i32 @regmap_update_bits(i32 %50, i32 %51, i32 %53, i32 0)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %17, %35, %46, %57, %47
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
