; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_dcb_update_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_dcb.c_cxgb4_dcb_update_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_dcb_info = type { i64, i32 }

@FW_PORT_DCB_VER_IEEE = common dso_local global i64 0, align 8
@DCB_CAP_DCBX_VER_CEE = common dso_local global i32 0, align 4
@DCB_CAP_DCBX_VER_IEEE = common dso_local global i32 0, align 4
@FW_PORT_DCB_VER_CEE1D01 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.port_dcb_info*)* @cxgb4_dcb_update_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxgb4_dcb_update_support(%struct.port_dcb_info* %0) #0 {
  %2 = alloca %struct.port_dcb_info*, align 8
  store %struct.port_dcb_info* %0, %struct.port_dcb_info** %2, align 8
  %3 = load %struct.port_dcb_info*, %struct.port_dcb_info** %2, align 8
  %4 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @FW_PORT_DCB_VER_IEEE, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load %struct.port_dcb_info*, %struct.port_dcb_info** %2, align 8
  %10 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @DCB_CAP_DCBX_VER_CEE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %8
  %16 = load i32, i32* @DCB_CAP_DCBX_VER_CEE, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.port_dcb_info*, %struct.port_dcb_info** %2, align 8
  %19 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  br label %22

22:                                               ; preds = %15, %8
  %23 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %24 = load %struct.port_dcb_info*, %struct.port_dcb_info** %2, align 8
  %25 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %55

28:                                               ; preds = %1
  %29 = load %struct.port_dcb_info*, %struct.port_dcb_info** %2, align 8
  %30 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FW_PORT_DCB_VER_CEE1D01, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %54

34:                                               ; preds = %28
  %35 = load %struct.port_dcb_info*, %struct.port_dcb_info** %2, align 8
  %36 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i32, i32* @DCB_CAP_DCBX_VER_IEEE, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.port_dcb_info*, %struct.port_dcb_info** %2, align 8
  %45 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %41, %34
  %49 = load i32, i32* @DCB_CAP_DCBX_VER_CEE, align 4
  %50 = load %struct.port_dcb_info*, %struct.port_dcb_info** %2, align 8
  %51 = getelementptr inbounds %struct.port_dcb_info, %struct.port_dcb_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %48, %28
  br label %55

55:                                               ; preds = %54, %22
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
