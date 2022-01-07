; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_btcoex.c_brcmf_btcoex_restore_part1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_btcoex.c_brcmf_btcoex_restore_part1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_btcoex_info = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.brcmf_if* }
%struct.brcmf_if = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"restored btc_params regs {66,41,68} 0x%x 0x%x 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_btcoex_info*)* @brcmf_btcoex_restore_part1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_btcoex_restore_part1(%struct.brcmf_btcoex_info* %0) #0 {
  %2 = alloca %struct.brcmf_btcoex_info*, align 8
  %3 = alloca %struct.brcmf_if*, align 8
  store %struct.brcmf_btcoex_info* %0, %struct.brcmf_btcoex_info** %2, align 8
  %4 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %5 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %42

8:                                                ; preds = %1
  %9 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %10 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %9, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %12 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %11, i32 0, i32 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.brcmf_if*, %struct.brcmf_if** %14, align 8
  store %struct.brcmf_if* %15, %struct.brcmf_if** %3, align 8
  %16 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %17 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %18 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @brcmf_btcoex_params_write(%struct.brcmf_if* %16, i32 66, i32 %19)
  %21 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %22 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %23 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @brcmf_btcoex_params_write(%struct.brcmf_if* %21, i32 41, i32 %24)
  %26 = load %struct.brcmf_if*, %struct.brcmf_if** %3, align 8
  %27 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %28 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @brcmf_btcoex_params_write(%struct.brcmf_if* %26, i32 68, i32 %29)
  %31 = load i32, i32* @INFO, align 4
  %32 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %33 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %36 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.brcmf_btcoex_info*, %struct.brcmf_btcoex_info** %2, align 8
  %39 = getelementptr inbounds %struct.brcmf_btcoex_info, %struct.brcmf_btcoex_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @brcmf_dbg(i32 %31, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @brcmf_btcoex_params_write(%struct.brcmf_if*, i32, i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
