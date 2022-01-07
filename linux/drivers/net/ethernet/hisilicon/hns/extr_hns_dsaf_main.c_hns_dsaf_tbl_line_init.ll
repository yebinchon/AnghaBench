; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_tbl_line_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_tbl_line_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_tbl_line_cfg = type { i32, i32, i32 }
%struct.dsaf_device = type { i32 }

@__const.hns_dsaf_tbl_line_init.tbl_line = private unnamed_addr constant [1 x %struct.dsaf_tbl_line_cfg] [%struct.dsaf_tbl_line_cfg { i32 1, i32 0, i32 0 }], align 4
@DSAF_LINE_SUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*)* @hns_dsaf_tbl_line_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_tbl_line_init(%struct.dsaf_device* %0) #0 {
  %2 = alloca %struct.dsaf_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca [1 x %struct.dsaf_tbl_line_cfg], align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %2, align 8
  %5 = bitcast [1 x %struct.dsaf_tbl_line_cfg]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast ([1 x %struct.dsaf_tbl_line_cfg]* @__const.hns_dsaf_tbl_line_init.tbl_line to i8*), i64 12, i1 false)
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %15, %1
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @DSAF_LINE_SUM, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds [1 x %struct.dsaf_tbl_line_cfg], [1 x %struct.dsaf_tbl_line_cfg]* %4, i64 0, i64 0
  %14 = call i32 @hns_dsaf_single_line_tbl_cfg(%struct.dsaf_device* %11, i64 %12, %struct.dsaf_tbl_line_cfg* %13)
  br label %15

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %3, align 8
  br label %6

18:                                               ; preds = %6
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @hns_dsaf_single_line_tbl_cfg(%struct.dsaf_device*, i64, %struct.dsaf_tbl_line_cfg*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
