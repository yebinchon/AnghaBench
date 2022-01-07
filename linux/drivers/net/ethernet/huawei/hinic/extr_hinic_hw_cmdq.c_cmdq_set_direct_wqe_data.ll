; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_set_direct_wqe_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_set_direct_wqe_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_cmdq_direct_wqe = type { %struct.hinic_cmdq_wqe_scmd }
%struct.hinic_cmdq_wqe_scmd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_cmdq_direct_wqe*, i8*, i32)* @cmdq_set_direct_wqe_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdq_set_direct_wqe_data(%struct.hinic_cmdq_direct_wqe* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hinic_cmdq_direct_wqe*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hinic_cmdq_wqe_scmd*, align 8
  store %struct.hinic_cmdq_direct_wqe* %0, %struct.hinic_cmdq_direct_wqe** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hinic_cmdq_direct_wqe*, %struct.hinic_cmdq_direct_wqe** %4, align 8
  %9 = getelementptr inbounds %struct.hinic_cmdq_direct_wqe, %struct.hinic_cmdq_direct_wqe* %8, i32 0, i32 0
  store %struct.hinic_cmdq_wqe_scmd* %9, %struct.hinic_cmdq_wqe_scmd** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.hinic_cmdq_wqe_scmd*, %struct.hinic_cmdq_wqe_scmd** %7, align 8
  %12 = getelementptr inbounds %struct.hinic_cmdq_wqe_scmd, %struct.hinic_cmdq_wqe_scmd* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store i32 %10, i32* %13, align 4
  %14 = load %struct.hinic_cmdq_wqe_scmd*, %struct.hinic_cmdq_wqe_scmd** %7, align 8
  %15 = getelementptr inbounds %struct.hinic_cmdq_wqe_scmd, %struct.hinic_cmdq_wqe_scmd* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @memcpy(i32 %17, i8* %18, i32 %19)
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
