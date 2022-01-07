; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_quiesce_vsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_quiesce_vsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_5__*)* }

@__I40E_VSI_DOWN = common dso_local global i32 0, align 4
@__I40E_VSI_NEEDS_RESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*)* @i40e_quiesce_vsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_quiesce_vsi(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %3 = load i32, i32* @__I40E_VSI_DOWN, align 4
  %4 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %5 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @test_bit(i32 %3, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %41

10:                                               ; preds = %1
  %11 = load i32, i32* @__I40E_VSI_NEEDS_RESTART, align 4
  %12 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @set_bit(i32 %11, i32 %14)
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %17 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %10
  %21 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %22 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = call i64 @netif_running(%struct.TYPE_5__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %20
  %27 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %28 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** %32, align 8
  %34 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %35 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = call i32 %33(%struct.TYPE_5__* %36)
  br label %41

38:                                               ; preds = %20, %10
  %39 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %40 = call i32 @i40e_vsi_close(%struct.i40e_vsi* %39)
  br label %41

41:                                               ; preds = %9, %38, %26
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @netif_running(%struct.TYPE_5__*) #1

declare dso_local i32 @i40e_vsi_close(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
