; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-fw.c_queue_iso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/firewire/extr_firedtv-fw.c_queue_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdtv_ir_context = type { i32, i32, i32 }
%struct.fw_iso_packet = type { i32, i32, i32, i64 }

@MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@IRQ_INTERVAL = common dso_local global i32 0, align 4
@ISO_HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdtv_ir_context*, i32)* @queue_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_iso(%struct.fdtv_ir_context* %0, i32 %1) #0 {
  %3 = alloca %struct.fdtv_ir_context*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fw_iso_packet, align 8
  store %struct.fdtv_ir_context* %0, %struct.fdtv_ir_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @MAX_PACKET_SIZE, align 4
  %7 = getelementptr inbounds %struct.fw_iso_packet, %struct.fw_iso_packet* %5, i32 0, i32 0
  store i32 %6, i32* %7, align 8
  %8 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %3, align 8
  %9 = getelementptr inbounds %struct.fdtv_ir_context, %struct.fdtv_ir_context* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @IRQ_INTERVAL, align 4
  %13 = sub nsw i32 %12, 1
  %14 = and i32 %11, %13
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = getelementptr inbounds %struct.fw_iso_packet, %struct.fw_iso_packet* %5, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.fw_iso_packet, %struct.fw_iso_packet* %5, i32 0, i32 3
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @ISO_HEADER_SIZE, align 4
  %21 = getelementptr inbounds %struct.fw_iso_packet, %struct.fw_iso_packet* %5, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %3, align 8
  %23 = getelementptr inbounds %struct.fdtv_ir_context, %struct.fdtv_ir_context* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fdtv_ir_context*, %struct.fdtv_ir_context** %3, align 8
  %26 = getelementptr inbounds %struct.fdtv_ir_context, %struct.fdtv_ir_context* %25, i32 0, i32 1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @MAX_PACKET_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = call i32 @fw_iso_context_queue(i32 %24, %struct.fw_iso_packet* %5, i32* %26, i32 %29)
  ret i32 %30
}

declare dso_local i32 @fw_iso_context_queue(i32, %struct.fw_iso_packet*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
