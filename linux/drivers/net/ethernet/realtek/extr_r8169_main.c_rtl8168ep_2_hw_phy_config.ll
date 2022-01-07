; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168ep_2_hw_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168ep_2_hw_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8168ep_2_hw_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8168ep_2_hw_phy_config(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %3 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %4 = call i32 @rtl8168g_phy_adjust_10m_aldps(%struct.rtl8169_private* %3)
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = call i32 @rtl_writephy(%struct.rtl8169_private* %5, i32 31, i32 2627)
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %8 = call i32 @rtl_writephy(%struct.rtl8169_private* %7, i32 19, i32 32786)
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %9, i32 20, i32 32768, i32 0)
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %12 = call i32 @rtl_writephy(%struct.rtl8169_private* %11, i32 31, i32 0)
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %14 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @BIT(i32 13)
  %17 = call i32 @BIT(i32 14)
  %18 = call i32 @phy_modify_paged(i32 %15, i32 3138, i32 17, i32 %16, i32 %17)
  %19 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %20 = call i32 @rtl_writephy(%struct.rtl8169_private* %19, i32 31, i32 2627)
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %22 = call i32 @rtl_writephy(%struct.rtl8169_private* %21, i32 19, i32 33011)
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %24 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %23, i32 20, i32 35584, i32 -35840)
  %25 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %26 = call i32 @rtl_writephy(%struct.rtl8169_private* %25, i32 19, i32 33008)
  %27 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %28 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %27, i32 20, i32 14848, i32 -15104)
  %29 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %30 = call i32 @rtl_writephy(%struct.rtl8169_private* %29, i32 19, i32 33007)
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %32 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %31, i32 20, i32 1280, i32 -1536)
  %33 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %34 = call i32 @rtl_writephy(%struct.rtl8169_private* %33, i32 19, i32 33014)
  %35 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %36 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %35, i32 20, i32 28160, i32 -28416)
  %37 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %38 = call i32 @rtl_writephy(%struct.rtl8169_private* %37, i32 19, i32 33004)
  %39 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %40 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %39, i32 20, i32 26624, i32 -26880)
  %41 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %42 = call i32 @rtl_writephy(%struct.rtl8169_private* %41, i32 19, i32 33005)
  %43 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %44 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %43, i32 20, i32 31744, i32 -32000)
  %45 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %46 = call i32 @rtl_writephy(%struct.rtl8169_private* %45, i32 19, i32 33010)
  %47 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %48 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %47, i32 20, i32 62464, i32 -62720)
  %49 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %50 = call i32 @rtl_writephy(%struct.rtl8169_private* %49, i32 19, i32 33012)
  %51 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %52 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %51, i32 20, i32 34048, i32 -34304)
  %53 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %54 = call i32 @rtl_writephy(%struct.rtl8169_private* %53, i32 31, i32 2627)
  %55 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %56 = call i32 @rtl_writephy(%struct.rtl8169_private* %55, i32 19, i32 33040)
  %57 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %58 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %57, i32 20, i32 43008, i32 -43264)
  %59 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %60 = call i32 @rtl_writephy(%struct.rtl8169_private* %59, i32 19, i32 33039)
  %61 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %62 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %61, i32 20, i32 7424, i32 -7680)
  %63 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %64 = call i32 @rtl_writephy(%struct.rtl8169_private* %63, i32 19, i32 33041)
  %65 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %66 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %65, i32 20, i32 62720, i32 -62976)
  %67 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %68 = call i32 @rtl_writephy(%struct.rtl8169_private* %67, i32 19, i32 33043)
  %69 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %70 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %69, i32 20, i32 24832, i32 -25088)
  %71 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %72 = call i32 @rtl_writephy(%struct.rtl8169_private* %71, i32 19, i32 33045)
  %73 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %74 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %73, i32 20, i32 37376, i32 -37632)
  %75 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %76 = call i32 @rtl_writephy(%struct.rtl8169_private* %75, i32 19, i32 33038)
  %77 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %78 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %77, i32 20, i32 1024, i32 -1280)
  %79 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %80 = call i32 @rtl_writephy(%struct.rtl8169_private* %79, i32 19, i32 33036)
  %81 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %82 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %81, i32 20, i32 31744, i32 -32000)
  %83 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %84 = call i32 @rtl_writephy(%struct.rtl8169_private* %83, i32 19, i32 33035)
  %85 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %86 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %85, i32 20, i32 23040, i32 -23296)
  %87 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %88 = call i32 @rtl_writephy(%struct.rtl8169_private* %87, i32 31, i32 2627)
  %89 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %90 = call i32 @rtl_writephy(%struct.rtl8169_private* %89, i32 19, i32 32977)
  %91 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %92 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %91, i32 20, i32 65280, i32 -65536)
  %93 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %94 = call i32 @rtl_writephy(%struct.rtl8169_private* %93, i32 19, i32 32973)
  %95 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %96 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %95, i32 20, i32 40448, i32 -40704)
  %97 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %98 = call i32 @rtl_writephy(%struct.rtl8169_private* %97, i32 19, i32 32979)
  %99 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %100 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %99, i32 20, i32 3584, i32 -3840)
  %101 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %102 = call i32 @rtl_writephy(%struct.rtl8169_private* %101, i32 19, i32 32981)
  %103 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %104 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %103, i32 20, i32 51712, i32 -51968)
  %105 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %106 = call i32 @rtl_writephy(%struct.rtl8169_private* %105, i32 19, i32 32983)
  %107 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %108 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %107, i32 20, i32 33792, i32 -34048)
  %109 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %110 = call i32 @rtl_writephy(%struct.rtl8169_private* %109, i32 31, i32 3021)
  %111 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %112 = call i32 @rtl_writephy(%struct.rtl8169_private* %111, i32 20, i32 20581)
  %113 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %114 = call i32 @rtl_writephy(%struct.rtl8169_private* %113, i32 20, i32 53349)
  %115 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %116 = call i32 @rtl_writephy(%struct.rtl8169_private* %115, i32 31, i32 3016)
  %117 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %118 = call i32 @rtl_writephy(%struct.rtl8169_private* %117, i32 18, i32 237)
  %119 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %120 = call i32 @rtl_writephy(%struct.rtl8169_private* %119, i32 31, i32 3021)
  %121 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %122 = call i32 @rtl_writephy(%struct.rtl8169_private* %121, i32 20, i32 4197)
  %123 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %124 = call i32 @rtl_writephy(%struct.rtl8169_private* %123, i32 20, i32 36965)
  %125 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %126 = call i32 @rtl_writephy(%struct.rtl8169_private* %125, i32 20, i32 4197)
  %127 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %128 = call i32 @rtl_writephy(%struct.rtl8169_private* %127, i32 31, i32 0)
  %129 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %130 = call i32 @rtl8168g_disable_aldps(%struct.rtl8169_private* %129)
  %131 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %132 = call i32 @rtl8168g_config_eee_phy(%struct.rtl8169_private* %131)
  %133 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %134 = call i32 @rtl_enable_eee(%struct.rtl8169_private* %133)
  ret void
}

declare dso_local i32 @rtl8168g_phy_adjust_10m_aldps(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_writephy(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_w0w1_phy(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @phy_modify_paged(i32, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl8168g_disable_aldps(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168g_config_eee_phy(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_enable_eee(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
