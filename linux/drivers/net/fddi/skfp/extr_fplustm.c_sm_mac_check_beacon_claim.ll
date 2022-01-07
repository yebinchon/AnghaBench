; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_fplustm.c_sm_mac_check_beacon_claim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_fplustm.c_sm_mac_check_beacon_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { i32 }

@FM_IMSK2U = common dso_local global i32 0, align 4
@mac_imsk2u = common dso_local global i32 0, align 4
@mac_beacon_imsk2u = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sm_mac_check_beacon_claim(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %3 = load i32, i32* @FM_IMSK2U, align 4
  %4 = call i32 @FM_A(i32 %3)
  %5 = load i32, i32* @mac_imsk2u, align 4
  %6 = load i32, i32* @mac_beacon_imsk2u, align 4
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = call i32 @outpw(i32 %4, i32 %8)
  %10 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %11 = call i32 @formac_rcv_restart(%struct.s_smc* %10)
  %12 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %13 = call i32 @process_receive(%struct.s_smc* %12)
  ret void
}

declare dso_local i32 @outpw(i32, i32) #1

declare dso_local i32 @FM_A(i32) #1

declare dso_local i32 @formac_rcv_restart(%struct.s_smc*) #1

declare dso_local i32 @process_receive(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
