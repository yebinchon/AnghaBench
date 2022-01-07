; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_setup_policer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_main.c_sja1105_setup_policer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_l2_policing_entry = type { i32, i32, i64, i64, i32 }

@ETH_FRAME_LEN = common dso_local global i64 0, align 8
@VLAN_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sja1105_l2_policing_entry*, i32)* @sja1105_setup_policer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1105_setup_policer(%struct.sja1105_l2_policing_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.sja1105_l2_policing_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.sja1105_l2_policing_entry* %0, %struct.sja1105_l2_policing_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.sja1105_l2_policing_entry*, %struct.sja1105_l2_policing_entry** %3, align 8
  %7 = load i32, i32* %4, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.sja1105_l2_policing_entry, %struct.sja1105_l2_policing_entry* %6, i64 %8
  %10 = getelementptr inbounds %struct.sja1105_l2_policing_entry, %struct.sja1105_l2_policing_entry* %9, i32 0, i32 0
  store i32 %5, i32* %10, align 8
  %11 = load %struct.sja1105_l2_policing_entry*, %struct.sja1105_l2_policing_entry** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.sja1105_l2_policing_entry, %struct.sja1105_l2_policing_entry* %11, i64 %13
  %15 = getelementptr inbounds %struct.sja1105_l2_policing_entry, %struct.sja1105_l2_policing_entry* %14, i32 0, i32 1
  store i32 65535, i32* %15, align 4
  %16 = call i32 @SJA1105_RATE_MBPS(i32 1000)
  %17 = load %struct.sja1105_l2_policing_entry*, %struct.sja1105_l2_policing_entry** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.sja1105_l2_policing_entry, %struct.sja1105_l2_policing_entry* %17, i64 %19
  %21 = getelementptr inbounds %struct.sja1105_l2_policing_entry, %struct.sja1105_l2_policing_entry* %20, i32 0, i32 4
  store i32 %16, i32* %21, align 8
  %22 = load i64, i64* @ETH_FRAME_LEN, align 8
  %23 = load i64, i64* @VLAN_HLEN, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @ETH_FCS_LEN, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.sja1105_l2_policing_entry*, %struct.sja1105_l2_policing_entry** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sja1105_l2_policing_entry, %struct.sja1105_l2_policing_entry* %27, i64 %29
  %31 = getelementptr inbounds %struct.sja1105_l2_policing_entry, %struct.sja1105_l2_policing_entry* %30, i32 0, i32 3
  store i64 %26, i64* %31, align 8
  %32 = load %struct.sja1105_l2_policing_entry*, %struct.sja1105_l2_policing_entry** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sja1105_l2_policing_entry, %struct.sja1105_l2_policing_entry* %32, i64 %34
  %36 = getelementptr inbounds %struct.sja1105_l2_policing_entry, %struct.sja1105_l2_policing_entry* %35, i32 0, i32 2
  store i64 0, i64* %36, align 8
  ret void
}

declare dso_local i32 @SJA1105_RATE_MBPS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
