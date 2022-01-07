; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_close_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_cm_close_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_sock = type { i32, i32, %struct.cnic_dev* }
%struct.cnic_dev = type { i32 (%struct.cnic_dev*, %struct.kwqe**, i32)* }
%struct.kwqe = type { i32 }
%struct.l4_kwq_close_req = type { i32, i32, i32 }

@L4_KWQE_OPCODE_VALUE_CLOSE = common dso_local global i32 0, align 4
@L4_LAYER_CODE = common dso_local global i32 0, align 4
@L4_KWQ_CLOSE_REQ_LAYER_CODE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_sock*)* @cnic_cm_close_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_cm_close_req(%struct.cnic_sock* %0) #0 {
  %2 = alloca %struct.cnic_sock*, align 8
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.l4_kwq_close_req*, align 8
  %5 = alloca [1 x %struct.kwqe*], align 8
  store %struct.cnic_sock* %0, %struct.cnic_sock** %2, align 8
  %6 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %7 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %6, i32 0, i32 2
  %8 = load %struct.cnic_dev*, %struct.cnic_dev** %7, align 8
  store %struct.cnic_dev* %8, %struct.cnic_dev** %3, align 8
  %9 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %10 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %9, i32 0, i32 1
  %11 = bitcast i32* %10 to %struct.l4_kwq_close_req*
  store %struct.l4_kwq_close_req* %11, %struct.l4_kwq_close_req** %4, align 8
  %12 = load %struct.l4_kwq_close_req*, %struct.l4_kwq_close_req** %4, align 8
  %13 = call i32 @memset(%struct.l4_kwq_close_req* %12, i32 0, i32 12)
  %14 = load %struct.l4_kwq_close_req*, %struct.l4_kwq_close_req** %4, align 8
  %15 = bitcast %struct.l4_kwq_close_req* %14 to %struct.kwqe*
  %16 = getelementptr inbounds [1 x %struct.kwqe*], [1 x %struct.kwqe*]* %5, i64 0, i64 0
  store %struct.kwqe* %15, %struct.kwqe** %16, align 8
  %17 = load i32, i32* @L4_KWQE_OPCODE_VALUE_CLOSE, align 4
  %18 = load %struct.l4_kwq_close_req*, %struct.l4_kwq_close_req** %4, align 8
  %19 = getelementptr inbounds %struct.l4_kwq_close_req, %struct.l4_kwq_close_req* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @L4_LAYER_CODE, align 4
  %21 = load i32, i32* @L4_KWQ_CLOSE_REQ_LAYER_CODE_SHIFT, align 4
  %22 = shl i32 %20, %21
  %23 = load %struct.l4_kwq_close_req*, %struct.l4_kwq_close_req** %4, align 8
  %24 = getelementptr inbounds %struct.l4_kwq_close_req, %struct.l4_kwq_close_req* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cnic_sock*, %struct.cnic_sock** %2, align 8
  %26 = getelementptr inbounds %struct.cnic_sock, %struct.cnic_sock* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.l4_kwq_close_req*, %struct.l4_kwq_close_req** %4, align 8
  %29 = getelementptr inbounds %struct.l4_kwq_close_req, %struct.l4_kwq_close_req* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %31 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %30, i32 0, i32 0
  %32 = load i32 (%struct.cnic_dev*, %struct.kwqe**, i32)*, i32 (%struct.cnic_dev*, %struct.kwqe**, i32)** %31, align 8
  %33 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %34 = getelementptr inbounds [1 x %struct.kwqe*], [1 x %struct.kwqe*]* %5, i64 0, i64 0
  %35 = call i32 %32(%struct.cnic_dev* %33, %struct.kwqe** %34, i32 1)
  ret i32 %35
}

declare dso_local i32 @memset(%struct.l4_kwq_close_req*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
