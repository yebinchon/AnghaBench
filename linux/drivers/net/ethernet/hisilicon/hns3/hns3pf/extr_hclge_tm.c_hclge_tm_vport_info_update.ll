; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_vport_info_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_vport_info_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i64, %struct.hclge_vport* }
%struct.hclge_vport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*)* @hclge_tm_vport_info_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_tm_vport_info_update(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hclge_vport*, align 8
  %4 = alloca i64, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %5 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %5, i32 0, i32 1
  %7 = load %struct.hclge_vport*, %struct.hclge_vport** %6, align 8
  store %struct.hclge_vport* %7, %struct.hclge_vport** %3, align 8
  store i64 0, i64* %4, align 8
  br label %8

8:                                                ; preds = %19, %1
  %9 = load i64, i64* %4, align 8
  %10 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %11 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %16 = call i32 @hclge_tm_vport_tc_info_update(%struct.hclge_vport* %15)
  %17 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %18 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %17, i32 1
  store %struct.hclge_vport* %18, %struct.hclge_vport** %3, align 8
  br label %19

19:                                               ; preds = %14
  %20 = load i64, i64* %4, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %4, align 8
  br label %8

22:                                               ; preds = %8
  ret void
}

declare dso_local i32 @hclge_tm_vport_tc_info_update(%struct.hclge_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
