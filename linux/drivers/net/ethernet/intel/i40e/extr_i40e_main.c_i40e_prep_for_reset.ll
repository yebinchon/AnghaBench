; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_prep_for_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_prep_for_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i64, %struct.TYPE_6__*, %struct.i40e_hw, %struct.TYPE_4__**, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@__I40E_RESET_INTR_RECEIVED = common dso_local global i32 0, align 4
@__I40E_RESET_RECOVERY_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Tearing down internal switch for reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"shutdown_lan_hmc failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*, i32)* @i40e_prep_for_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_prep_for_reset(%struct.i40e_pf* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %8, i32 0, i32 2
  store %struct.i40e_hw* %9, %struct.i40e_hw** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load i32, i32* @__I40E_RESET_INTR_RECEIVED, align 4
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @clear_bit(i32 %10, i32 %13)
  %15 = load i32, i32* @__I40E_RESET_RECOVERY_PENDING, align 4
  %16 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @test_and_set_bit(i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %99

22:                                               ; preds = %2
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %24 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %23, i32 0, i32 2
  %25 = call i64 @i40e_check_asq_alive(%struct.i40e_hw* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %29 = call i32 @i40e_vc_notify_reset(%struct.i40e_pf* %28)
  br label %30

30:                                               ; preds = %27, %22
  %31 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %32 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %30
  %39 = call i32 (...) @rtnl_lock()
  br label %40

40:                                               ; preds = %38, %30
  %41 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %42 = call i32 @i40e_pf_quiesce_all_vsi(%struct.i40e_pf* %41)
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = call i32 (...) @rtnl_unlock()
  br label %47

47:                                               ; preds = %45, %40
  store i64 0, i64* %7, align 8
  br label %48

48:                                               ; preds = %71, %47
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %51 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %74

54:                                               ; preds = %48
  %55 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %56 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %55, i32 0, i32 3
  %57 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %56, align 8
  %58 = load i64, i64* %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %57, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = icmp ne %struct.TYPE_4__* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %64 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %63, i32 0, i32 3
  %65 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %65, i64 %66
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %62, %54
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %7, align 8
  br label %48

74:                                               ; preds = %48
  %75 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %76 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %75, i32 0, i32 2
  %77 = call i32 @i40e_shutdown_adminq(%struct.i40e_hw* %76)
  %78 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %79 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %74
  %84 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %85 = call i64 @i40e_shutdown_lan_hmc(%struct.i40e_hw* %84)
  store i64 %85, i64* %6, align 8
  %86 = load i64, i64* %6, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %90 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i64, i64* %6, align 8
  %94 = call i32 @dev_warn(i32* %92, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %93)
  br label %95

95:                                               ; preds = %88, %83
  br label %96

96:                                               ; preds = %95, %74
  %97 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %98 = call i32 @i40e_ptp_save_hw_time(%struct.i40e_pf* %97)
  br label %99

99:                                               ; preds = %96, %21
  ret void
}

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i64 @i40e_check_asq_alive(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_vc_notify_reset(%struct.i40e_pf*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @i40e_pf_quiesce_all_vsi(%struct.i40e_pf*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @i40e_shutdown_adminq(%struct.i40e_hw*) #1

declare dso_local i64 @i40e_shutdown_lan_hmc(%struct.i40e_hw*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64) #1

declare dso_local i32 @i40e_ptp_save_hw_time(%struct.i40e_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
