; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_nic.c_octnet_send_nic_data_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_nic.c_octnet_send_nic_data_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.octnic_data_pkt = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octnet_send_nic_data_pkt(%struct.octeon_device* %0, %struct.octnic_data_pkt* %1, i32 %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca %struct.octnic_data_pkt*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store %struct.octnic_data_pkt* %1, %struct.octnic_data_pkt** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %13 = load %struct.octnic_data_pkt*, %struct.octnic_data_pkt** %5, align 8
  %14 = getelementptr inbounds %struct.octnic_data_pkt, %struct.octnic_data_pkt* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.octnic_data_pkt*, %struct.octnic_data_pkt** %5, align 8
  %18 = getelementptr inbounds %struct.octnic_data_pkt, %struct.octnic_data_pkt* %17, i32 0, i32 3
  %19 = load %struct.octnic_data_pkt*, %struct.octnic_data_pkt** %5, align 8
  %20 = getelementptr inbounds %struct.octnic_data_pkt, %struct.octnic_data_pkt* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.octnic_data_pkt*, %struct.octnic_data_pkt** %5, align 8
  %23 = getelementptr inbounds %struct.octnic_data_pkt, %struct.octnic_data_pkt* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.octnic_data_pkt*, %struct.octnic_data_pkt** %5, align 8
  %26 = getelementptr inbounds %struct.octnic_data_pkt, %struct.octnic_data_pkt* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @octeon_send_command(%struct.octeon_device* %12, i32 %15, i32 %16, i32* %18, i32 %21, i32 %24, i32 %27)
  ret i32 %28
}

declare dso_local i32 @octeon_send_command(%struct.octeon_device*, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
