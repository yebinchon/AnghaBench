; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_fwd_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_fwd_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32 }

@BR_STATE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32)* @ofdpa_port_fwd_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_fwd_disable(%struct.ofdpa_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ofdpa_port*, align 8
  %5 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %7 = call i64 @ofdpa_port_is_bridged(%struct.ofdpa_port* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %15

10:                                               ; preds = %2
  %11 = load %struct.ofdpa_port*, %struct.ofdpa_port** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @BR_STATE_DISABLED, align 4
  %14 = call i32 @ofdpa_port_stp_update(%struct.ofdpa_port* %11, i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %10, %9
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i64 @ofdpa_port_is_bridged(%struct.ofdpa_port*) #1

declare dso_local i32 @ofdpa_port_stp_update(%struct.ofdpa_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
