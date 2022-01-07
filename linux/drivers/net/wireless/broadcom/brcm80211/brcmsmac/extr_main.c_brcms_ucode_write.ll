; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_ucode_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_ucode_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_hardware = type { i32, %struct.bcma_device* }
%struct.bcma_device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"wl%d\0A\00", align 1
@objaddr = common dso_local global i32 0, align 4
@OBJADDR_AUTO_INC = common dso_local global i32 0, align 4
@OBJADDR_UCM_SEL = common dso_local global i32 0, align 4
@objdata = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_hardware*, i32*, i64)* @brcms_ucode_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_ucode_write(%struct.brcms_hardware* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.brcms_hardware*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bcma_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.brcms_hardware* %0, %struct.brcms_hardware** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %11 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %10, i32 0, i32 1
  %12 = load %struct.bcma_device*, %struct.bcma_device** %11, align 8
  store %struct.bcma_device* %12, %struct.bcma_device** %7, align 8
  %13 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %14 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %13, i32 0, i32 1
  %15 = load %struct.bcma_device*, %struct.bcma_device** %14, align 8
  %16 = load %struct.brcms_hardware*, %struct.brcms_hardware** %4, align 8
  %17 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @brcms_dbg_info(%struct.bcma_device* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i64, i64* %6, align 8
  %21 = udiv i64 %20, 4
  store i64 %21, i64* %9, align 8
  %22 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %23 = load i32, i32* @objaddr, align 4
  %24 = call i32 @D11REGOFFS(i32 %23)
  %25 = load i32, i32* @OBJADDR_AUTO_INC, align 4
  %26 = load i32, i32* @OBJADDR_UCM_SEL, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @bcma_write32(%struct.bcma_device* %22, i32 %24, i32 %27)
  %29 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %30 = load i32, i32* @objaddr, align 4
  %31 = call i32 @D11REGOFFS(i32 %30)
  %32 = call i32 @bcma_read32(%struct.bcma_device* %29, i32 %31)
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %47, %3
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %33
  %38 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %39 = load i32, i32* @objdata, align 4
  %40 = call i32 @D11REGOFFS(i32 %39)
  %41 = load i32*, i32** %5, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = call i32 @bcma_write32(%struct.bcma_device* %38, i32 %40, i32 %45)
  br label %47

47:                                               ; preds = %37
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %33

50:                                               ; preds = %33
  ret void
}

declare dso_local i32 @brcms_dbg_info(%struct.bcma_device*, i8*, i32) #1

declare dso_local i32 @bcma_write32(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
