; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_set_mac_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_set_mac_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i64 }
%struct.dsaf_drv_tbl_tcam_key = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }

@DSAF_MODE_ENABLE = common dso_local global i64 0, align 8
@DSAF_TBL_TCAM_KEY_VLAN_M = common dso_local global i32 0, align 4
@DSAF_TBL_TCAM_KEY_VLAN_S = common dso_local global i32 0, align 4
@DSAF_TBL_TCAM_KEY_PORT_M = common dso_local global i32 0, align 4
@DSAF_TBL_TCAM_KEY_PORT_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, %struct.dsaf_drv_tbl_tcam_key*, i8*, i8*, i8**)* @hns_dsaf_set_mac_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_set_mac_key(%struct.dsaf_device* %0, %struct.dsaf_drv_tbl_tcam_key* %1, i8* %2, i8* %3, i8** %4) #0 {
  %6 = alloca %struct.dsaf_device*, align 8
  %7 = alloca %struct.dsaf_drv_tbl_tcam_key*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  store %struct.dsaf_device* %0, %struct.dsaf_device** %6, align 8
  store %struct.dsaf_drv_tbl_tcam_key* %1, %struct.dsaf_drv_tbl_tcam_key** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i8** %4, i8*** %10, align 8
  %12 = load %struct.dsaf_device*, %struct.dsaf_device** %6, align 8
  %13 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @DSAF_MODE_ENABLE, align 8
  %16 = icmp sle i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i8* null, i8** %11, align 8
  br label %20

18:                                               ; preds = %5
  %19 = load i8*, i8** %9, align 8
  store i8* %19, i8** %11, align 8
  br label %20

20:                                               ; preds = %18, %17
  %21 = load i8**, i8*** %10, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.dsaf_drv_tbl_tcam_key*, %struct.dsaf_drv_tbl_tcam_key** %7, align 8
  %25 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  store i8* %23, i8** %27, align 8
  %28 = load i8**, i8*** %10, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load i8*, i8** %29, align 8
  %31 = load %struct.dsaf_drv_tbl_tcam_key*, %struct.dsaf_drv_tbl_tcam_key** %7, align 8
  %32 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 2
  store i8* %30, i8** %34, align 8
  %35 = load i8**, i8*** %10, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 2
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.dsaf_drv_tbl_tcam_key*, %struct.dsaf_drv_tbl_tcam_key** %7, align 8
  %39 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i8* %37, i8** %41, align 8
  %42 = load i8**, i8*** %10, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 3
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.dsaf_drv_tbl_tcam_key*, %struct.dsaf_drv_tbl_tcam_key** %7, align 8
  %46 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store i8* %44, i8** %48, align 8
  %49 = load i8**, i8*** %10, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 4
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.dsaf_drv_tbl_tcam_key*, %struct.dsaf_drv_tbl_tcam_key** %7, align 8
  %53 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  store i8* %51, i8** %55, align 8
  %56 = load i8**, i8*** %10, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 5
  %58 = load i8*, i8** %57, align 8
  %59 = load %struct.dsaf_drv_tbl_tcam_key*, %struct.dsaf_drv_tbl_tcam_key** %7, align 8
  %60 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  store i8* %58, i8** %62, align 8
  %63 = load %struct.dsaf_drv_tbl_tcam_key*, %struct.dsaf_drv_tbl_tcam_key** %7, align 8
  %64 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  %67 = load %struct.dsaf_drv_tbl_tcam_key*, %struct.dsaf_drv_tbl_tcam_key** %7, align 8
  %68 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* @DSAF_TBL_TCAM_KEY_VLAN_M, align 4
  %73 = load i32, i32* @DSAF_TBL_TCAM_KEY_VLAN_S, align 4
  %74 = load i8*, i8** %8, align 8
  %75 = call i32 @dsaf_set_field(i64 %71, i32 %72, i32 %73, i8* %74)
  %76 = load %struct.dsaf_drv_tbl_tcam_key*, %struct.dsaf_drv_tbl_tcam_key** %7, align 8
  %77 = getelementptr inbounds %struct.dsaf_drv_tbl_tcam_key, %struct.dsaf_drv_tbl_tcam_key* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @DSAF_TBL_TCAM_KEY_PORT_M, align 4
  %82 = load i32, i32* @DSAF_TBL_TCAM_KEY_PORT_S, align 4
  %83 = load i8*, i8** %11, align 8
  %84 = call i32 @dsaf_set_field(i64 %80, i32 %81, i32 %82, i8* %83)
  ret void
}

declare dso_local i32 @dsaf_set_field(i64, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
