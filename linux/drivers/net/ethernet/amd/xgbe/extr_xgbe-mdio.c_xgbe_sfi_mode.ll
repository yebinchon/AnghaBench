; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_sfi_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_sfi_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_6__, %struct.TYPE_4__, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.xgbe_prv_data.0*, i32)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.TYPE_4__ = type { i32 (%struct.xgbe_prv_data.1*, i32)* }
%struct.xgbe_prv_data.1 = type opaque

@SPEED_10000 = common dso_local global i32 0, align 4
@XGBE_MODE_SFI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_sfi_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_sfi_mode(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %3 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %4 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  call void @xgbe_kr_mode(%struct.xgbe_prv_data* %8)
  br label %27

9:                                                ; preds = %1
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %11 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32 (%struct.xgbe_prv_data.1*, i32)*, i32 (%struct.xgbe_prv_data.1*, i32)** %12, align 8
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %15 = bitcast %struct.xgbe_prv_data* %14 to %struct.xgbe_prv_data.1*
  %16 = load i32, i32* @SPEED_10000, align 4
  %17 = call i32 %13(%struct.xgbe_prv_data.1* %15, i32 %16)
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %19 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32 (%struct.xgbe_prv_data.0*, i32)*, i32 (%struct.xgbe_prv_data.0*, i32)** %21, align 8
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %24 = bitcast %struct.xgbe_prv_data* %23 to %struct.xgbe_prv_data.0*
  %25 = load i32, i32* @XGBE_MODE_SFI, align 4
  %26 = call i32 %22(%struct.xgbe_prv_data.0* %24, i32 %25)
  br label %27

27:                                               ; preds = %9, %7
  ret void
}

declare dso_local void @xgbe_kr_mode(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
