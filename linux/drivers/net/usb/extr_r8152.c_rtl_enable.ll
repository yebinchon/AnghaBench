; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }

@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_CR = common dso_local global i32 0, align 4
@CR_RE = common dso_local global i32 0, align 4
@CR_TE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r8152*)* @rtl_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl_enable(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %4 = load %struct.r8152*, %struct.r8152** %2, align 8
  %5 = call i32 @r8152b_reset_packet_filter(%struct.r8152* %4)
  %6 = load %struct.r8152*, %struct.r8152** %2, align 8
  %7 = load i32, i32* @MCU_TYPE_PLA, align 4
  %8 = load i32, i32* @PLA_CR, align 4
  %9 = call i32 @ocp_read_byte(%struct.r8152* %6, i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @CR_RE, align 4
  %11 = load i32, i32* @CR_TE, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.r8152*, %struct.r8152** %2, align 8
  %16 = load i32, i32* @MCU_TYPE_PLA, align 4
  %17 = load i32, i32* @PLA_CR, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @ocp_write_byte(%struct.r8152* %15, i32 %16, i32 %17, i32 %18)
  %20 = load %struct.r8152*, %struct.r8152** %2, align 8
  %21 = getelementptr inbounds %struct.r8152, %struct.r8152* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %26 [
    i32 129, label %23
    i32 128, label %23
  ]

23:                                               ; preds = %1, %1
  %24 = load %struct.r8152*, %struct.r8152** %2, align 8
  %25 = call i32 @r8153b_rx_agg_chg_indicate(%struct.r8152* %24)
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %23
  %28 = load %struct.r8152*, %struct.r8152** %2, align 8
  %29 = call i32 @rxdy_gated_en(%struct.r8152* %28, i32 0)
  ret i32 0
}

declare dso_local i32 @r8152b_reset_packet_filter(%struct.r8152*) #1

declare dso_local i32 @ocp_read_byte(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_byte(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @r8153b_rx_agg_chg_indicate(%struct.r8152*) #1

declare dso_local i32 @rxdy_gated_en(%struct.r8152*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
