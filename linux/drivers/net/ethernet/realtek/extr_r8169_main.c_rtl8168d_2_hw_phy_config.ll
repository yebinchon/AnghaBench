; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168d_2_hw_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168d_2_hw_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_reg = type { i32, i32 }
%struct.rtl8169_private = type { i32 }

@rtl8168d_1_phy_reg_init_0 = common dso_local global %struct.phy_reg* null, align 8
@rtl8168d_1_phy_reg_init_1 = common dso_local global %struct.phy_reg* null, align 8
@rtl8168d_2_hw_phy_config.set = internal constant [8 x i32] [i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108], align 16
@rtl8168d_2_hw_phy_config.phy_reg_init = internal constant [5 x %struct.phy_reg] [%struct.phy_reg { i32 31, i32 2 }, %struct.phy_reg { i32 5, i32 9794 }, %struct.phy_reg { i32 31, i32 5 }, %struct.phy_reg { i32 5, i32 33584 }, %struct.phy_reg { i32 6, i32 9794 }], align 16
@MII_EXPANSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8168d_2_hw_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8168d_2_hw_phy_config(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = load %struct.phy_reg*, %struct.phy_reg** @rtl8168d_1_phy_reg_init_0, align 8
  %7 = call i32 @rtl_writephy_batch(%struct.rtl8169_private* %5, %struct.phy_reg* %6)
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %9 = call i32 @rtl8168d_efuse_read(%struct.rtl8169_private* %8, i32 1)
  %10 = icmp eq i32 %9, 177
  br i1 %10, label %11, label %43

11:                                               ; preds = %1
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %13 = load %struct.phy_reg*, %struct.phy_reg** @rtl8168d_1_phy_reg_init_1, align 8
  %14 = call i32 @rtl_writephy_batch(%struct.rtl8169_private* %12, %struct.phy_reg* %13)
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %16 = call i32 @rtl_readphy(%struct.rtl8169_private* %15, i32 13)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 255
  %19 = icmp ne i32 %18, 108
  br i1 %19, label %20, label %42

20:                                               ; preds = %11
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %22 = call i32 @rtl_writephy(%struct.rtl8169_private* %21, i32 31, i32 2)
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 65280
  store i32 %24, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %38, %20
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @rtl8168d_2_hw_phy_config.set, i64 0, i64 0))
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* @rtl8168d_2_hw_phy_config.set, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %31, %35
  %37 = call i32 @rtl_writephy(%struct.rtl8169_private* %30, i32 13, i32 %36)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %25

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41, %11
  br label %46

43:                                               ; preds = %1
  %44 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %45 = call i32 @rtl_writephy_batch(%struct.rtl8169_private* %44, %struct.phy_reg* getelementptr inbounds ([5 x %struct.phy_reg], [5 x %struct.phy_reg]* @rtl8168d_2_hw_phy_config.phy_reg_init, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %42
  %47 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %48 = call i32 @rtl_writephy(%struct.rtl8169_private* %47, i32 31, i32 2)
  %49 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %50 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %49, i32 2, i32 256, i32 1536)
  %51 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %52 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %51, i32 3, i32 0, i32 57344)
  %53 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %54 = call i32 @rtl_writephy(%struct.rtl8169_private* %53, i32 31, i32 2)
  %55 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %56 = call i32 @rtl_patchphy(%struct.rtl8169_private* %55, i32 15, i32 23)
  %57 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %58 = call i32 @rtl_writephy(%struct.rtl8169_private* %57, i32 31, i32 5)
  %59 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %60 = call i32 @rtl_writephy(%struct.rtl8169_private* %59, i32 5, i32 27)
  %61 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %62 = load i32, i32* @MII_EXPANSION, align 4
  %63 = call i32 @rtl_apply_firmware_cond(%struct.rtl8169_private* %61, i32 %62, i32 45824)
  %64 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %65 = call i32 @rtl_writephy(%struct.rtl8169_private* %64, i32 31, i32 0)
  ret void
}

declare dso_local i32 @rtl_writephy_batch(%struct.rtl8169_private*, %struct.phy_reg*) #1

declare dso_local i32 @rtl8168d_efuse_read(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_readphy(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_writephy(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rtl_w0w1_phy(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @rtl_patchphy(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_apply_firmware_cond(%struct.rtl8169_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
