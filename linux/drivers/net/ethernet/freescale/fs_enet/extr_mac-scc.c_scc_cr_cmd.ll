; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_mac-scc.c_scc_cr_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fs_enet/extr_mac-scc.c_scc_cr_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_enet_private = type { %struct.fs_platform_info* }
%struct.fs_platform_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_enet_private*, i32)* @scc_cr_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scc_cr_cmd(%struct.fs_enet_private* %0, i32 %1) #0 {
  %3 = alloca %struct.fs_enet_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fs_platform_info*, align 8
  store %struct.fs_enet_private* %0, %struct.fs_enet_private** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.fs_enet_private*, %struct.fs_enet_private** %3, align 8
  %7 = getelementptr inbounds %struct.fs_enet_private, %struct.fs_enet_private* %6, i32 0, i32 0
  %8 = load %struct.fs_platform_info*, %struct.fs_platform_info** %7, align 8
  store %struct.fs_platform_info* %8, %struct.fs_platform_info** %5, align 8
  %9 = load %struct.fs_platform_info*, %struct.fs_platform_info** %5, align 8
  %10 = getelementptr inbounds %struct.fs_platform_info, %struct.fs_platform_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @cpm_command(i32 %11, i32 %12)
  ret i32 %13
}

declare dso_local i32 @cpm_command(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
