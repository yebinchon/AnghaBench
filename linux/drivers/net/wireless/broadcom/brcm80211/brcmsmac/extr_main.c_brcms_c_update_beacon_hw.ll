; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_update_beacon_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_update_beacon_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, i32, %struct.brcms_hardware* }
%struct.brcms_hardware = type { %struct.bcma_device* }
%struct.bcma_device = type { i32 }
%struct.sk_buff = type { i32 }

@MCMD_BCN0VLD = common dso_local global i32 0, align 4
@MCMD_BCN1VLD = common dso_local global i32 0, align 4
@maccommand = common dso_local global i32 0, align 4
@macintstatus = common dso_local global i32 0, align 4
@MI_BCNTPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*, %struct.sk_buff*, i32, i32)* @brcms_c_update_beacon_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_update_beacon_hw(%struct.brcms_c_info* %0, %struct.sk_buff* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.brcms_c_info*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.brcms_hardware*, align 8
  %10 = alloca %struct.bcma_device*, align 8
  %11 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %13 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %12, i32 0, i32 2
  %14 = load %struct.brcms_hardware*, %struct.brcms_hardware** %13, align 8
  store %struct.brcms_hardware* %14, %struct.brcms_hardware** %9, align 8
  %15 = load %struct.brcms_hardware*, %struct.brcms_hardware** %9, align 8
  %16 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %15, i32 0, i32 0
  %17 = load %struct.bcma_device*, %struct.bcma_device** %16, align 8
  store %struct.bcma_device* %17, %struct.bcma_device** %10, align 8
  %18 = load i32, i32* @MCMD_BCN0VLD, align 4
  %19 = load i32, i32* @MCMD_BCN1VLD, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %22 = load i32, i32* @maccommand, align 4
  %23 = call i32 @D11REGOFFS(i32 %22)
  %24 = call i32 @bcma_read32(%struct.bcma_device* %21, i32 %23)
  %25 = load i32, i32* %11, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %4
  %30 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %31 = load i32, i32* @macintstatus, align 4
  %32 = call i32 @D11REGOFFS(i32 %31)
  %33 = load i32, i32* @MI_BCNTPL, align 4
  %34 = call i32 @bcma_write32(%struct.bcma_device* %30, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %4
  %36 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %37 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %42 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @brcms_c_beacon_write(%struct.brcms_c_info* %43, %struct.sk_buff* %44, i32 %45, i32 %46, i32 1, i32 1)
  %48 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %49 = load i32, i32* @maccommand, align 4
  %50 = call i32 @D11REGOFFS(i32 %49)
  %51 = load i32, i32* @MCMD_BCN0VLD, align 4
  %52 = call i32 @bcma_set32(%struct.bcma_device* %48, i32 %50, i32 %51)
  br label %107

53:                                               ; preds = %35
  %54 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %55 = load i32, i32* @maccommand, align 4
  %56 = call i32 @D11REGOFFS(i32 %55)
  %57 = call i32 @bcma_read32(%struct.bcma_device* %54, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load i32, i32* @MI_BCNTPL, align 4
  %64 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %65 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %107

68:                                               ; preds = %53
  %69 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %70 = load i32, i32* @maccommand, align 4
  %71 = call i32 @D11REGOFFS(i32 %70)
  %72 = call i32 @bcma_read32(%struct.bcma_device* %69, i32 %71)
  %73 = load i32, i32* @MCMD_BCN0VLD, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %68
  %77 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @brcms_c_beacon_write(%struct.brcms_c_info* %77, %struct.sk_buff* %78, i32 %79, i32 %80, i32 1, i32 0)
  %82 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %83 = load i32, i32* @maccommand, align 4
  %84 = call i32 @D11REGOFFS(i32 %83)
  %85 = load i32, i32* @MCMD_BCN0VLD, align 4
  %86 = call i32 @bcma_set32(%struct.bcma_device* %82, i32 %84, i32 %85)
  br label %107

87:                                               ; preds = %68
  %88 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %89 = load i32, i32* @maccommand, align 4
  %90 = call i32 @D11REGOFFS(i32 %89)
  %91 = call i32 @bcma_read32(%struct.bcma_device* %88, i32 %90)
  %92 = load i32, i32* @MCMD_BCN1VLD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %87
  %96 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @brcms_c_beacon_write(%struct.brcms_c_info* %96, %struct.sk_buff* %97, i32 %98, i32 %99, i32 0, i32 1)
  %101 = load %struct.bcma_device*, %struct.bcma_device** %10, align 8
  %102 = load i32, i32* @maccommand, align 4
  %103 = call i32 @D11REGOFFS(i32 %102)
  %104 = load i32, i32* @MCMD_BCN1VLD, align 4
  %105 = call i32 @bcma_set32(%struct.bcma_device* %101, i32 %103, i32 %104)
  br label %107

106:                                              ; preds = %87
  br label %107

107:                                              ; preds = %106, %95, %76, %62, %40
  ret void
}

declare dso_local i32 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @bcma_write32(%struct.bcma_device*, i32, i32) #1

declare dso_local i32 @brcms_c_beacon_write(%struct.brcms_c_info*, %struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i32 @bcma_set32(%struct.bcma_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
