; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_flowring.c_brcmf_flowring_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_flowring = type { %struct.brcmf_flowring_ring** }
%struct.brcmf_flowring_ring = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Ring NULL, for flowid %d\0A\00", align 1
@RING_OPEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @brcmf_flowring_open(%struct.brcmf_flowring* %0, i64 %1) #0 {
  %3 = alloca %struct.brcmf_flowring*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.brcmf_flowring_ring*, align 8
  store %struct.brcmf_flowring* %0, %struct.brcmf_flowring** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.brcmf_flowring*, %struct.brcmf_flowring** %3, align 8
  %7 = getelementptr inbounds %struct.brcmf_flowring, %struct.brcmf_flowring* %6, i32 0, i32 0
  %8 = load %struct.brcmf_flowring_ring**, %struct.brcmf_flowring_ring*** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %8, i64 %9
  %11 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %10, align 8
  store %struct.brcmf_flowring_ring* %11, %struct.brcmf_flowring_ring** %5, align 8
  %12 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %5, align 8
  %13 = icmp ne %struct.brcmf_flowring_ring* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @brcmf_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %15)
  br label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @RING_OPEN, align 4
  %19 = load %struct.brcmf_flowring_ring*, %struct.brcmf_flowring_ring** %5, align 8
  %20 = getelementptr inbounds %struct.brcmf_flowring_ring, %struct.brcmf_flowring_ring* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %14
  ret void
}

declare dso_local i32 @brcmf_err(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
