; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_reenable_fdir_atr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_reenable_fdir_atr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@__I40E_FD_ATR_AUTO_DISABLED = common dso_local global i32 0, align 4
@I40E_FILTER_PCTYPE_NONF_IPV4_TCP = common dso_local global i32 0, align 4
@I40E_L3_SRC_MASK = common dso_local global i32 0, align 4
@I40E_L3_DST_MASK = common dso_local global i32 0, align 4
@I40E_L4_SRC_MASK = common dso_local global i32 0, align 4
@I40E_L4_DST_MASK = common dso_local global i32 0, align 4
@I40E_FLAG_FD_ATR_ENABLED = common dso_local global i32 0, align 4
@I40E_DEBUG_FD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"ATR is being enabled since we have space in the table and there are no conflicting ntuple rules\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*)* @i40e_reenable_fdir_atr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_reenable_fdir_atr(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %3 = load i32, i32* @__I40E_FD_ATR_AUTO_DISABLED, align 4
  %4 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %5 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @test_and_clear_bit(i32 %3, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %1
  %10 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %11 = load i32, i32* @I40E_FILTER_PCTYPE_NONF_IPV4_TCP, align 4
  %12 = load i32, i32* @I40E_L3_SRC_MASK, align 4
  %13 = load i32, i32* @I40E_L3_DST_MASK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @I40E_L4_SRC_MASK, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @I40E_L4_DST_MASK, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @i40e_write_fd_input_set(%struct.i40e_pf* %10, i32 %11, i32 %18)
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @I40E_FLAG_FD_ATR_ENABLED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %9
  %27 = load i32, i32* @I40E_DEBUG_FD, align 4
  %28 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %29 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %27, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %26
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %36 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 @dev_info(i32* %38, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %34, %26, %9
  br label %41

41:                                               ; preds = %40, %1
  ret void
}

declare dso_local i64 @test_and_clear_bit(i32, i32) #1

declare dso_local i32 @i40e_write_fd_input_set(%struct.i40e_pf*, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
