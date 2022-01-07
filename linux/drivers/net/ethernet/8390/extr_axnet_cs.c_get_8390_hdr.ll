; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_get_8390_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_get_8390_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e8390_pkt_hdr = type { i32 }

@EN0_RSARLO = common dso_local global i64 0, align 8
@EN0_RSARHI = common dso_local global i64 0, align 8
@E8390_RREAD = common dso_local global i32 0, align 4
@E8390_START = common dso_local global i32 0, align 4
@AXNET_CMD = common dso_local global i64 0, align 8
@AXNET_DATAPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.e8390_pkt_hdr*, i32)* @get_8390_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_8390_hdr(%struct.net_device* %0, %struct.e8390_pkt_hdr* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.e8390_pkt_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.e8390_pkt_hdr* %1, %struct.e8390_pkt_hdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = zext i32 %11 to i64
  %13 = load i64, i64* @EN0_RSARLO, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @outb_p(i32 0, i64 %14)
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = load i64, i64* @EN0_RSARHI, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @outb_p(i32 %16, i64 %20)
  %22 = load i32, i32* @E8390_RREAD, align 4
  %23 = load i32, i32* @E8390_START, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* @AXNET_CMD, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb_p(i32 %24, i64 %28)
  %30 = load i32, i32* %7, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* @AXNET_DATAPORT, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %35 = call i32 @insw(i64 %33, %struct.e8390_pkt_hdr* %34, i32 2)
  %36 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %37 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  %40 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %41 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  ret void
}

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @insw(i64, %struct.e8390_pkt_hdr*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
