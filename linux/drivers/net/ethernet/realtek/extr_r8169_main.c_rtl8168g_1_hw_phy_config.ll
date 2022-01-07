; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168g_1_hw_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168g_1_hw_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8168g_1_hw_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8168g_1_hw_phy_config(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %4 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %5 = call i32 @rtl_apply_firmware(%struct.rtl8169_private* %4)
  %6 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %7 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @phy_read_paged(i32 %8, i32 2630, i32 16)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @BIT(i32 8)
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %16 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @BIT(i32 15)
  %19 = call i32 @phy_modify_paged(i32 %17, i32 3020, i32 18, i32 %18, i32 0)
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %22 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @BIT(i32 15)
  %25 = call i32 @phy_modify_paged(i32 %23, i32 3020, i32 18, i32 0, i32 %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %28 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @phy_read_paged(i32 %29, i32 2630, i32 19)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @BIT(i32 8)
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %26
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %37 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @BIT(i32 1)
  %40 = call i32 @phy_modify_paged(i32 %38, i32 3137, i32 21, i32 0, i32 %39)
  br label %47

41:                                               ; preds = %26
  %42 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %43 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BIT(i32 1)
  %46 = call i32 @phy_modify_paged(i32 %44, i32 3137, i32 21, i32 %45, i32 0)
  br label %47

47:                                               ; preds = %41, %35
  %48 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %49 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @BIT(i32 3)
  %52 = call i32 @BIT(i32 2)
  %53 = or i32 %51, %52
  %54 = call i32 @phy_modify_paged(i32 %50, i32 2628, i32 17, i32 0, i32 %53)
  %55 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %56 = call i32 @rtl8168g_phy_adjust_10m_aldps(%struct.rtl8169_private* %55)
  %57 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %58 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @BIT(i32 2)
  %61 = call i32 @phy_modify_paged(i32 %59, i32 2635, i32 17, i32 0, i32 %60)
  %62 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %63 = call i32 @rtl_writephy(%struct.rtl8169_private* %62, i32 31, i32 2627)
  %64 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %65 = call i32 @rtl_writephy(%struct.rtl8169_private* %64, i32 19, i32 32786)
  %66 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %67 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %66, i32 20, i32 32768, i32 0)
  %68 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %69 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @BIT(i32 13)
  %72 = call i32 @BIT(i32 14)
  %73 = call i32 @phy_modify_paged(i32 %70, i32 3138, i32 17, i32 %71, i32 %72)
  %74 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %75 = call i32 @rtl_writephy(%struct.rtl8169_private* %74, i32 31, i32 3021)
  %76 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %77 = call i32 @rtl_writephy(%struct.rtl8169_private* %76, i32 20, i32 20581)
  %78 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %79 = call i32 @rtl_writephy(%struct.rtl8169_private* %78, i32 20, i32 53349)
  %80 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %81 = call i32 @rtl_writephy(%struct.rtl8169_private* %80, i32 31, i32 3016)
  %82 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %83 = call i32 @rtl_writephy(%struct.rtl8169_private* %82, i32 17, i32 22101)
  %84 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %85 = call i32 @rtl_writephy(%struct.rtl8169_private* %84, i32 31, i32 3021)
  %86 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %87 = call i32 @rtl_writephy(%struct.rtl8169_private* %86, i32 20, i32 4197)
  %88 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %89 = call i32 @rtl_writephy(%struct.rtl8169_private* %88, i32 20, i32 36965)
  %90 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %91 = call i32 @rtl_writephy(%struct.rtl8169_private* %90, i32 20, i32 4197)
  %92 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %93 = call i32 @rtl_writephy(%struct.rtl8169_private* %92, i32 31, i32 0)
  %94 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %95 = call i32 @rtl8168g_disable_aldps(%struct.rtl8169_private* %94)
  %96 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %97 = call i32 @rtl8168g_config_eee_phy(%struct.rtl8169_private* %96)
  %98 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %99 = call i32 @rtl_enable_eee(%struct.rtl8169_private* %98)
  ret void
}

declare dso_local i32 @rtl_apply_firmware(%struct.rtl8169_private*) #1

declare dso_local i32 @phy_read_paged(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @phy_modify_paged(i32, i32, i32, i32, i32) #1

declare dso_local i32 @rtl8168g_phy_adjust_10m_aldps(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_writephy(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_w0w1_phy(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @rtl8168g_disable_aldps(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168g_config_eee_phy(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_enable_eee(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
