; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_neigh_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_neigh_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_neigh_tbl_entry = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ofdpa_neigh_tbl_entry*, i32*, i32)* @ofdpa_neigh_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofdpa_neigh_update(%struct.ofdpa_neigh_tbl_entry* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ofdpa_neigh_tbl_entry*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ofdpa_neigh_tbl_entry* %0, %struct.ofdpa_neigh_tbl_entry** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %4, align 8
  %11 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 @ether_addr_copy(i32 %12, i32* %13)
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %4, align 8
  %17 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.ofdpa_neigh_tbl_entry*, %struct.ofdpa_neigh_tbl_entry** %4, align 8
  %20 = getelementptr inbounds %struct.ofdpa_neigh_tbl_entry, %struct.ofdpa_neigh_tbl_entry* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %18, %9
  ret void
}

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
