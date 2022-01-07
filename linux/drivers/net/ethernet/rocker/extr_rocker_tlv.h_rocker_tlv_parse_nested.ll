; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_tlv.h_rocker_tlv_parse_nested.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_tlv.h_rocker_tlv_parse_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_tlv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rocker_tlv**, i32, %struct.rocker_tlv*)* @rocker_tlv_parse_nested to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rocker_tlv_parse_nested(%struct.rocker_tlv** %0, i32 %1, %struct.rocker_tlv* %2) #0 {
  %4 = alloca %struct.rocker_tlv**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rocker_tlv*, align 8
  store %struct.rocker_tlv** %0, %struct.rocker_tlv*** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rocker_tlv* %2, %struct.rocker_tlv** %6, align 8
  %7 = load %struct.rocker_tlv**, %struct.rocker_tlv*** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.rocker_tlv*, %struct.rocker_tlv** %6, align 8
  %10 = call i32 @rocker_tlv_data(%struct.rocker_tlv* %9)
  %11 = load %struct.rocker_tlv*, %struct.rocker_tlv** %6, align 8
  %12 = call i32 @rocker_tlv_len(%struct.rocker_tlv* %11)
  %13 = call i32 @rocker_tlv_parse(%struct.rocker_tlv** %7, i32 %8, i32 %10, i32 %12)
  ret void
}

declare dso_local i32 @rocker_tlv_parse(%struct.rocker_tlv**, i32, i32, i32) #1

declare dso_local i32 @rocker_tlv_data(%struct.rocker_tlv*) #1

declare dso_local i32 @rocker_tlv_len(%struct.rocker_tlv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
