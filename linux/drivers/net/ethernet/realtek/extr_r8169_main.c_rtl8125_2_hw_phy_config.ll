; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8125_2_hw_phy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl8125_2_hw_phy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { %struct.phy_device* }
%struct.phy_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl8125_2_hw_phy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8125_2_hw_phy_config(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %5, i32 0, i32 0
  %7 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  store %struct.phy_device* %7, %struct.phy_device** %3, align 8
  %8 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %9 = call i32 @phy_modify_paged(%struct.phy_device* %8, i32 2772, i32 23, i32 0, i32 16)
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = call i32 @phy_modify_paged(%struct.phy_device* %10, i32 2769, i32 19, i32 1023, i32 1023)
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = call i32 @phy_modify_paged(%struct.phy_device* %12, i32 2771, i32 17, i32 63, i32 6)
  %14 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %15 = call i32 @phy_modify_paged(%struct.phy_device* %14, i32 2752, i32 20, i32 4352, i32 0)
  %16 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %17 = call i32 @phy_modify_paged(%struct.phy_device* %16, i32 2764, i32 16, i32 3, i32 2)
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = call i32 @phy_modify_paged(%struct.phy_device* %18, i32 2772, i32 16, i32 231, i32 68)
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = call i32 @phy_modify_paged(%struct.phy_device* %20, i32 2753, i32 18, i32 128, i32 0)
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = call i32 @phy_modify_paged(%struct.phy_device* %22, i32 2760, i32 16, i32 768, i32 0)
  %24 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %25 = call i32 @phy_modify_paged(%struct.phy_device* %24, i32 2757, i32 23, i32 7, i32 2)
  %26 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %27 = call i32 @phy_write_paged(%struct.phy_device* %26, i32 2772, i32 22, i32 168)
  %28 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %29 = call i32 @phy_write_paged(%struct.phy_device* %28, i32 2757, i32 22, i32 511)
  %30 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %31 = call i32 @phy_modify_paged(%struct.phy_device* %30, i32 2760, i32 21, i32 240, i32 48)
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = call i32 @phy_write(%struct.phy_device* %32, i32 31, i32 2951)
  %34 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %35 = call i32 @phy_write(%struct.phy_device* %34, i32 22, i32 32930)
  %36 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %37 = call i32 @phy_write(%struct.phy_device* %36, i32 23, i32 339)
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = call i32 @phy_write(%struct.phy_device* %38, i32 22, i32 32924)
  %40 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %41 = call i32 @phy_write(%struct.phy_device* %40, i32 23, i32 339)
  %42 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %43 = call i32 @phy_write(%struct.phy_device* %42, i32 31, i32 0)
  %44 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %45 = call i32 @phy_write(%struct.phy_device* %44, i32 31, i32 2627)
  %46 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %47 = call i32 @phy_write(%struct.phy_device* %46, i32 19, i32 33203)
  %48 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %49 = call i32 @phy_write(%struct.phy_device* %48, i32 20, i32 67)
  %50 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %51 = call i32 @phy_write(%struct.phy_device* %50, i32 20, i32 167)
  %52 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %53 = call i32 @phy_write(%struct.phy_device* %52, i32 20, i32 214)
  %54 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %55 = call i32 @phy_write(%struct.phy_device* %54, i32 20, i32 236)
  %56 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %57 = call i32 @phy_write(%struct.phy_device* %56, i32 20, i32 246)
  %58 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %59 = call i32 @phy_write(%struct.phy_device* %58, i32 20, i32 251)
  %60 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %61 = call i32 @phy_write(%struct.phy_device* %60, i32 20, i32 253)
  %62 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %63 = call i32 @phy_write(%struct.phy_device* %62, i32 20, i32 255)
  %64 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %65 = call i32 @phy_write(%struct.phy_device* %64, i32 20, i32 187)
  %66 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %67 = call i32 @phy_write(%struct.phy_device* %66, i32 20, i32 88)
  %68 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %69 = call i32 @phy_write(%struct.phy_device* %68, i32 20, i32 41)
  %70 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %71 = call i32 @phy_write(%struct.phy_device* %70, i32 20, i32 19)
  %72 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %73 = call i32 @phy_write(%struct.phy_device* %72, i32 20, i32 9)
  %74 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %75 = call i32 @phy_write(%struct.phy_device* %74, i32 20, i32 4)
  %76 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %77 = call i32 @phy_write(%struct.phy_device* %76, i32 20, i32 2)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %84, %1
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 25
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %83 = call i32 @phy_write(%struct.phy_device* %82, i32 20, i32 0)
  br label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %4, align 4
  br label %78

87:                                               ; preds = %78
  %88 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %89 = call i32 @phy_write(%struct.phy_device* %88, i32 19, i32 33367)
  %90 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %91 = call i32 @phy_write(%struct.phy_device* %90, i32 20, i32 527)
  %92 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %93 = call i32 @phy_write(%struct.phy_device* %92, i32 19, i32 33002)
  %94 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %95 = call i32 @phy_write(%struct.phy_device* %94, i32 20, i32 30787)
  %96 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %97 = call i32 @phy_write(%struct.phy_device* %96, i32 31, i32 0)
  %98 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %99 = call i32 @rtl_apply_firmware(%struct.rtl8169_private* %98)
  %100 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %101 = call i32 @phy_modify_paged(%struct.phy_device* %100, i32 3334, i32 20, i32 0, i32 8192)
  %102 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %103 = call i32 @phy_write(%struct.phy_device* %102, i32 31, i32 2627)
  %104 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %105 = call i32 @phy_write(%struct.phy_device* %104, i32 19, i32 33186)
  %106 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %107 = call i32 @BIT(i32 8)
  %108 = call i32 @phy_set_bits(%struct.phy_device* %106, i32 20, i32 %107)
  %109 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %110 = call i32 @phy_write(%struct.phy_device* %109, i32 31, i32 0)
  %111 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %112 = call i32 @phy_modify_paged(%struct.phy_device* %111, i32 2900, i32 22, i32 65280, i32 56064)
  %113 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %114 = call i32 @phy_modify_paged(%struct.phy_device* %113, i32 2629, i32 18, i32 1, i32 0)
  %115 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %116 = call i32 @phy_modify_paged(%struct.phy_device* %115, i32 2653, i32 18, i32 0, i32 32)
  %117 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %118 = call i32 @phy_modify_paged(%struct.phy_device* %117, i32 2772, i32 23, i32 16, i32 0)
  %119 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %120 = call i32 @phy_modify_paged(%struct.phy_device* %119, i32 2694, i32 21, i32 1, i32 0)
  %121 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %122 = call i32 @phy_modify_paged(%struct.phy_device* %121, i32 2628, i32 17, i32 0, i32 2048)
  %123 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %124 = call i32 @rtl8125_config_eee_phy(%struct.rtl8169_private* %123)
  %125 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %126 = call i32 @rtl_enable_eee(%struct.rtl8169_private* %125)
  ret void
}

declare dso_local i32 @phy_modify_paged(%struct.phy_device*, i32, i32, i32, i32) #1

declare dso_local i32 @phy_write_paged(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @rtl_apply_firmware(%struct.rtl8169_private*) #1

declare dso_local i32 @phy_set_bits(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtl8125_config_eee_phy(%struct.rtl8169_private*) #1

declare dso_local i32 @rtl_enable_eee(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
