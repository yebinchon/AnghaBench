; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168h_2_hw_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168h_2_hw_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8168h_2_hw_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8168h_2_hw_phy_config(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = call i32 @rtl_apply_firmware(%struct.rtl8169_private* %9)
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %12 = call i32 @rtl_writephy(%struct.rtl8169_private* %11, i32 31, i32 2627)
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %14 = call i32 @rtl_writephy(%struct.rtl8169_private* %13, i32 19, i32 32906)
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %16 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %15, i32 20, i32 10, i32 63)
  %17 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %18 = call i32 @rtl_writephy(%struct.rtl8169_private* %17, i32 31, i32 0)
  %19 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %20 = call i32 @rtl_writephy(%struct.rtl8169_private* %19, i32 31, i32 2627)
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %22 = call i32 @rtl_writephy(%struct.rtl8169_private* %21, i32 19, i32 2065)
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %24 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %23, i32 20, i32 2048, i32 0)
  %25 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %26 = call i32 @rtl_writephy(%struct.rtl8169_private* %25, i32 31, i32 2626)
  %27 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %28 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %27, i32 22, i32 2, i32 0)
  %29 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %30 = call i32 @rtl_writephy(%struct.rtl8169_private* %29, i32 31, i32 0)
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %32 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @BIT(i32 11)
  %35 = call i32 @phy_modify_paged(i32 %33, i32 2628, i32 17, i32 0, i32 %34)
  %36 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %37 = call i32 @r8168_mac_ocp_write(%struct.rtl8169_private* %36, i32 56578, i32 32893)
  %38 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %39 = call i32 @r8168_mac_ocp_read(%struct.rtl8169_private* %38, i32 56578)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 128
  %42 = ashr i32 %41, 7
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = shl i32 %43, 3
  store i32 %44, i32* %3, align 4
  %45 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %46 = call i32 @r8168_mac_ocp_read(%struct.rtl8169_private* %45, i32 56576)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = and i32 %47, 57344
  %49 = ashr i32 %48, 13
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, 7680
  %54 = ashr i32 %53, 9
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %8, align 4
  %56 = and i32 %55, 480
  %57 = ashr i32 %56, 5
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, 16
  %60 = ashr i32 %59, 4
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = shl i32 %61, 3
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %8, align 4
  %64 = and i32 %63, 7
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %3, align 4
  %68 = shl i32 %67, 12
  %69 = load i32, i32* %4, align 4
  %70 = shl i32 %69, 8
  %71 = or i32 %68, %70
  %72 = load i32, i32* %5, align 4
  %73 = shl i32 %72, 4
  %74 = or i32 %71, %73
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %74, %75
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %3, align 4
  %78 = icmp ne i32 %77, 15
  br i1 %78, label %88, label %79

79:                                               ; preds = %1
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 15
  br i1 %81, label %88, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 15
  br i1 %84, label %88, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 15
  br i1 %87, label %88, label %96

88:                                               ; preds = %85, %82, %79, %1
  %89 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %90 = call i32 @rtl_writephy(%struct.rtl8169_private* %89, i32 31, i32 3023)
  %91 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @rtl_writephy(%struct.rtl8169_private* %91, i32 22, i32 %92)
  %94 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %95 = call i32 @rtl_writephy(%struct.rtl8169_private* %94, i32 31, i32 0)
  br label %96

96:                                               ; preds = %88, %85
  %97 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %98 = call i32 @rtl_writephy(%struct.rtl8169_private* %97, i32 31, i32 3021)
  %99 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %100 = call i32 @rtl_readphy(%struct.rtl8169_private* %99, i32 22)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %101, 15
  store i32 %102, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp sgt i32 %103, 3
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %106, 3
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %105, %96
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = shl i32 %110, 4
  %112 = or i32 %109, %111
  %113 = load i32, i32* %7, align 4
  %114 = shl i32 %113, 8
  %115 = or i32 %112, %114
  %116 = load i32, i32* %7, align 4
  %117 = shl i32 %116, 12
  %118 = or i32 %115, %117
  store i32 %118, i32* %8, align 4
  %119 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @rtl_writephy(%struct.rtl8169_private* %119, i32 23, i32 %120)
  %122 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %123 = call i32 @rtl_writephy(%struct.rtl8169_private* %122, i32 31, i32 3021)
  %124 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %125 = call i32 @rtl_writephy(%struct.rtl8169_private* %124, i32 31, i32 0)
  %126 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %127 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @BIT(i32 7)
  %130 = call i32 @phy_modify_paged(i32 %128, i32 2628, i32 17, i32 %129, i32 0)
  %131 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %132 = call i32 @rtl8168g_disable_aldps(%struct.rtl8169_private* %131)
  %133 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %134 = call i32 @rtl8168g_config_eee_phy(%struct.rtl8169_private* %133)
  %135 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %136 = call i32 @rtl_enable_eee(%struct.rtl8169_private* %135)
  ret void
}

declare dso_local i32 @rtl_apply_firmware(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_writephy(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_w0w1_phy(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @phy_modify_paged(i32, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @r8168_mac_ocp_write(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @r8168_mac_ocp_read(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl_readphy(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @rtl8168g_disable_aldps(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168g_config_eee_phy(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_enable_eee(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
