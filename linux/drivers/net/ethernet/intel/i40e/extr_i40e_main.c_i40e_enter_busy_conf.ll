; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_enter_busy_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_enter_busy_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }

@__I40E_CONFIG_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*)* @i40e_enter_busy_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_enter_busy_conf(%struct.i40e_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  %6 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %7 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %6, i32 0, i32 0
  %8 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  store %struct.i40e_pf* %8, %struct.i40e_pf** %4, align 8
  store i32 50, i32* %5, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* @__I40E_CONFIG_BUSY, align 4
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @test_and_set_bit(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %27

24:                                               ; preds = %16
  %25 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %9

26:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %21
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
