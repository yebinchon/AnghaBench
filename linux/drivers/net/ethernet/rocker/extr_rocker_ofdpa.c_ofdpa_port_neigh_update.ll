; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_neigh_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_neigh_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { %struct.ofdpa_port* }
%struct.ofdpa_port = type { i32 }
%struct.neighbour = type { i32, i32, i64 }

@NUD_VALID = common dso_local global i32 0, align 4
@OFDPA_OP_FLAG_REMOVE = common dso_local global i32 0, align 4
@OFDPA_OP_FLAG_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*, %struct.neighbour*)* @ofdpa_port_neigh_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_neigh_update(%struct.rocker_port* %0, %struct.neighbour* %1) #0 {
  %3 = alloca %struct.rocker_port*, align 8
  %4 = alloca %struct.neighbour*, align 8
  %5 = alloca %struct.ofdpa_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %3, align 8
  store %struct.neighbour* %1, %struct.neighbour** %4, align 8
  %8 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %9 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %8, i32 0, i32 0
  %10 = load %struct.ofdpa_port*, %struct.ofdpa_port** %9, align 8
  store %struct.ofdpa_port* %10, %struct.ofdpa_port** %5, align 8
  %11 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %12 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NUD_VALID, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @OFDPA_OP_FLAG_REMOVE, align 4
  br label %20

20:                                               ; preds = %18, %17
  %21 = phi i32 [ 0, %17 ], [ %19, %18 ]
  %22 = load i32, i32* @OFDPA_OP_FLAG_NOWAIT, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %25 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32*
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %33 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ofdpa_port_ipv4_neigh(%struct.ofdpa_port* %29, i32 %30, i32 %31, i32 %34)
  ret i32 %35
}

declare dso_local i32 @ofdpa_port_ipv4_neigh(%struct.ofdpa_port*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
