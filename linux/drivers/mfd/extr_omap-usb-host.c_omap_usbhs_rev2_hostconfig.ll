; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_omap_usbhs_rev2_hostconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_omap-usb-host.c_omap_usbhs_rev2_hostconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_hcd_omap = type { i32, %struct.usbhs_omap_platform_data* }
%struct.usbhs_omap_platform_data = type { i32* }

@OMAP4_P1_MODE_CLEAR = common dso_local global i32 0, align 4
@OMAP4_P1_MODE_TLL = common dso_local global i32 0, align 4
@OMAP4_P1_MODE_HSIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_hcd_omap*, i32)* @omap_usbhs_rev2_hostconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_usbhs_rev2_hostconfig(%struct.usbhs_hcd_omap* %0, i32 %1) #0 {
  %3 = alloca %struct.usbhs_hcd_omap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbhs_omap_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.usbhs_hcd_omap* %0, %struct.usbhs_hcd_omap** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %8 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %7, i32 0, i32 1
  %9 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %8, align 8
  store %struct.usbhs_omap_platform_data* %9, %struct.usbhs_omap_platform_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %69, %2
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.usbhs_hcd_omap*, %struct.usbhs_hcd_omap** %3, align 8
  %13 = getelementptr inbounds %struct.usbhs_hcd_omap, %struct.usbhs_hcd_omap* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %72

16:                                               ; preds = %10
  %17 = load i32, i32* @OMAP4_P1_MODE_CLEAR, align 4
  %18 = load i32, i32* %6, align 4
  %19 = mul nsw i32 2, %18
  %20 = shl i32 %17, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %25 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @is_ehci_tll_mode(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %16
  %34 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %35 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @is_ohci_port(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %33, %16
  %44 = load i32, i32* @OMAP4_P1_MODE_TLL, align 4
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 2, %45
  %47 = shl i32 %44, %46
  %48 = load i32, i32* %4, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %4, align 4
  br label %68

50:                                               ; preds = %33
  %51 = load %struct.usbhs_omap_platform_data*, %struct.usbhs_omap_platform_data** %5, align 8
  %52 = getelementptr inbounds %struct.usbhs_omap_platform_data, %struct.usbhs_omap_platform_data* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @is_ehci_hsic_mode(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %50
  %61 = load i32, i32* @OMAP4_P1_MODE_HSIC, align 4
  %62 = load i32, i32* %6, align 4
  %63 = mul nsw i32 2, %62
  %64 = shl i32 %61, %63
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %60, %50
  br label %68

68:                                               ; preds = %67, %43
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %10

72:                                               ; preds = %10
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @is_ehci_tll_mode(i32) #1

declare dso_local i64 @is_ohci_port(i32) #1

declare dso_local i64 @is_ehci_hsic_mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
