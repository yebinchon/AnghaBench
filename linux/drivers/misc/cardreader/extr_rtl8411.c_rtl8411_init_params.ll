; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtl8411.c_rtl8411_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cardreader/extr_rtl8411.c_rtl8411_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_pcr = type { i32* }

@rtl8411_pcr_ops = common dso_local global i32 0, align 4
@rtl8411 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8411_init_params(%struct.rtsx_pcr* %0) #0 {
  %2 = alloca %struct.rtsx_pcr*, align 8
  store %struct.rtsx_pcr* %0, %struct.rtsx_pcr** %2, align 8
  %3 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %4 = call i32 @rtl8411_init_common_params(%struct.rtsx_pcr* %3)
  %5 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %6 = getelementptr inbounds %struct.rtsx_pcr, %struct.rtsx_pcr* %5, i32 0, i32 0
  store i32* @rtl8411_pcr_ops, i32** %6, align 8
  %7 = load %struct.rtsx_pcr*, %struct.rtsx_pcr** %2, align 8
  %8 = load i32, i32* @rtl8411, align 4
  %9 = call i32 @set_pull_ctrl_tables(%struct.rtsx_pcr* %7, i32 %8)
  ret void
}

declare dso_local i32 @rtl8411_init_common_params(%struct.rtsx_pcr*) #1

declare dso_local i32 @set_pull_ctrl_tables(%struct.rtsx_pcr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
