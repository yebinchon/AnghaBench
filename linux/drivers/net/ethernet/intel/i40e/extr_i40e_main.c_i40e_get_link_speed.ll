; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_get_link_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_get_link_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*)* @i40e_get_link_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_link_speed(%struct.i40e_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_pf*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  %5 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %6 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %5, i32 0, i32 0
  %7 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  store %struct.i40e_pf* %7, %struct.i40e_pf** %4, align 8
  %8 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %9 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %19 [
    i32 128, label %14
    i32 129, label %15
    i32 130, label %16
    i32 132, label %17
    i32 131, label %18
  ]

14:                                               ; preds = %1
  store i32 40000, i32* %2, align 4
  br label %22

15:                                               ; preds = %1
  store i32 25000, i32* %2, align 4
  br label %22

16:                                               ; preds = %1
  store i32 20000, i32* %2, align 4
  br label %22

17:                                               ; preds = %1
  store i32 10000, i32* %2, align 4
  br label %22

18:                                               ; preds = %1
  store i32 1000, i32* %2, align 4
  br label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %19, %18, %17, %16, %15, %14
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
