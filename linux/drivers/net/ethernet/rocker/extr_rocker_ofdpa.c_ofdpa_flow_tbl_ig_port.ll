; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_flow_tbl_ig_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_flow_tbl_ig_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32 }
%struct.ofdpa_flow_tbl_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OFDPA_PRIORITY_IG_PORT = common dso_local global i32 0, align 4
@ROCKER_OF_DPA_TABLE_ID_INGRESS_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, i8*, i8*, i32)* @ofdpa_flow_tbl_ig_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_flow_tbl_ig_port(%struct.ofdpa_port* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ofdpa_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ofdpa_flow_tbl_entry*, align 8
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ofdpa_flow_tbl_entry* @kzalloc(i32 32, i32 %13)
  store %struct.ofdpa_flow_tbl_entry* %14, %struct.ofdpa_flow_tbl_entry** %12, align 8
  %15 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %12, align 8
  %16 = icmp ne %struct.ofdpa_flow_tbl_entry* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %48

20:                                               ; preds = %5
  %21 = load i32, i32* @OFDPA_PRIORITY_IG_PORT, align 4
  %22 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %12, align 8
  %23 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @ROCKER_OF_DPA_TABLE_ID_INGRESS_PORT, align 4
  %26 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %12, align 8
  %27 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %12, align 8
  %31 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  store i8* %29, i8** %33, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %12, align 8
  %36 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i8* %34, i8** %38, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %12, align 8
  %41 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 8
  %44 = load %struct.ofdpa_port*, %struct.ofdpa_port** %7, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %12, align 8
  %47 = call i32 @ofdpa_flow_tbl_do(%struct.ofdpa_port* %44, i32 %45, %struct.ofdpa_flow_tbl_entry* %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %20, %17
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.ofdpa_flow_tbl_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @ofdpa_flow_tbl_do(%struct.ofdpa_port*, i32, %struct.ofdpa_flow_tbl_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
