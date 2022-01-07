; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_aiutils.c_ai_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_aiutils.c_ai_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si_pub = type { i32 }
%struct.bcma_bus = type { i32 }
%struct.si_info = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.si_pub* @ai_attach(%struct.bcma_bus* %0) #0 {
  %2 = alloca %struct.si_pub*, align 8
  %3 = alloca %struct.bcma_bus*, align 8
  %4 = alloca %struct.si_info*, align 8
  store %struct.bcma_bus* %0, %struct.bcma_bus** %3, align 8
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.si_info* @kzalloc(i32 4, i32 %5)
  store %struct.si_info* %6, %struct.si_info** %4, align 8
  %7 = load %struct.si_info*, %struct.si_info** %4, align 8
  %8 = icmp eq %struct.si_info* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store %struct.si_pub* null, %struct.si_pub** %2, align 8
  br label %21

10:                                               ; preds = %1
  %11 = load %struct.si_info*, %struct.si_info** %4, align 8
  %12 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %13 = call i32* @ai_doattach(%struct.si_info* %11, %struct.bcma_bus* %12)
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.si_info*, %struct.si_info** %4, align 8
  %17 = call i32 @kfree(%struct.si_info* %16)
  store %struct.si_pub* null, %struct.si_pub** %2, align 8
  br label %21

18:                                               ; preds = %10
  %19 = load %struct.si_info*, %struct.si_info** %4, align 8
  %20 = bitcast %struct.si_info* %19 to %struct.si_pub*
  store %struct.si_pub* %20, %struct.si_pub** %2, align 8
  br label %21

21:                                               ; preds = %18, %15, %9
  %22 = load %struct.si_pub*, %struct.si_pub** %2, align 8
  ret %struct.si_pub* %22
}

declare dso_local %struct.si_info* @kzalloc(i32, i32) #1

declare dso_local i32* @ai_doattach(%struct.si_info*, %struct.bcma_bus*) #1

declare dso_local i32 @kfree(%struct.si_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
