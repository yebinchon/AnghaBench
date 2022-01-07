; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_an_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.xgbe_prv_data.0*)* }
%struct.xgbe_prv_data.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_an_restart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_an_restart(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %3 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %4 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %6, align 8
  %8 = icmp ne i32 (%struct.xgbe_prv_data.0*)* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %11 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %13, align 8
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %16 = bitcast %struct.xgbe_prv_data* %15 to %struct.xgbe_prv_data.0*
  %17 = call i32 %14(%struct.xgbe_prv_data.0* %16)
  br label %18

18:                                               ; preds = %9, %1
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %20 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %28 [
    i32 129, label %22
    i32 128, label %22
    i32 131, label %25
    i32 130, label %25
  ]

22:                                               ; preds = %18, %18
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %24 = call i32 @xgbe_an73_restart(%struct.xgbe_prv_data* %23)
  br label %29

25:                                               ; preds = %18, %18
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %27 = call i32 @xgbe_an37_restart(%struct.xgbe_prv_data* %26)
  br label %29

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %25, %22
  ret void
}

declare dso_local i32 @xgbe_an73_restart(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_an37_restart(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
