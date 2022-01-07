; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153b_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153b_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32, i32, i32 }

@RTL8152_UNPLUG = common dso_local global i32 0, align 4
@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_BOOT_CTRL = common dso_local global i32 0, align 4
@AUTOLOAD_DONE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@PHY_STAT_LAN_ON = common dso_local global i32 0, align 4
@MCU_TYPE_USB = common dso_local global i32 0, align 4
@USB_MSC_TIMER = common dso_local global i32 0, align 4
@USB_U1U2_TIMER = common dso_local global i32 0, align 4
@PLA_MAC_PWR_CTRL2 = common dso_local global i32 0, align 4
@MAC_CLK_SPDWN_EN = common dso_local global i32 0, align 4
@GREEN_ETHERNET = common dso_local global i32 0, align 4
@USB_USB_CTRL = common dso_local global i32 0, align 4
@RX_AGG_DISABLE = common dso_local global i32 0, align 4
@RX_ZERO_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @r8153b_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8153b_init(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %6 = load i32, i32* @RTL8152_UNPLUG, align 4
  %7 = load %struct.r8152*, %struct.r8152** %2, align 8
  %8 = getelementptr inbounds %struct.r8152, %struct.r8152* %7, i32 0, i32 1
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %114

12:                                               ; preds = %1
  %13 = load %struct.r8152*, %struct.r8152** %2, align 8
  %14 = call i32 @r8153b_u1u2en(%struct.r8152* %13, i32 0)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %29, %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 500
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load %struct.r8152*, %struct.r8152** %2, align 8
  %20 = load i32, i32* @MCU_TYPE_PLA, align 4
  %21 = load i32, i32* @PLA_BOOT_CTRL, align 4
  %22 = call i32 @ocp_read_word(%struct.r8152* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @AUTOLOAD_DONE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %32

27:                                               ; preds = %18
  %28 = call i32 @msleep(i32 20)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %15

32:                                               ; preds = %26, %15
  %33 = load %struct.r8152*, %struct.r8152** %2, align 8
  %34 = call i32 @r8153_phy_status(%struct.r8152* %33, i32 0)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.r8152*, %struct.r8152** %2, align 8
  %36 = load i32, i32* @MII_BMCR, align 4
  %37 = call i32 @r8152_mdio_read(%struct.r8152* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @BMCR_PDOWN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load i32, i32* @BMCR_PDOWN, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.r8152*, %struct.r8152** %2, align 8
  %48 = load i32, i32* @MII_BMCR, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @r8152_mdio_write(%struct.r8152* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %32
  %52 = load %struct.r8152*, %struct.r8152** %2, align 8
  %53 = load i32, i32* @PHY_STAT_LAN_ON, align 4
  %54 = call i32 @r8153_phy_status(%struct.r8152* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load %struct.r8152*, %struct.r8152** %2, align 8
  %56 = call i32 @r8153_u2p3en(%struct.r8152* %55, i32 0)
  %57 = load %struct.r8152*, %struct.r8152** %2, align 8
  %58 = load i32, i32* @MCU_TYPE_USB, align 4
  %59 = load i32, i32* @USB_MSC_TIMER, align 4
  %60 = call i32 @ocp_write_word(%struct.r8152* %57, i32 %58, i32 %59, i32 4095)
  %61 = load %struct.r8152*, %struct.r8152** %2, align 8
  %62 = load i32, i32* @MCU_TYPE_USB, align 4
  %63 = load i32, i32* @USB_U1U2_TIMER, align 4
  %64 = call i32 @ocp_write_word(%struct.r8152* %61, i32 %62, i32 %63, i32 500)
  %65 = load %struct.r8152*, %struct.r8152** %2, align 8
  %66 = call i32 @r8153b_power_cut_en(%struct.r8152* %65, i32 0)
  %67 = load %struct.r8152*, %struct.r8152** %2, align 8
  %68 = call i32 @r8153b_ups_en(%struct.r8152* %67, i32 0)
  %69 = load %struct.r8152*, %struct.r8152** %2, align 8
  %70 = call i32 @r8153_queue_wake(%struct.r8152* %69, i32 0)
  %71 = load %struct.r8152*, %struct.r8152** %2, align 8
  %72 = call i32 @rtl_runtime_suspend_enable(%struct.r8152* %71, i32 0)
  %73 = load %struct.r8152*, %struct.r8152** %2, align 8
  %74 = call i32 @r8153b_u1u2en(%struct.r8152* %73, i32 1)
  %75 = load %struct.r8152*, %struct.r8152** %2, align 8
  %76 = getelementptr inbounds %struct.r8152, %struct.r8152* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @usb_enable_lpm(i32 %77)
  %79 = load %struct.r8152*, %struct.r8152** %2, align 8
  %80 = load i32, i32* @MCU_TYPE_PLA, align 4
  %81 = load i32, i32* @PLA_MAC_PWR_CTRL2, align 4
  %82 = call i32 @ocp_read_word(%struct.r8152* %79, i32 %80, i32 %81)
  store i32 %82, i32* %3, align 4
  %83 = load i32, i32* @MAC_CLK_SPDWN_EN, align 4
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %3, align 4
  %86 = load %struct.r8152*, %struct.r8152** %2, align 8
  %87 = load i32, i32* @MCU_TYPE_PLA, align 4
  %88 = load i32, i32* @PLA_MAC_PWR_CTRL2, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @ocp_write_word(%struct.r8152* %86, i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* @GREEN_ETHERNET, align 4
  %92 = load %struct.r8152*, %struct.r8152** %2, align 8
  %93 = getelementptr inbounds %struct.r8152, %struct.r8152* %92, i32 0, i32 1
  %94 = call i32 @set_bit(i32 %91, i32* %93)
  %95 = load %struct.r8152*, %struct.r8152** %2, align 8
  %96 = load i32, i32* @MCU_TYPE_USB, align 4
  %97 = load i32, i32* @USB_USB_CTRL, align 4
  %98 = call i32 @ocp_read_word(%struct.r8152* %95, i32 %96, i32 %97)
  store i32 %98, i32* %3, align 4
  %99 = load i32, i32* @RX_AGG_DISABLE, align 4
  %100 = load i32, i32* @RX_ZERO_EN, align 4
  %101 = or i32 %99, %100
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %3, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %3, align 4
  %105 = load %struct.r8152*, %struct.r8152** %2, align 8
  %106 = load i32, i32* @MCU_TYPE_USB, align 4
  %107 = load i32, i32* @USB_USB_CTRL, align 4
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @ocp_write_word(%struct.r8152* %105, i32 %106, i32 %107, i32 %108)
  %110 = load %struct.r8152*, %struct.r8152** %2, align 8
  %111 = call i32 @rtl_tally_reset(%struct.r8152* %110)
  %112 = load %struct.r8152*, %struct.r8152** %2, align 8
  %113 = getelementptr inbounds %struct.r8152, %struct.r8152* %112, i32 0, i32 0
  store i32 15000, i32* %113, align 4
  br label %114

114:                                              ; preds = %51, %11
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @r8153b_u1u2en(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @r8153_phy_status(%struct.r8152*, i32) #1

declare dso_local i32 @r8152_mdio_read(%struct.r8152*, i32) #1

declare dso_local i32 @r8152_mdio_write(%struct.r8152*, i32, i32) #1

declare dso_local i32 @r8153_u2p3en(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @r8153b_power_cut_en(%struct.r8152*, i32) #1

declare dso_local i32 @r8153b_ups_en(%struct.r8152*, i32) #1

declare dso_local i32 @r8153_queue_wake(%struct.r8152*, i32) #1

declare dso_local i32 @rtl_runtime_suspend_enable(%struct.r8152*, i32) #1

declare dso_local i32 @usb_enable_lpm(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @rtl_tally_reset(%struct.r8152*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
