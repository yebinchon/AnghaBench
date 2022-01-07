; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_group_tbl_do.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_group_tbl_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32 }
%struct.ofdpa_group_tbl_entry = type { i32 }

@OFDPA_OP_FLAG_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, %struct.ofdpa_group_tbl_entry*)* @ofdpa_group_tbl_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_group_tbl_do(%struct.ofdpa_port* %0, i32 %1, %struct.ofdpa_group_tbl_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ofdpa_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ofdpa_group_tbl_entry*, align 8
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ofdpa_group_tbl_entry* %2, %struct.ofdpa_group_tbl_entry** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @OFDPA_OP_FLAG_REMOVE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %7, align 8
  %16 = call i32 @ofdpa_group_tbl_del(%struct.ofdpa_port* %13, i32 %14, %struct.ofdpa_group_tbl_entry* %15)
  store i32 %16, i32* %4, align 4
  br label %22

17:                                               ; preds = %3
  %18 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ofdpa_group_tbl_entry*, %struct.ofdpa_group_tbl_entry** %7, align 8
  %21 = call i32 @ofdpa_group_tbl_add(%struct.ofdpa_port* %18, i32 %19, %struct.ofdpa_group_tbl_entry* %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local i32 @ofdpa_group_tbl_del(%struct.ofdpa_port*, i32, %struct.ofdpa_group_tbl_entry*) #1

declare dso_local i32 @ofdpa_group_tbl_add(%struct.ofdpa_port*, i32, %struct.ofdpa_group_tbl_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
