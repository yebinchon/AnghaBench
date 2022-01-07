; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_vf.c_enetc_msg_vsi_write_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_vf.c_enetc_msg_vsi_write_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_hw = type { i32 }
%struct.enetc_msg_swbd = type { i32, i32 }

@ENETC_VSIMSGSNDAR1 = common dso_local global i32 0, align 4
@ENETC_VSIMSGSNDAR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_hw*, %struct.enetc_msg_swbd*)* @enetc_msg_vsi_write_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_msg_vsi_write_msg(%struct.enetc_hw* %0, %struct.enetc_msg_swbd* %1) #0 {
  %3 = alloca %struct.enetc_hw*, align 8
  %4 = alloca %struct.enetc_msg_swbd*, align 8
  %5 = alloca i32, align 4
  store %struct.enetc_hw* %0, %struct.enetc_hw** %3, align 8
  store %struct.enetc_msg_swbd* %1, %struct.enetc_msg_swbd** %4, align 8
  %6 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %4, align 8
  %7 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @enetc_vsi_set_msize(i32 %8)
  %10 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %4, align 8
  %11 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @lower_32_bits(i32 %12)
  %14 = or i32 %9, %13
  store i32 %14, i32* %5, align 4
  %15 = load %struct.enetc_hw*, %struct.enetc_hw** %3, align 8
  %16 = load i32, i32* @ENETC_VSIMSGSNDAR1, align 4
  %17 = load %struct.enetc_msg_swbd*, %struct.enetc_msg_swbd** %4, align 8
  %18 = getelementptr inbounds %struct.enetc_msg_swbd, %struct.enetc_msg_swbd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @upper_32_bits(i32 %19)
  %21 = call i32 @enetc_wr(%struct.enetc_hw* %15, i32 %16, i32 %20)
  %22 = load %struct.enetc_hw*, %struct.enetc_hw** %3, align 8
  %23 = load i32, i32* @ENETC_VSIMSGSNDAR0, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @enetc_wr(%struct.enetc_hw* %22, i32 %23, i32 %24)
  ret void
}

declare dso_local i32 @enetc_vsi_set_msize(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @enetc_wr(%struct.enetc_hw*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
