; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_txflowblock_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_core.c_brcmf_txflowblock_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32, i32, i32, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"enter: bsscfgidx=%d stop=0x%X reason=%d state=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_txflowblock_if(%struct.brcmf_if* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcmf_if*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %9 = icmp ne %struct.brcmf_if* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %12 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10, %3
  br label %71

16:                                               ; preds = %10
  %17 = load i32, i32* @TRACE, align 4
  %18 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %19 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %22 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @brcmf_dbg(i32 %17, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %28 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %27, i32 0, i32 1
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %16
  %34 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %35 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %40 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @netif_stop_queue(i32 %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %46 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %66

49:                                               ; preds = %16
  %50 = load i32, i32* %5, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %53 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %57 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %49
  %61 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %62 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @netif_wake_queue(i32 %63)
  br label %65

65:                                               ; preds = %60, %49
  br label %66

66:                                               ; preds = %65, %43
  %67 = load %struct.brcmf_if*, %struct.brcmf_if** %4, align 8
  %68 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %67, i32 0, i32 1
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  br label %71

71:                                               ; preds = %66, %15
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
