; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_dump_cp_sw_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_dump_cp_sw_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_napi = type { i32, %struct.TYPE_3__*, %struct.bnxt_cp_ring_info }
%struct.TYPE_3__ = type { i32 }
%struct.bnxt_cp_ring_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"[%d]: cp{fw_ring: %d raw_cons: %x}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_napi*)* @bnxt_dump_cp_sw_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_dump_cp_sw_state(%struct.bnxt_napi* %0) #0 {
  %2 = alloca %struct.bnxt_napi*, align 8
  %3 = alloca %struct.bnxt_cp_ring_info*, align 8
  %4 = alloca i32, align 4
  store %struct.bnxt_napi* %0, %struct.bnxt_napi** %2, align 8
  %5 = load %struct.bnxt_napi*, %struct.bnxt_napi** %2, align 8
  %6 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %5, i32 0, i32 2
  store %struct.bnxt_cp_ring_info* %6, %struct.bnxt_cp_ring_info** %3, align 8
  %7 = load %struct.bnxt_napi*, %struct.bnxt_napi** %2, align 8
  %8 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.bnxt_napi*, %struct.bnxt_napi** %2, align 8
  %11 = getelementptr inbounds %struct.bnxt_napi, %struct.bnxt_napi* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %3, align 8
  %17 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bnxt_cp_ring_info*, %struct.bnxt_cp_ring_info** %3, align 8
  %21 = getelementptr inbounds %struct.bnxt_cp_ring_info, %struct.bnxt_cp_ring_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @netdev_info(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %19, i32 %22)
  ret void
}

declare dso_local i32 @netdev_info(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
