; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_mac8390.c_slow_sane_get_8390_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_mac8390.c_slow_sane_get_8390_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.e8390_pkt_hdr = type { i32 }

@WD_START_PG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.e8390_pkt_hdr*, i32)* @slow_sane_get_8390_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slow_sane_get_8390_hdr(%struct.net_device* %0, %struct.e8390_pkt_hdr* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.e8390_pkt_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.e8390_pkt_hdr* %1, %struct.e8390_pkt_hdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @WD_START_PG, align 4
  %10 = sub nsw i32 %8, %9
  %11 = shl i32 %10, 8
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %7, align 8
  %13 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %7, align 8
  %18 = add i64 %16, %17
  %19 = call i32 @word_memcpy_fromcard(%struct.e8390_pkt_hdr* %13, i64 %18, i32 4)
  %20 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %21 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 255
  %24 = shl i32 %23, 8
  %25 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %26 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 8
  %29 = or i32 %24, %28
  %30 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %31 = getelementptr inbounds %struct.e8390_pkt_hdr, %struct.e8390_pkt_hdr* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  ret void
}

declare dso_local i32 @word_memcpy_fromcard(%struct.e8390_pkt_hdr*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
