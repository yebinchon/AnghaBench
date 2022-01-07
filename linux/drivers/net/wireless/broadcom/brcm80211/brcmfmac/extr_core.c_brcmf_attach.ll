; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_bus = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32, i64, i32, i32* }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BRCMF_BSSIDX_INVALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"brcmf_prot_attach failed\0A\00", align 1
@BRCMF_E_PSM_WATCHDOG = common dso_local global i32 0, align 4
@brcmf_psm_watchdog_notify = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"dongle is not responding: err=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_attach(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.brcmf_bus*, align 8
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.brcmf_bus* @dev_get_drvdata(%struct.device* %8)
  store %struct.brcmf_bus* %9, %struct.brcmf_bus** %4, align 8
  %10 = load %struct.brcmf_bus*, %struct.brcmf_bus** %4, align 8
  %11 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %10, i32 0, i32 0
  %12 = load %struct.brcmf_pub*, %struct.brcmf_pub** %11, align 8
  store %struct.brcmf_pub* %12, %struct.brcmf_pub** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load i32, i32* @TRACE, align 4
  %14 = call i32 @brcmf_dbg(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %30, %1
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %18 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @ARRAY_SIZE(i32* %19)
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load i32, i32* @BRCMF_BSSIDX_INVALID, align 4
  %24 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %25 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 %23, i32* %29, align 4
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %15

33:                                               ; preds = %15
  %34 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %35 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %34, i32 0, i32 2
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %38 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %40 = call i32 @brcmf_proto_attach(%struct.brcmf_pub* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %45 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %65

46:                                               ; preds = %33
  %47 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %48 = load i32, i32* @BRCMF_E_PSM_WATCHDOG, align 4
  %49 = load i32, i32* @brcmf_psm_watchdog_notify, align 4
  %50 = call i32 @brcmf_fweh_register(%struct.brcmf_pub* %47, i32 %48, i32 %49)
  %51 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %52 = call i32 @brcmf_fweh_attach(%struct.brcmf_pub* %51)
  %53 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %54 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %55 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @brcmf_bus_started(%struct.brcmf_pub* %53, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %65

64:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %69

65:                                               ; preds = %60, %43
  %66 = load %struct.device*, %struct.device** %3, align 8
  %67 = call i32 @brcmf_detach(%struct.device* %66)
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %64
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @brcmf_proto_attach(%struct.brcmf_pub*) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #1

declare dso_local i32 @brcmf_fweh_register(%struct.brcmf_pub*, i32, i32) #1

declare dso_local i32 @brcmf_fweh_attach(%struct.brcmf_pub*) #1

declare dso_local i32 @brcmf_bus_started(%struct.brcmf_pub*, i32) #1

declare dso_local i32 @brcmf_detach(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
