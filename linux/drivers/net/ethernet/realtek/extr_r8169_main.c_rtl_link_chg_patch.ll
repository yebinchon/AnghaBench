; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_link_chg_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_link_chg_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8169_private = type { i64, %struct.phy_device*, %struct.net_device* }
%struct.phy_device = type { i64 }
%struct.net_device = type { i32 }

@RTL_GIGA_MAC_VER_34 = common dso_local global i64 0, align 8
@RTL_GIGA_MAC_VER_38 = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@ERIAR_MASK_1111 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@RTL_GIGA_MAC_VER_35 = common dso_local global i64 0, align 8
@RTL_GIGA_MAC_VER_36 = common dso_local global i64 0, align 8
@RTL_GIGA_MAC_VER_37 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@ERIAR_MASK_0011 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl8169_private*)* @rtl_link_chg_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_link_chg_patch(%struct.rtl8169_private* %0) #0 {
  %2 = alloca %struct.rtl8169_private*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.phy_device*, align 8
  store %struct.rtl8169_private* %0, %struct.rtl8169_private** %2, align 8
  %5 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %6 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %5, i32 0, i32 2
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %9 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %8, i32 0, i32 1
  %10 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  store %struct.phy_device* %10, %struct.phy_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call i32 @netif_running(%struct.net_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %123

15:                                               ; preds = %1
  %16 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %17 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RTL_GIGA_MAC_VER_34, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %15
  %22 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %23 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @RTL_GIGA_MAC_VER_38, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %21, %15
  %28 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SPEED_1000, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %35 = load i32, i32* @ERIAR_MASK_1111, align 4
  %36 = call i32 @rtl_eri_write(%struct.rtl8169_private* %34, i32 444, i32 %35, i32 17)
  %37 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %38 = load i32, i32* @ERIAR_MASK_1111, align 4
  %39 = call i32 @rtl_eri_write(%struct.rtl8169_private* %37, i32 476, i32 %38, i32 5)
  br label %61

40:                                               ; preds = %27
  %41 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %42 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SPEED_100, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %48 = load i32, i32* @ERIAR_MASK_1111, align 4
  %49 = call i32 @rtl_eri_write(%struct.rtl8169_private* %47, i32 444, i32 %48, i32 31)
  %50 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %51 = load i32, i32* @ERIAR_MASK_1111, align 4
  %52 = call i32 @rtl_eri_write(%struct.rtl8169_private* %50, i32 476, i32 %51, i32 5)
  br label %60

53:                                               ; preds = %40
  %54 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %55 = load i32, i32* @ERIAR_MASK_1111, align 4
  %56 = call i32 @rtl_eri_write(%struct.rtl8169_private* %54, i32 444, i32 %55, i32 31)
  %57 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %58 = load i32, i32* @ERIAR_MASK_1111, align 4
  %59 = call i32 @rtl_eri_write(%struct.rtl8169_private* %57, i32 476, i32 %58, i32 63)
  br label %60

60:                                               ; preds = %53, %46
  br label %61

61:                                               ; preds = %60, %33
  %62 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %63 = call i32 @rtl_reset_packet_filter(%struct.rtl8169_private* %62)
  br label %123

64:                                               ; preds = %21
  %65 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %66 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RTL_GIGA_MAC_VER_35, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %72 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @RTL_GIGA_MAC_VER_36, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %70, %64
  %77 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %78 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SPEED_1000, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %84 = load i32, i32* @ERIAR_MASK_1111, align 4
  %85 = call i32 @rtl_eri_write(%struct.rtl8169_private* %83, i32 444, i32 %84, i32 17)
  %86 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %87 = load i32, i32* @ERIAR_MASK_1111, align 4
  %88 = call i32 @rtl_eri_write(%struct.rtl8169_private* %86, i32 476, i32 %87, i32 5)
  br label %96

89:                                               ; preds = %76
  %90 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %91 = load i32, i32* @ERIAR_MASK_1111, align 4
  %92 = call i32 @rtl_eri_write(%struct.rtl8169_private* %90, i32 444, i32 %91, i32 31)
  %93 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %94 = load i32, i32* @ERIAR_MASK_1111, align 4
  %95 = call i32 @rtl_eri_write(%struct.rtl8169_private* %93, i32 476, i32 %94, i32 63)
  br label %96

96:                                               ; preds = %89, %82
  br label %122

97:                                               ; preds = %70
  %98 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %99 = getelementptr inbounds %struct.rtl8169_private, %struct.rtl8169_private* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @RTL_GIGA_MAC_VER_37, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %97
  %104 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %105 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SPEED_10, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %111 = load i32, i32* @ERIAR_MASK_0011, align 4
  %112 = call i32 @rtl_eri_write(%struct.rtl8169_private* %110, i32 464, i32 %111, i32 19714)
  %113 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %114 = load i32, i32* @ERIAR_MASK_0011, align 4
  %115 = call i32 @rtl_eri_write(%struct.rtl8169_private* %113, i32 476, i32 %114, i32 1546)
  br label %120

116:                                              ; preds = %103
  %117 = load %struct.rtl8169_private*, %struct.rtl8169_private** %2, align 8
  %118 = load i32, i32* @ERIAR_MASK_0011, align 4
  %119 = call i32 @rtl_eri_write(%struct.rtl8169_private* %117, i32 464, i32 %118, i32 0)
  br label %120

120:                                              ; preds = %116, %109
  br label %121

121:                                              ; preds = %120, %97
  br label %122

122:                                              ; preds = %121, %96
  br label %123

123:                                              ; preds = %14, %122, %61
  ret void
}

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @rtl_eri_write(%struct.rtl8169_private*, i32, i32, i32) #1

declare dso_local i32 @rtl_reset_packet_filter(%struct.rtl8169_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
