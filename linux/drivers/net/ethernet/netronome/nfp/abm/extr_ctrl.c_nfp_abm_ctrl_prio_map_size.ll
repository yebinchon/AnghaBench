; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_ctrl.c_nfp_abm_ctrl_prio_map_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_ctrl.c_nfp_abm_ctrl_prio_map_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm = type { i32, i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_abm*)* @nfp_abm_ctrl_prio_map_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_ctrl_prio_map_size(%struct.nfp_abm* %0) #0 {
  %2 = alloca %struct.nfp_abm*, align 8
  %3 = alloca i32, align 4
  store %struct.nfp_abm* %0, %struct.nfp_abm** %2, align 8
  %4 = load %struct.nfp_abm*, %struct.nfp_abm** %2, align 8
  %5 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @order_base_2(i32 %6)
  %8 = call i32 @roundup_pow_of_two(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.nfp_abm*, %struct.nfp_abm** %2, align 8
  %11 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul i32 %9, %12
  %14 = load i32, i32* @BITS_PER_BYTE, align 4
  %15 = call i32 @DIV_ROUND_UP(i32 %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @round_up(i32 %16, i32 4)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @order_base_2(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
