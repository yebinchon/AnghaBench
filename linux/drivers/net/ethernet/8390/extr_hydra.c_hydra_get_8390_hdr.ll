; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_hydra.c_hydra_get_8390_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_hydra.c_hydra_get_8390_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e8390_pkt_hdr = type { i32 }

@HYDRA_NIC_BASE = common dso_local global i32 0, align 4
@NESM_START_PG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.e8390_pkt_hdr*, i32)* @hydra_get_8390_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hydra_get_8390_hdr(%struct.net_device* %0, %struct.e8390_pkt_hdr* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.e8390_pkt_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16*, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.e8390_pkt_hdr* %1, %struct.e8390_pkt_hdr** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @HYDRA_NIC_BASE, align 4
  %15 = sub nsw i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @NESM_START_PG, align 4
  %18 = sub nsw i32 %16, %17
  %19 = shl i32 %18, 8
  %20 = add nsw i32 %15, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %9, align 8
  %22 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %23 = bitcast %struct.e8390_pkt_hdr* %22 to i16*
  store i16* %23, i16** %8, align 8
  %24 = load i64, i64* %9, align 8
  %25 = call i8* @z_readw(i64 %24)
  %26 = ptrtoint i8* %25 to i16
  %27 = load i16*, i16** %8, align 8
  %28 = getelementptr inbounds i16, i16* %27, i32 1
  store i16* %28, i16** %8, align 8
  store i16 %26, i16* %27, align 2
  %29 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %30 = bitcast %struct.e8390_pkt_hdr* %29 to i16*
  %31 = load i16, i16* %30, align 2
  %32 = call signext i16 @WORDSWAP(i16 signext %31)
  %33 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %34 = bitcast %struct.e8390_pkt_hdr* %33 to i16*
  store i16 %32, i16* %34, align 2
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %35, 2
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i8* @z_readw(i64 %37)
  %39 = ptrtoint i8* %38 to i16
  %40 = load i16*, i16** %8, align 8
  %41 = getelementptr inbounds i16, i16* %40, i32 1
  store i16* %41, i16** %8, align 8
  store i16 %39, i16* %40, align 2
  %42 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %43 = bitcast %struct.e8390_pkt_hdr* %42 to i16*
  %44 = getelementptr inbounds i16, i16* %43, i64 1
  %45 = load i16, i16* %44, align 2
  %46 = call signext i16 @WORDSWAP(i16 signext %45)
  %47 = load %struct.e8390_pkt_hdr*, %struct.e8390_pkt_hdr** %5, align 8
  %48 = bitcast %struct.e8390_pkt_hdr* %47 to i16*
  %49 = getelementptr inbounds i16, i16* %48, i64 1
  store i16 %46, i16* %49, align 2
  ret void
}

declare dso_local i8* @z_readw(i64) #1

declare dso_local signext i16 @WORDSWAP(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
