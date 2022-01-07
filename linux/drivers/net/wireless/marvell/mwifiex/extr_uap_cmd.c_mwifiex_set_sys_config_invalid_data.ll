; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_set_sys_config_invalid_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_cmd.c_mwifiex_set_sys_config_invalid_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_uap_bss_param = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_set_sys_config_invalid_data(%struct.mwifiex_uap_bss_param* %0) #0 {
  %2 = alloca %struct.mwifiex_uap_bss_param*, align 8
  store %struct.mwifiex_uap_bss_param* %0, %struct.mwifiex_uap_bss_param** %2, align 8
  %3 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %2, align 8
  %4 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %3, i32 0, i32 0
  store i32 127, i32* %4, align 4
  %5 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %2, align 8
  %6 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %5, i32 0, i32 1
  store i32 127, i32* %6, align 4
  %7 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %2, align 8
  %8 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %7, i32 0, i32 2
  store i32 127, i32* %8, align 4
  %9 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %2, align 8
  %10 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %9, i32 0, i32 3
  store i32 32767, i32* %10, align 4
  %11 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %2, align 8
  %12 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %11, i32 0, i32 4
  store i32 127, i32* %12, align 4
  %13 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %2, align 8
  %14 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %13, i32 0, i32 5
  store i32 32767, i32* %14, align 4
  %15 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %2, align 8
  %16 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %15, i32 0, i32 6
  store i32 32767, i32* %16, align 4
  %17 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %2, align 8
  %18 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %17, i32 0, i32 7
  store i32 127, i32* %18, align 4
  %19 = load %struct.mwifiex_uap_bss_param*, %struct.mwifiex_uap_bss_param** %2, align 8
  %20 = getelementptr inbounds %struct.mwifiex_uap_bss_param, %struct.mwifiex_uap_bss_param* %19, i32 0, i32 8
  store i32 255, i32* %20, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
