; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_is_trailer_only_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_usb.c_is_trailer_only_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_htc_hdr = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_htc_hdr*)* @is_trailer_only_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_trailer_only_msg(%struct.ath10k_htc_hdr* %0) #0 {
  %2 = alloca %struct.ath10k_htc_hdr*, align 8
  store %struct.ath10k_htc_hdr* %0, %struct.ath10k_htc_hdr** %2, align 8
  %3 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %2, align 8
  %4 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i64 @__le16_to_cpu(i32 %5)
  %7 = load %struct.ath10k_htc_hdr*, %struct.ath10k_htc_hdr** %2, align 8
  %8 = getelementptr inbounds %struct.ath10k_htc_hdr, %struct.ath10k_htc_hdr* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  %11 = zext i1 %10 to i32
  ret i32 %11
}

declare dso_local i64 @__le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
