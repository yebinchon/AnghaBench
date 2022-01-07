; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8125_1_hw_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8125_1_hw_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { %struct.phy_device* }
%struct.phy_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8125_1_hw_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8125_1_hw_phy_config(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca %struct.phy_device*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %4 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %5 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %4, i32 0, i32 0
  %6 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  store %struct.phy_device* %6, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = call i32 @phy_modify_paged(%struct.phy_device* %7, i32 2772, i32 16, i32 1023, i32 132)
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = call i32 @phy_modify_paged(%struct.phy_device* %9, i32 2772, i32 23, i32 0, i32 16)
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = call i32 @phy_modify_paged(%struct.phy_device* %11, i32 2769, i32 19, i32 1023, i32 6)
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = call i32 @phy_modify_paged(%struct.phy_device* %13, i32 2771, i32 17, i32 63, i32 6)
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = call i32 @phy_modify_paged(%struct.phy_device* %15, i32 2752, i32 20, i32 0, i32 4352)
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = call i32 @phy_modify_paged(%struct.phy_device* %17, i32 2760, i32 21, i32 61440, i32 28672)
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = call i32 @phy_modify_paged(%struct.phy_device* %19, i32 2769, i32 20, i32 0, i32 1024)
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = call i32 @phy_modify_paged(%struct.phy_device* %21, i32 2769, i32 21, i32 0, i32 1023)
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = call i32 @phy_modify_paged(%struct.phy_device* %23, i32 2769, i32 22, i32 0, i32 1023)
  %25 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %26 = call i32 @phy_write(%struct.phy_device* %25, i32 31, i32 2627)
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = call i32 @phy_write(%struct.phy_device* %27, i32 19, i32 33002)
  %29 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %30 = call i32 @phy_modify(%struct.phy_device* %29, i32 20, i32 65280, i32 50176)
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = call i32 @phy_write(%struct.phy_device* %31, i32 19, i32 33003)
  %33 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %34 = call i32 @phy_modify(%struct.phy_device* %33, i32 20, i32 1792, i32 768)
  %35 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %36 = call i32 @phy_write(%struct.phy_device* %35, i32 19, i32 33016)
  %37 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %38 = call i32 @phy_modify(%struct.phy_device* %37, i32 20, i32 65280, i32 7168)
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = call i32 @phy_write(%struct.phy_device* %39, i32 19, i32 33009)
  %41 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %42 = call i32 @phy_modify(%struct.phy_device* %41, i32 20, i32 65280, i32 12288)
  %43 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %44 = call i32 @phy_write(%struct.phy_device* %43, i32 19, i32 33022)
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = call i32 @phy_modify(%struct.phy_device* %45, i32 20, i32 65280, i32 42240)
  %47 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %48 = call i32 @phy_write(%struct.phy_device* %47, i32 19, i32 33026)
  %49 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %50 = call i32 @phy_modify(%struct.phy_device* %49, i32 20, i32 65280, i32 20480)
  %51 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %52 = call i32 @phy_write(%struct.phy_device* %51, i32 19, i32 33029)
  %53 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %54 = call i32 @phy_modify(%struct.phy_device* %53, i32 20, i32 65280, i32 13056)
  %55 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %56 = call i32 @phy_write(%struct.phy_device* %55, i32 19, i32 33024)
  %57 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %58 = call i32 @phy_modify(%struct.phy_device* %57, i32 20, i32 65280, i32 28672)
  %59 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %60 = call i32 @phy_write(%struct.phy_device* %59, i32 19, i32 33028)
  %61 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %62 = call i32 @phy_modify(%struct.phy_device* %61, i32 20, i32 65280, i32 61440)
  %63 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %64 = call i32 @phy_write(%struct.phy_device* %63, i32 19, i32 33030)
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = call i32 @phy_modify(%struct.phy_device* %65, i32 20, i32 65280, i32 25856)
  %67 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %68 = call i32 @phy_write(%struct.phy_device* %67, i32 19, i32 32988)
  %69 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %70 = call i32 @phy_modify(%struct.phy_device* %69, i32 20, i32 65280, i32 60672)
  %71 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %72 = call i32 @phy_write(%struct.phy_device* %71, i32 19, i32 32991)
  %73 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %74 = call i32 @BIT(i32 8)
  %75 = call i32 @phy_set_bits(%struct.phy_device* %73, i32 20, i32 %74)
  %76 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %77 = call i32 @phy_write(%struct.phy_device* %76, i32 19, i32 32993)
  %78 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %79 = call i32 @BIT(i32 8)
  %80 = call i32 @phy_clear_bits(%struct.phy_device* %78, i32 20, i32 %79)
  %81 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %82 = call i32 @phy_write(%struct.phy_device* %81, i32 31, i32 0)
  %83 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %84 = call i32 @phy_modify_paged(%struct.phy_device* %83, i32 3056, i32 19, i32 63, i32 56)
  %85 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %86 = call i32 @phy_write_paged(%struct.phy_device* %85, i32 2627, i32 19, i32 33183)
  %87 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %88 = call i32 @phy_write_paged(%struct.phy_device* %87, i32 2627, i32 20, i32 53430)
  %89 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %90 = call i32 @phy_write_paged(%struct.phy_device* %89, i32 3011, i32 18, i32 21845)
  %91 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %92 = call i32 @phy_modify_paged(%struct.phy_device* %91, i32 3056, i32 21, i32 3584, i32 2560)
  %93 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %94 = call i32 @phy_modify_paged(%struct.phy_device* %93, i32 2652, i32 16, i32 1024, i32 0)
  %95 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %96 = call i32 @phy_modify_paged(%struct.phy_device* %95, i32 2628, i32 17, i32 0, i32 2048)
  %97 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %98 = call i32 @rtl8125_config_eee_phy(%struct.rtl8169_private* %97)
  %99 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %100 = call i32 @rtl_enable_eee(%struct.rtl8169_private* %99)
  ret void
}

declare dso_local i32 @phy_modify_paged(%struct.phy_device*, i32, i32, i32, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_modify(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_set_bits(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @phy_clear_bits(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_write_paged(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @rtl8125_config_eee_phy(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_enable_eee(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
