; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_single_line_tbl_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_single_line_tbl_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }
%struct.dsaf_tbl_line_cfg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, i32, %struct.dsaf_tbl_line_cfg*)* @hns_dsaf_single_line_tbl_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_single_line_tbl_cfg(%struct.dsaf_device* %0, i32 %1, %struct.dsaf_tbl_line_cfg* %2) #0 {
  %4 = alloca %struct.dsaf_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsaf_tbl_line_cfg*, align 8
  store %struct.dsaf_device* %0, %struct.dsaf_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dsaf_tbl_line_cfg* %2, %struct.dsaf_tbl_line_cfg** %6, align 8
  %7 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %8 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @hns_dsaf_tbl_line_addr_cfg(%struct.dsaf_device* %10, i32 %11)
  %13 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %14 = load %struct.dsaf_tbl_line_cfg*, %struct.dsaf_tbl_line_cfg** %6, align 8
  %15 = call i32 @hns_dsaf_tbl_line_cfg(%struct.dsaf_device* %13, %struct.dsaf_tbl_line_cfg* %14)
  %16 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %17 = call i32 @hns_dsaf_tbl_line_pul(%struct.dsaf_device* %16)
  %18 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %19 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %18, i32 0, i32 0
  %20 = call i32 @spin_unlock_bh(i32* %19)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hns_dsaf_tbl_line_addr_cfg(%struct.dsaf_device*, i32) #1

declare dso_local i32 @hns_dsaf_tbl_line_cfg(%struct.dsaf_device*, %struct.dsaf_tbl_line_cfg*) #1

declare dso_local i32 @hns_dsaf_tbl_line_pul(%struct.dsaf_device*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
