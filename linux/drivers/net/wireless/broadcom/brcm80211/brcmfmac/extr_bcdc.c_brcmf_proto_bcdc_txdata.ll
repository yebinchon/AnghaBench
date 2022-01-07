; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_txdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_bcdc.c_brcmf_proto_bcdc_txdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_pub*, i32, i32, %struct.sk_buff*)* @brcmf_proto_bcdc_txdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_proto_bcdc_txdata(%struct.brcmf_pub* %0, i32 %1, i32 %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.brcmf_pub*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %9 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %13 = call i32 @brcmf_proto_bcdc_hdrpush(%struct.brcmf_pub* %9, i32 %10, i32 %11, %struct.sk_buff* %12)
  %14 = load %struct.brcmf_pub*, %struct.brcmf_pub** %5, align 8
  %15 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %18 = call i32 @brcmf_bus_txdata(i32 %16, %struct.sk_buff* %17)
  ret i32 %18
}

declare dso_local i32 @brcmf_proto_bcdc_hdrpush(%struct.brcmf_pub*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @brcmf_bus_txdata(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
