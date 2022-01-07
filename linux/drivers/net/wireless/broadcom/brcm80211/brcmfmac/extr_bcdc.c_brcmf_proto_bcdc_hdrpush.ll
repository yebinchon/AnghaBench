; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_hdrpush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_hdrpush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { i32 }
%struct.sk_buff = type { i64, i32, i64 }
%struct.brcmf_proto_bcdc_header = type { i32, i32, i32, i64 }

@BCDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@BCDC_HEADER_LEN = common dso_local global i32 0, align 4
@BCDC_PROTO_VER = common dso_local global i32 0, align 4
@BCDC_FLAG_VER_SHIFT = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@BCDC_FLAG_SUM_NEEDED = common dso_local global i32 0, align 4
@BCDC_PRIORITY_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_pub*, i32, i32, %struct.sk_buff*)* @brcmf_proto_bcdc_hdrpush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_proto_bcdc_hdrpush(%struct.brcmf_pub* %0, i32 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.brcmf_proto_bcdc_header*, align 8
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %10 = load i32, i32* @BCDC, align 4
  %11 = call i32 @brcmf_dbg(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %13 = load i32, i32* @BCDC_HEADER_LEN, align 4
  %14 = call i32 @skb_push(%struct.sk_buff* %12, i32 %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.brcmf_proto_bcdc_header*
  store %struct.brcmf_proto_bcdc_header* %18, %struct.brcmf_proto_bcdc_header** %9, align 8
  %19 = load i32, i32* @BCDC_PROTO_VER, align 4
  %20 = load i32, i32* @BCDC_FLAG_VER_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load %struct.brcmf_proto_bcdc_header*, %struct.brcmf_proto_bcdc_header** %9, align 8
  %23 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, %struct.brcmf_proto_bcdc_header* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %4
  %30 = load i32, i32* @BCDC_FLAG_SUM_NEEDED, align 4
  %31 = load %struct.brcmf_proto_bcdc_header*, %struct.brcmf_proto_bcdc_header** %9, align 8
  %32 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, %struct.brcmf_proto_bcdc_header* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %29, %4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @BCDC_PRIORITY_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load %struct.brcmf_proto_bcdc_header*, %struct.brcmf_proto_bcdc_header** %9, align 8
  %42 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, %struct.brcmf_proto_bcdc_header* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.brcmf_proto_bcdc_header*, %struct.brcmf_proto_bcdc_header** %9, align 8
  %44 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, %struct.brcmf_proto_bcdc_header* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.brcmf_proto_bcdc_header*, %struct.brcmf_proto_bcdc_header** %9, align 8
  %47 = getelementptr inbounds %struct.brcmf_proto_bcdc_header, %struct.brcmf_proto_bcdc_header* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load %struct.brcmf_proto_bcdc_header*, %struct.brcmf_proto_bcdc_header** %9, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @BCDC_SET_IF_IDX(%struct.brcmf_proto_bcdc_header* %48, i32 %49)
  %51 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @trace_brcmf_bcdchdr(i64 %53)
  ret void
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @BCDC_SET_IF_IDX(%struct.brcmf_proto_bcdc_header*, i32) #1

declare dso_local i32 @trace_brcmf_bcdchdr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
