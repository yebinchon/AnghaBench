; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168d_1_hw_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168d_1_hw_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_reg = type { i32, i32 }
%struct.rtl8169_private = type { i32 }

@rtl8168d_1_phy_reg_init_0 = common dso_local global %struct.phy_reg* null, align 8
@rtl8168d_1_phy_reg_init_1 = common dso_local global %struct.phy_reg* null, align 8
@rtl8168d_1_hw_phy_config.set = internal constant [8 x i32] [i32 101, i32 102, i32 103, i32 104, i32 105, i32 106, i32 107, i32 108], align 16
@rtl8168d_1_hw_phy_config.phy_reg_init = internal constant [5 x %struct.phy_reg] [%struct.phy_reg { i32 31, i32 2 }, %struct.phy_reg { i32 5, i32 26210 }, %struct.phy_reg { i32 31, i32 5 }, %struct.phy_reg { i32 5, i32 33584 }, %struct.phy_reg { i32 6, i32 26210 }], align 16
@MII_EXPANSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8168d_1_hw_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8168d_1_hw_phy_config(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = load %struct.phy_reg*, %struct.phy_reg** @rtl8168d_1_phy_reg_init_0, align 8
  %7 = call i32 @rtl_writephy_batch(%struct.rtl8169_private* %5, %struct.phy_reg* %6)
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %9 = call i32 @rtl_writephy(%struct.rtl8169_private* %8, i32 31, i32 2)
  %10 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %11 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %10, i32 11, i32 16, i32 239)
  %12 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %13 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %12, i32 12, i32 41472, i32 23808)
  %14 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %15 = call i32 @rtl8168d_efuse_read(%struct.rtl8169_private* %14, i32 1)
  %16 = icmp eq i32 %15, 177
  br i1 %16, label %17, label %49

17:                                               ; preds = %1
  %18 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %19 = load %struct.phy_reg*, %struct.phy_reg** @rtl8168d_1_phy_reg_init_1, align 8
  %20 = call i32 @rtl_writephy_batch(%struct.rtl8169_private* %18, %struct.phy_reg* %19)
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %22 = call i32 @rtl_readphy(%struct.rtl8169_private* %21, i32 13)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, 255
  %25 = icmp ne i32 %24, 108
  br i1 %25, label %26, label %48

26:                                               ; preds = %17
  %27 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %28 = call i32 @rtl_writephy(%struct.rtl8169_private* %27, i32 31, i32 2)
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 65280
  store i32 %30, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %44, %26
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @rtl8168d_1_hw_phy_config.set, i64 0, i64 0))
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* @rtl8168d_1_hw_phy_config.set, i64 0, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %37, %41
  %43 = call i32 @rtl_writephy(%struct.rtl8169_private* %36, i32 13, i32 %42)
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %31

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %17
  br label %52

49:                                               ; preds = %1
  %50 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %51 = call i32 @rtl_writephy_batch(%struct.rtl8169_private* %50, %struct.phy_reg* getelementptr inbounds ([5 x %struct.phy_reg], [5 x %struct.phy_reg]* @rtl8168d_1_hw_phy_config.phy_reg_init, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %48
  %53 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %54 = call i32 @rtl_writephy(%struct.rtl8169_private* %53, i32 31, i32 2)
  %55 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %56 = call i32 @rtl_patchphy(%struct.rtl8169_private* %55, i32 13, i32 768)
  %57 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %58 = call i32 @rtl_patchphy(%struct.rtl8169_private* %57, i32 15, i32 16)
  %59 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %60 = call i32 @rtl_writephy(%struct.rtl8169_private* %59, i32 31, i32 2)
  %61 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %62 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %61, i32 2, i32 256, i32 1536)
  %63 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %64 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %63, i32 3, i32 0, i32 57344)
  %65 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %66 = call i32 @rtl_writephy(%struct.rtl8169_private* %65, i32 31, i32 5)
  %67 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %68 = call i32 @rtl_writephy(%struct.rtl8169_private* %67, i32 5, i32 27)
  %69 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %70 = load i32, i32* @MII_EXPANSION, align 4
  %71 = call i32 @rtl_apply_firmware_cond(%struct.rtl8169_private* %69, i32 %70, i32 48896)
  %72 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %73 = call i32 @rtl_writephy(%struct.rtl8169_private* %72, i32 31, i32 0)
  ret void
}

declare dso_local i32 @rtl_writephy_batch(%struct.rtl8169_private*, %struct.phy_reg*) #1

declare dso_local i32 @rtl_writephy(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_w0w1_phy(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @rtl8168d_efuse_read(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_readphy(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @rtl_patchphy(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_apply_firmware_cond(%struct.rtl8169_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
