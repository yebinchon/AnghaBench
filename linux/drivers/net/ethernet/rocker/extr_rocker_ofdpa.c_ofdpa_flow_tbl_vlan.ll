; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_flow_tbl_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_flow_tbl_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { i32 }
%struct.ofdpa_flow_tbl_entry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i8*, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OFDPA_PRIORITY_VLAN = common dso_local global i32 0, align 4
@ROCKER_OF_DPA_TABLE_ID_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, i32, i8*, i8*, i32, i32, i8*)* @ofdpa_flow_tbl_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_flow_tbl_vlan(%struct.ofdpa_port* %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ofdpa_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca %struct.ofdpa_flow_tbl_entry*, align 8
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i8* %7, i8** %17, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ofdpa_flow_tbl_entry* @kzalloc(i32 48, i32 %19)
  store %struct.ofdpa_flow_tbl_entry* %20, %struct.ofdpa_flow_tbl_entry** %18, align 8
  %21 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %18, align 8
  %22 = icmp ne %struct.ofdpa_flow_tbl_entry* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %8
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %9, align 4
  br label %69

26:                                               ; preds = %8
  %27 = load i32, i32* @OFDPA_PRIORITY_VLAN, align 4
  %28 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %18, align 8
  %29 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @ROCKER_OF_DPA_TABLE_ID_VLAN, align 4
  %32 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %18, align 8
  %33 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %18, align 8
  %37 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 5
  store i32 %35, i32* %39, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %18, align 8
  %42 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 4
  store i8* %40, i8** %44, align 8
  %45 = load i8*, i8** %14, align 8
  %46 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %18, align 8
  %47 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 3
  store i8* %45, i8** %49, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %18, align 8
  %52 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %50, i32* %54, align 8
  %55 = load i32, i32* %16, align 4
  %56 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %18, align 8
  %57 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 4
  %60 = load i8*, i8** %17, align 8
  %61 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %18, align 8
  %62 = getelementptr inbounds %struct.ofdpa_flow_tbl_entry, %struct.ofdpa_flow_tbl_entry* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i8* %60, i8** %64, align 8
  %65 = load %struct.ofdpa_port*, %struct.ofdpa_port** %10, align 8
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.ofdpa_flow_tbl_entry*, %struct.ofdpa_flow_tbl_entry** %18, align 8
  %68 = call i32 @ofdpa_flow_tbl_do(%struct.ofdpa_port* %65, i32 %66, %struct.ofdpa_flow_tbl_entry* %67)
  store i32 %68, i32* %9, align 4
  br label %69

69:                                               ; preds = %26, %23
  %70 = load i32, i32* %9, align 4
  ret i32 %70
}

declare dso_local %struct.ofdpa_flow_tbl_entry* @kzalloc(i32, i32) #1

declare dso_local i32 @ofdpa_flow_tbl_do(%struct.ofdpa_port*, i32, %struct.ofdpa_flow_tbl_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
