; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_enable_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_enable_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.TYPE_2__*, %struct.brcms_hardware* }
%struct.TYPE_2__ = type { i32 }
%struct.brcms_hardware = type { i64, i32, %struct.bcma_device* }
%struct.bcma_device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"wl%d: bandunit %d\0A\00", align 1
@maccontrol = common dso_local global i32 0, align 4
@MCTL_PSM_JMP_0 = common dso_local global i32 0, align 4
@MCTL_EN_MAC = common dso_local global i32 0, align 4
@MCTL_PSM_RUN = common dso_local global i32 0, align 4
@macintstatus = common dso_local global i32 0, align 4
@MI_MACSSPNDD = common dso_local global i32 0, align 4
@BRCMS_WAKE_OVERRIDE_MACSUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcms_c_enable_mac(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  %3 = alloca %struct.brcms_hardware*, align 8
  %4 = alloca %struct.bcma_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %7 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %8 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %7, i32 0, i32 1
  %9 = load %struct.brcms_hardware*, %struct.brcms_hardware** %8, align 8
  store %struct.brcms_hardware* %9, %struct.brcms_hardware** %3, align 8
  %10 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %11 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %10, i32 0, i32 2
  %12 = load %struct.bcma_device*, %struct.bcma_device** %11, align 8
  store %struct.bcma_device* %12, %struct.bcma_device** %4, align 8
  %13 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %14 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %15 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %18 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @brcms_dbg_mac80211(%struct.bcma_device* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %21)
  %23 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %24 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %24, align 8
  %27 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %28 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %94

32:                                               ; preds = %1
  %33 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %34 = load i32, i32* @maccontrol, align 4
  %35 = call i32 @D11REGOFFS(i32 %34)
  %36 = call i32 @bcma_read32(%struct.bcma_device* %33, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @MCTL_PSM_JMP_0, align 4
  %39 = and i32 %37, %38
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @MCTL_EN_MAC, align 4
  %43 = and i32 %41, %42
  %44 = call i32 @WARN_ON(i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @MCTL_PSM_RUN, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @WARN_ON(i32 %50)
  %52 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %53 = load i32, i32* @MCTL_EN_MAC, align 4
  %54 = load i32, i32* @MCTL_EN_MAC, align 4
  %55 = call i32 @brcms_b_mctrl(%struct.brcms_hardware* %52, i32 %53, i32 %54)
  %56 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %57 = load i32, i32* @macintstatus, align 4
  %58 = call i32 @D11REGOFFS(i32 %57)
  %59 = load i32, i32* @MI_MACSSPNDD, align 4
  %60 = call i32 @bcma_write32(%struct.bcma_device* %56, i32 %58, i32 %59)
  %61 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %62 = load i32, i32* @maccontrol, align 4
  %63 = call i32 @D11REGOFFS(i32 %62)
  %64 = call i32 @bcma_read32(%struct.bcma_device* %61, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @MCTL_PSM_JMP_0, align 4
  %67 = and i32 %65, %66
  %68 = call i32 @WARN_ON(i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @MCTL_EN_MAC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @WARN_ON(i32 %74)
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @MCTL_PSM_RUN, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @WARN_ON(i32 %81)
  %83 = load %struct.bcma_device*, %struct.bcma_device** %4, align 8
  %84 = load i32, i32* @macintstatus, align 4
  %85 = call i32 @D11REGOFFS(i32 %84)
  %86 = call i32 @bcma_read32(%struct.bcma_device* %83, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @MI_MACSSPNDD, align 4
  %89 = and i32 %87, %88
  %90 = call i32 @WARN_ON(i32 %89)
  %91 = load %struct.brcms_hardware*, %struct.brcms_hardware** %3, align 8
  %92 = load i32, i32* @BRCMS_WAKE_OVERRIDE_MACSUSPEND, align 4
  %93 = call i32 @brcms_c_ucode_wake_override_clear(%struct.brcms_hardware* %91, i32 %92)
  br label %94

94:                                               ; preds = %32, %31
  ret void
}

declare dso_local i32 @brcms_dbg_mac80211(%struct.bcma_device*, i8*, i32, i32) #1

declare dso_local i32 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @brcms_b_mctrl(%struct.brcms_hardware*, i32, i32) #1

declare dso_local i32 @bcma_write32(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @brcms_c_ucode_wake_override_clear(%struct.brcms_hardware*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
