; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ptp.c_i40e_ptp_set_increment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ptp.c_i40e_ptp_set_increment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, %struct.TYPE_4__*, %struct.i40e_hw }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.i40e_link_status }
%struct.i40e_link_status = type { i32 }

@I40E_PTP_10GB_INCVAL_MULT = common dso_local global i32 0, align 4
@I40E_PTP_1GB_INCVAL_MULT = common dso_local global i32 0, align 4
@i40e_ptp_set_increment.warn_once = internal global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"1588 functionality is not supported at 100 Mbps. Stopping the PHC.\0A\00", align 1
@I40E_PTP_40GB_INCVAL = common dso_local global i32 0, align 4
@I40E_PRTTSYN_INC_L = common dso_local global i32 0, align 4
@I40E_PRTTSYN_INC_H = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_ptp_set_increment(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  %3 = alloca %struct.i40e_link_status*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %7 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %8 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %7, i32 0, i32 2
  store %struct.i40e_hw* %8, %struct.i40e_hw** %4, align 8
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store %struct.i40e_link_status* %11, %struct.i40e_link_status** %3, align 8
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %12, i32 0, i32 2
  %14 = call i32 @i40e_aq_get_link_info(%struct.i40e_hw* %13, i32 1, i32* null, i32* null)
  %15 = load %struct.i40e_link_status*, %struct.i40e_link_status** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_link_status, %struct.i40e_link_status* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %35 [
    i32 130, label %18
    i32 129, label %20
    i32 131, label %22
    i32 128, label %34
  ]

18:                                               ; preds = %1
  %19 = load i32, i32* @I40E_PTP_10GB_INCVAL_MULT, align 4
  store i32 %19, i32* %6, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load i32, i32* @I40E_PTP_1GB_INCVAL_MULT, align 4
  store i32 %21, i32* %6, align 4
  br label %36

22:                                               ; preds = %1
  %23 = load i32, i32* @i40e_ptp_set_increment.warn_once, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %27 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @dev_warn(i32* %29, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @i40e_ptp_set_increment.warn_once, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* @i40e_ptp_set_increment.warn_once, align 4
  br label %33

33:                                               ; preds = %25, %22
  store i32 0, i32* %6, align 4
  br label %36

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %1, %34
  store i32 1, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %33, %20, %18
  %37 = load i32, i32* @I40E_PTP_40GB_INCVAL, align 4
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 %37, %38
  store i32 %39, i32* %5, align 4
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %41 = load i32, i32* @I40E_PRTTSYN_INC_L, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @wr32(%struct.i40e_hw* %40, i32 %41, i32 %42)
  %44 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %45 = load i32, i32* @I40E_PRTTSYN_INC_H, align 4
  %46 = load i32, i32* %5, align 4
  %47 = ashr i32 %46, 32
  %48 = call i32 @wr32(%struct.i40e_hw* %44, i32 %45, i32 %47)
  %49 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %50 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @WRITE_ONCE(i32 %51, i32 %52)
  %54 = call i32 (...) @smp_mb()
  ret void
}

declare dso_local i32 @i40e_aq_get_link_info(%struct.i40e_hw*, i32, i32*, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @smp_mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
