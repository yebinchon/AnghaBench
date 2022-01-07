; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168h_1_hw_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8168h_1_hw_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8168h_1_hw_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8168h_1_hw_phy_config(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = call i32 @rtl_apply_firmware(%struct.rtl8169_private* %5)
  %7 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %8 = call i32 @rtl_writephy(%struct.rtl8169_private* %7, i32 31, i32 2627)
  %9 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %10 = call i32 @rtl_writephy(%struct.rtl8169_private* %9, i32 19, i32 32923)
  %11 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %12 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %11, i32 20, i32 32768, i32 63488)
  %13 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %14 = call i32 @rtl_writephy(%struct.rtl8169_private* %13, i32 19, i32 32930)
  %15 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %16 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %15, i32 20, i32 32768, i32 65280)
  %17 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %18 = call i32 @rtl_writephy(%struct.rtl8169_private* %17, i32 19, i32 32932)
  %19 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %20 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %19, i32 20, i32 34048, i32 65280)
  %21 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %22 = call i32 @rtl_writephy(%struct.rtl8169_private* %21, i32 19, i32 32924)
  %23 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %24 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %23, i32 20, i32 48384, i32 65280)
  %25 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %26 = call i32 @rtl_writephy(%struct.rtl8169_private* %25, i32 31, i32 0)
  %27 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %28 = call i32 @rtl_writephy(%struct.rtl8169_private* %27, i32 31, i32 2627)
  %29 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %30 = call i32 @rtl_writephy(%struct.rtl8169_private* %29, i32 19, i32 32941)
  %31 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %32 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %31, i32 20, i32 28672, i32 63488)
  %33 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %34 = call i32 @rtl_writephy(%struct.rtl8169_private* %33, i32 19, i32 32948)
  %35 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %36 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %35, i32 20, i32 20480, i32 65280)
  %37 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %38 = call i32 @rtl_writephy(%struct.rtl8169_private* %37, i32 19, i32 32940)
  %39 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %40 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %39, i32 20, i32 16384, i32 65280)
  %41 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %42 = call i32 @rtl_writephy(%struct.rtl8169_private* %41, i32 31, i32 0)
  %43 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %44 = call i32 @rtl_writephy(%struct.rtl8169_private* %43, i32 31, i32 2627)
  %45 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %46 = call i32 @rtl_writephy(%struct.rtl8169_private* %45, i32 19, i32 32910)
  %47 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %48 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %47, i32 20, i32 4608, i32 65280)
  %49 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %50 = call i32 @rtl_writephy(%struct.rtl8169_private* %49, i32 19, i32 32912)
  %51 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %52 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %51, i32 20, i32 58624, i32 65280)
  %53 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %54 = call i32 @rtl_writephy(%struct.rtl8169_private* %53, i32 19, i32 32914)
  %55 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %56 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %55, i32 20, i32 40704, i32 65280)
  %57 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %58 = call i32 @rtl_writephy(%struct.rtl8169_private* %57, i32 31, i32 0)
  store i32 0, i32* %3, align 4
  %59 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %60 = call i32 @rtl_writephy(%struct.rtl8169_private* %59, i32 31, i32 2630)
  %61 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %62 = call i32 @rtl_readphy(%struct.rtl8169_private* %61, i32 19)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = and i32 %63, 3
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = shl i32 %65, 2
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* %3, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %3, align 4
  %70 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %71 = call i32 @rtl_readphy(%struct.rtl8169_private* %70, i32 18)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, 49152
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = ashr i32 %74, 14
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* %3, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %3, align 4
  %79 = load i32, i32* %3, align 4
  %80 = xor i32 %79, 8
  %81 = xor i32 %80, -1
  store i32 %81, i32* %3, align 4
  %82 = load i32, i32* %3, align 4
  %83 = shl i32 %82, 12
  store i32 %83, i32* %3, align 4
  %84 = load i32, i32* %3, align 4
  %85 = and i32 %84, 61440
  store i32 %85, i32* %3, align 4
  %86 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %87 = call i32 @rtl_writephy(%struct.rtl8169_private* %86, i32 31, i32 2627)
  %88 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %89 = call i32 @rtl_writephy(%struct.rtl8169_private* %88, i32 19, i32 33402)
  %90 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %91 = load i32, i32* %3, align 4
  %92 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %90, i32 20, i32 %91, i32 61440)
  %93 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %94 = call i32 @rtl_writephy(%struct.rtl8169_private* %93, i32 19, i32 33403)
  %95 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %96 = load i32, i32* %3, align 4
  %97 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %95, i32 20, i32 %96, i32 61440)
  %98 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %99 = call i32 @rtl_writephy(%struct.rtl8169_private* %98, i32 19, i32 33404)
  %100 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %101 = load i32, i32* %3, align 4
  %102 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %100, i32 20, i32 %101, i32 61440)
  %103 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %104 = call i32 @rtl_writephy(%struct.rtl8169_private* %103, i32 19, i32 33405)
  %105 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %106 = load i32, i32* %3, align 4
  %107 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %105, i32 20, i32 %106, i32 61440)
  %108 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %109 = call i32 @rtl_writephy(%struct.rtl8169_private* %108, i32 31, i32 2627)
  %110 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %111 = call i32 @rtl_writephy(%struct.rtl8169_private* %110, i32 19, i32 2065)
  %112 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %113 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %112, i32 20, i32 2048, i32 0)
  %114 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %115 = call i32 @rtl_writephy(%struct.rtl8169_private* %114, i32 31, i32 2626)
  %116 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %117 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %116, i32 22, i32 2, i32 0)
  %118 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %119 = call i32 @rtl_writephy(%struct.rtl8169_private* %118, i32 31, i32 0)
  %120 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %121 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @BIT(i32 11)
  %124 = call i32 @phy_modify_paged(i32 %122, i32 2628, i32 17, i32 0, i32 %123)
  %125 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %126 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @BIT(i32 12)
  %129 = call i32 @BIT(i32 13)
  %130 = or i32 %128, %129
  %131 = call i32 @BIT(i32 14)
  %132 = call i32 @phy_modify_paged(i32 %127, i32 3018, i32 23, i32 %130, i32 %131)
  %133 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %134 = call i32 @rtl_writephy(%struct.rtl8169_private* %133, i32 31, i32 2627)
  %135 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %136 = call i32 @rtl_writephy(%struct.rtl8169_private* %135, i32 19, i32 32831)
  %137 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %138 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %137, i32 20, i32 0, i32 12288)
  %139 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %140 = call i32 @rtl_writephy(%struct.rtl8169_private* %139, i32 19, i32 32839)
  %141 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %142 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %141, i32 20, i32 0, i32 12288)
  %143 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %144 = call i32 @rtl_writephy(%struct.rtl8169_private* %143, i32 19, i32 32847)
  %145 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %146 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %145, i32 20, i32 0, i32 12288)
  %147 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %148 = call i32 @rtl_writephy(%struct.rtl8169_private* %147, i32 19, i32 32855)
  %149 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %150 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %149, i32 20, i32 0, i32 12288)
  %151 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %152 = call i32 @rtl_writephy(%struct.rtl8169_private* %151, i32 19, i32 32863)
  %153 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %154 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %153, i32 20, i32 0, i32 12288)
  %155 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %156 = call i32 @rtl_writephy(%struct.rtl8169_private* %155, i32 19, i32 32871)
  %157 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %158 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %157, i32 20, i32 0, i32 12288)
  %159 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %160 = call i32 @rtl_writephy(%struct.rtl8169_private* %159, i32 19, i32 32879)
  %161 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %162 = call i32 @rtl_w0w1_phy(%struct.rtl8169_private* %161, i32 20, i32 0, i32 12288)
  %163 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %164 = call i32 @rtl_writephy(%struct.rtl8169_private* %163, i32 31, i32 0)
  %165 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %166 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @BIT(i32 7)
  %169 = call i32 @phy_modify_paged(i32 %167, i32 2628, i32 17, i32 %168, i32 0)
  %170 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %171 = call i32 @rtl8168g_disable_aldps(%struct.rtl8169_private* %170)
  %172 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %173 = call i32 @rtl8168h_config_eee_phy(%struct.rtl8169_private* %172)
  %174 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %175 = call i32 @rtl_enable_eee(%struct.rtl8169_private* %174)
  ret void
}

declare dso_local i32 @rtl_apply_firmware(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_writephy(%struct.rtl8169_private*, i32, i32) #1

declare dso_local i32 @rtl_w0w1_phy(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @rtl_readphy(%struct.rtl8169_private*, i32) #1

declare dso_local i32 @phy_modify_paged(i32, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl8168g_disable_aldps(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl8168h_config_eee_phy(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_enable_eee(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
