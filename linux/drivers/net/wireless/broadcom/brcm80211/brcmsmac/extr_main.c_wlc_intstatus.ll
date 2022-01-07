; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_wlc_intstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_wlc_intstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.brcms_c_info = type { i32, i32, %struct.brcms_hardware* }
%struct.brcms_hardware = type { %struct.bcma_device* }
%struct.bcma_device = type { i32 }

@macintmask = common dso_local global i32 0, align 4
@MI_DMAINT = common dso_local global i32 0, align 4
@intctrlregs = common dso_local global %struct.TYPE_2__* null, align 8
@RX_FIFO = common dso_local global i64 0, align 8
@DEF_RXINTMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_c_info*, i32)* @wlc_intstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_intstatus(%struct.brcms_c_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_c_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.brcms_hardware*, align 8
  %7 = alloca %struct.bcma_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %11 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %10, i32 0, i32 2
  %12 = load %struct.brcms_hardware*, %struct.brcms_hardware** %11, align 8
  store %struct.brcms_hardware* %12, %struct.brcms_hardware** %6, align 8
  %13 = load %struct.brcms_hardware*, %struct.brcms_hardware** %6, align 8
  %14 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %13, i32 0, i32 0
  %15 = load %struct.bcma_device*, %struct.bcma_device** %14, align 8
  store %struct.bcma_device* %15, %struct.bcma_device** %7, align 8
  %16 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @D11REGOFFS(i32 %17)
  %19 = call i32 @bcma_read32(%struct.bcma_device* %16, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %24 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %28 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = phi i32 [ %25, %22 ], [ %29, %26 ]
  store i32 %31, i32* %9, align 4
  %32 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %33 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %32, i32 0, i32 0
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @trace_brcms_macintstatus(i32* %33, i32 %34, i32 %35, i32 %36)
  %38 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %39 = call i64 @brcms_deviceremoved(%struct.brcms_c_info* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %85

42:                                               ; preds = %30
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %85

46:                                               ; preds = %42
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %85

53:                                               ; preds = %46
  %54 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %55 = load i32, i32* @macintmask, align 4
  %56 = call i32 @D11REGOFFS(i32 %55)
  %57 = call i32 @bcma_write32(%struct.bcma_device* %54, i32 %56, i32 0)
  %58 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %59 = load i32, i32* @macintmask, align 4
  %60 = call i32 @D11REGOFFS(i32 %59)
  %61 = call i32 @bcma_read32(%struct.bcma_device* %58, i32 %60)
  %62 = load %struct.brcms_c_info*, %struct.brcms_c_info** %4, align 8
  %63 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @D11REGOFFS(i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = call i32 @bcma_write32(%struct.bcma_device* %64, i32 %66, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @MI_DMAINT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %53
  %74 = load %struct.bcma_device*, %struct.bcma_device** %7, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** @intctrlregs, align 8
  %76 = load i64, i64* @RX_FIFO, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @D11REGOFFS(i32 %79)
  %81 = load i32, i32* @DEF_RXINTMASK, align 4
  %82 = call i32 @bcma_write32(%struct.bcma_device* %74, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %73, %53
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %52, %45, %41
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @bcma_read32(%struct.bcma_device*, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @trace_brcms_macintstatus(i32*, i32, i32, i32) #1

declare dso_local i64 @brcms_deviceremoved(%struct.brcms_c_info*) #1

declare dso_local i32 @bcma_write32(%struct.bcma_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
