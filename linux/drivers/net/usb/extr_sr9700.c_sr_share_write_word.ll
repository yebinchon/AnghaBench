; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9700.c_sr_share_write_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9700.c_sr_share_write_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@SR_EPDR = common dso_local global i32 0, align 4
@SR_EPAR = common dso_local global i32 0, align 4
@EPAR_PHY_ADR = common dso_local global i32 0, align 4
@SR_EPCR = common dso_local global i32 0, align 4
@EPCR_WEP = common dso_local global i32 0, align 4
@EPCR_EPOS = common dso_local global i32 0, align 4
@EPCR_ERPRW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32, i32, i32)* @sr_share_write_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_share_write_word(%struct.usbnet* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %14 = load i32, i32* @SR_EPDR, align 4
  %15 = call i32 @sr_write(%struct.usbnet* %13, i32 %14, i32 2, i32* %8)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %60

19:                                               ; preds = %4
  %20 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %21 = load i32, i32* @SR_EPAR, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @EPAR_PHY_ADR, align 4
  %27 = or i32 %25, %26
  br label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %7, align 4
  br label %30

30:                                               ; preds = %28, %24
  %31 = phi i32 [ %27, %24 ], [ %29, %28 ]
  %32 = call i32 @sr_write_reg(%struct.usbnet* %20, i32 %21, i32 %31)
  %33 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %34 = load i32, i32* @SR_EPCR, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32, i32* @EPCR_WEP, align 4
  %39 = load i32, i32* @EPCR_EPOS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @EPCR_ERPRW, align 4
  %42 = or i32 %40, %41
  br label %47

43:                                               ; preds = %30
  %44 = load i32, i32* @EPCR_WEP, align 4
  %45 = load i32, i32* @EPCR_ERPRW, align 4
  %46 = or i32 %44, %45
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi i32 [ %42, %37 ], [ %46, %43 ]
  %49 = call i32 @sr_write_reg(%struct.usbnet* %33, i32 %34, i32 %48)
  %50 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @wait_phy_eeprom_ready(%struct.usbnet* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %60

56:                                               ; preds = %47
  %57 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %58 = load i32, i32* @SR_EPCR, align 4
  %59 = call i32 @sr_write_reg(%struct.usbnet* %57, i32 %58, i32 0)
  br label %60

60:                                               ; preds = %56, %55, %18
  %61 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %62 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @sr_write(%struct.usbnet*, i32, i32, i32*) #1

declare dso_local i32 @sr_write_reg(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @wait_phy_eeprom_ready(%struct.usbnet*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
