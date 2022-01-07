; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_offload_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_bnx2x_offload_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32 }
%struct.kwqe = type { i32 }
%struct.l4_kwq_offload_pg = type { i32 }
%struct.l4_kcq = type { i32, i32, i32 }
%struct.kcqe = type { i32 }

@L4_KCQE_OPCODE_VALUE_OFFLOAD_PG = common dso_local global i32 0, align 4
@CNIC_ULP_L4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe*)* @cnic_bnx2x_offload_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_offload_pg(%struct.cnic_dev* %0, %struct.kwqe* %1) #0 {
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.kwqe*, align 8
  %5 = alloca %struct.l4_kwq_offload_pg*, align 8
  %6 = alloca %struct.l4_kcq, align 4
  %7 = alloca [1 x %struct.kcqe*], align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  store %struct.kwqe* %1, %struct.kwqe** %4, align 8
  %8 = load %struct.kwqe*, %struct.kwqe** %4, align 8
  %9 = bitcast %struct.kwqe* %8 to %struct.l4_kwq_offload_pg*
  store %struct.l4_kwq_offload_pg* %9, %struct.l4_kwq_offload_pg** %5, align 8
  %10 = call i32 @memset(%struct.l4_kcq* %6, i32 0, i32 12)
  %11 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %5, align 8
  %12 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %6, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load %struct.l4_kwq_offload_pg*, %struct.l4_kwq_offload_pg** %5, align 8
  %16 = getelementptr inbounds %struct.l4_kwq_offload_pg, %struct.l4_kwq_offload_pg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %6, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @L4_KCQE_OPCODE_VALUE_OFFLOAD_PG, align 4
  %20 = getelementptr inbounds %struct.l4_kcq, %struct.l4_kcq* %6, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = bitcast %struct.l4_kcq* %6 to %struct.kcqe*
  %22 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %7, i64 0, i64 0
  store %struct.kcqe* %21, %struct.kcqe** %22, align 8
  %23 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %24 = load i32, i32* @CNIC_ULP_L4, align 4
  %25 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %7, i64 0, i64 0
  %26 = call i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev* %23, i32 %24, %struct.kcqe** %25, i32 1)
  ret i32 0
}

declare dso_local i32 @memset(%struct.l4_kcq*, i32, i32) #1

declare dso_local i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev*, i32, %struct.kcqe**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
