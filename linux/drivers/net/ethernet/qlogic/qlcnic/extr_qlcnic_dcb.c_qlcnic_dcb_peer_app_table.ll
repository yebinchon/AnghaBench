; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_peer_app_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_dcb.c_qlcnic_dcb_peer_app_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dcb_app = type { i32, i32, i32 }
%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.qlcnic_dcb_cee* }
%struct.qlcnic_dcb_cee = type { %struct.qlcnic_dcb_app* }
%struct.qlcnic_dcb_app = type { i32, i32, i32, i32 }

@QLCNIC_DCB_STATE = common dso_local global i32 0, align 4
@QLC_DCB_PEER_IDX = common dso_local global i64 0, align 8
@QLC_DCB_MAX_APP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.dcb_app*)* @qlcnic_dcb_peer_app_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_dcb_peer_app_table(%struct.net_device* %0, %struct.dcb_app* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dcb_app*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca %struct.qlcnic_dcb_cee*, align 8
  %8 = alloca %struct.qlcnic_dcb_app*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.dcb_app* %1, %struct.dcb_app** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.qlcnic_adapter* %12, %struct.qlcnic_adapter** %6, align 8
  %13 = load i32, i32* @QLCNIC_DCB_STATE, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = call i32 @test_bit(i32 %13, i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

21:                                               ; preds = %2
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %27, align 8
  %29 = load i64, i64* @QLC_DCB_PEER_IDX, align 8
  %30 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %28, i64 %29
  store %struct.qlcnic_dcb_cee* %30, %struct.qlcnic_dcb_cee** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %73, %21
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @QLC_DCB_MAX_APP, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %76

35:                                               ; preds = %31
  %36 = load %struct.qlcnic_dcb_cee*, %struct.qlcnic_dcb_cee** %7, align 8
  %37 = getelementptr inbounds %struct.qlcnic_dcb_cee, %struct.qlcnic_dcb_cee* %36, i32 0, i32 0
  %38 = load %struct.qlcnic_dcb_app*, %struct.qlcnic_dcb_app** %37, align 8
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.qlcnic_dcb_app, %struct.qlcnic_dcb_app* %38, i64 %40
  store %struct.qlcnic_dcb_app* %41, %struct.qlcnic_dcb_app** %8, align 8
  %42 = load %struct.qlcnic_dcb_app*, %struct.qlcnic_dcb_app** %8, align 8
  %43 = getelementptr inbounds %struct.qlcnic_dcb_app, %struct.qlcnic_dcb_app* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %35
  br label %73

47:                                               ; preds = %35
  %48 = load %struct.qlcnic_dcb_app*, %struct.qlcnic_dcb_app** %8, align 8
  %49 = getelementptr inbounds %struct.qlcnic_dcb_app, %struct.qlcnic_dcb_app* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %51, i64 %53
  %55 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %54, i32 0, i32 2
  store i32 %50, i32* %55, align 4
  %56 = load %struct.qlcnic_dcb_app*, %struct.qlcnic_dcb_app** %8, align 8
  %57 = getelementptr inbounds %struct.qlcnic_dcb_app, %struct.qlcnic_dcb_app* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %59, i64 %61
  %63 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %62, i32 0, i32 1
  store i32 %58, i32* %63, align 4
  %64 = load %struct.qlcnic_dcb_app*, %struct.qlcnic_dcb_app** %8, align 8
  %65 = getelementptr inbounds %struct.qlcnic_dcb_app, %struct.qlcnic_dcb_app* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %67, i64 %70
  %72 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %71, i32 0, i32 0
  store i32 %66, i32* %72, align 4
  br label %73

73:                                               ; preds = %47, %46
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %31

76:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %20
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
