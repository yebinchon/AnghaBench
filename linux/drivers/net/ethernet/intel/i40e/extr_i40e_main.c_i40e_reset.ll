; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, %struct.TYPE_2__*, %struct.i40e_hw }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_hw = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"PF reset failed, %d\0A\00", align 1
@__I40E_RESET_FAILED = common dso_local global i32 0, align 4
@__I40E_RESET_RECOVERY_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*)* @i40e_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_reset(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %5 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %6 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %5, i32 0, i32 3
  store %struct.i40e_hw* %6, %struct.i40e_hw** %3, align 8
  %7 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %8 = call i32 @i40e_pf_reset(%struct.i40e_hw* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %1
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @dev_info(i32* %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @__I40E_RESET_FAILED, align 4
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %20 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @set_bit(i32 %18, i32 %21)
  %23 = load i32, i32* @__I40E_RESET_RECOVERY_PENDING, align 4
  %24 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %25 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @clear_bit(i32 %23, i32 %26)
  br label %33

28:                                               ; preds = %1
  %29 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %30 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  br label %33

33:                                               ; preds = %28, %11
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @i40e_pf_reset(%struct.i40e_hw*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
