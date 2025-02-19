; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.brcmf_bus = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_free(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.brcmf_bus*, align 8
  %4 = alloca %struct.brcmf_pub*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.brcmf_bus* @dev_get_drvdata(%struct.device* %5)
  store %struct.brcmf_bus* %6, %struct.brcmf_bus** %3, align 8
  %7 = load %struct.brcmf_bus*, %struct.brcmf_bus** %3, align 8
  %8 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %7, i32 0, i32 0
  %9 = load %struct.brcmf_pub*, %struct.brcmf_pub** %8, align 8
  store %struct.brcmf_pub* %9, %struct.brcmf_pub** %4, align 8
  %10 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %11 = icmp ne %struct.brcmf_pub* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.brcmf_bus*, %struct.brcmf_bus** %3, align 8
  %15 = getelementptr inbounds %struct.brcmf_bus, %struct.brcmf_bus* %14, i32 0, i32 0
  store %struct.brcmf_pub* null, %struct.brcmf_pub** %15, align 8
  %16 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %17 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree(i32 %18)
  %20 = load %struct.brcmf_pub*, %struct.brcmf_pub** %4, align 8
  %21 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @wiphy_free(i32 %22)
  br label %24

24:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.brcmf_bus* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @wiphy_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
