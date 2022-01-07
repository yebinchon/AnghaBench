; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_update_protocol_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_update_protocol_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protocol_dcb_data = type { i32, i32, i32, i32 }
%struct.qed_dcbx_results = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.protocol_dcb_data*, %struct.qed_dcbx_results*, i32)* @qed_dcbx_update_protocol_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_dcbx_update_protocol_data(%struct.protocol_dcb_data* %0, %struct.qed_dcbx_results* %1, i32 %2) #0 {
  %4 = alloca %struct.protocol_dcb_data*, align 8
  %5 = alloca %struct.qed_dcbx_results*, align 8
  %6 = alloca i32, align 4
  store %struct.protocol_dcb_data* %0, %struct.protocol_dcb_data** %4, align 8
  store %struct.qed_dcbx_results* %1, %struct.qed_dcbx_results** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %5, align 8
  %8 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = load i32, i32* %6, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.protocol_dcb_data*, %struct.protocol_dcb_data** %4, align 8
  %16 = getelementptr inbounds %struct.protocol_dcb_data, %struct.protocol_dcb_data* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %5, align 8
  %18 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.protocol_dcb_data*, %struct.protocol_dcb_data** %4, align 8
  %26 = getelementptr inbounds %struct.protocol_dcb_data, %struct.protocol_dcb_data* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %5, align 8
  %28 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.protocol_dcb_data*, %struct.protocol_dcb_data** %4, align 8
  %36 = getelementptr inbounds %struct.protocol_dcb_data, %struct.protocol_dcb_data* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %5, align 8
  %38 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.protocol_dcb_data*, %struct.protocol_dcb_data** %4, align 8
  %46 = getelementptr inbounds %struct.protocol_dcb_data, %struct.protocol_dcb_data* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
