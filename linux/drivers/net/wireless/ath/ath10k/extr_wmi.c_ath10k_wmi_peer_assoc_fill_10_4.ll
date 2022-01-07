; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_peer_assoc_fill_10_4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_peer_assoc_fill_10_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.wmi_peer_assoc_complete_arg = type { i32 }
%struct.wmi_10_4_peer_assoc_complete_cmd = type { i64 }

@PEER_BW_RXNSS_OVERRIDE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*, i8*, %struct.wmi_peer_assoc_complete_arg*)* @ath10k_wmi_peer_assoc_fill_10_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_wmi_peer_assoc_fill_10_4(%struct.ath10k* %0, i8* %1, %struct.wmi_peer_assoc_complete_arg* %2) #0 {
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wmi_peer_assoc_complete_arg*, align 8
  %7 = alloca %struct.wmi_10_4_peer_assoc_complete_cmd*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.wmi_peer_assoc_complete_arg* %2, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.wmi_10_4_peer_assoc_complete_cmd*
  store %struct.wmi_10_4_peer_assoc_complete_cmd* %9, %struct.wmi_10_4_peer_assoc_complete_cmd** %7, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %13 = call i32 @ath10k_wmi_peer_assoc_fill_10_2(%struct.ath10k* %10, i8* %11, %struct.wmi_peer_assoc_complete_arg* %12)
  %14 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %15 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %3
  %19 = load %struct.wmi_peer_assoc_complete_arg*, %struct.wmi_peer_assoc_complete_arg** %6, align 8
  %20 = getelementptr inbounds %struct.wmi_peer_assoc_complete_arg, %struct.wmi_peer_assoc_complete_arg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = load i32, i32* @PEER_BW_RXNSS_OVERRIDE_OFFSET, align 4
  %24 = call i32 @BIT(i32 %23)
  %25 = or i32 %22, %24
  %26 = call i64 @__cpu_to_le32(i32 %25)
  %27 = load %struct.wmi_10_4_peer_assoc_complete_cmd*, %struct.wmi_10_4_peer_assoc_complete_cmd** %7, align 8
  %28 = getelementptr inbounds %struct.wmi_10_4_peer_assoc_complete_cmd, %struct.wmi_10_4_peer_assoc_complete_cmd* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  br label %32

29:                                               ; preds = %3
  %30 = load %struct.wmi_10_4_peer_assoc_complete_cmd*, %struct.wmi_10_4_peer_assoc_complete_cmd** %7, align 8
  %31 = getelementptr inbounds %struct.wmi_10_4_peer_assoc_complete_cmd, %struct.wmi_10_4_peer_assoc_complete_cmd* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %18
  ret void
}

declare dso_local i32 @ath10k_wmi_peer_assoc_fill_10_2(%struct.ath10k*, i8*, %struct.wmi_peer_assoc_complete_arg*) #1

declare dso_local i64 @__cpu_to_le32(i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
