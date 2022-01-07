; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-trans.h_iwl_trans_op_mode_leave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-trans.h_iwl_trans_op_mode_leave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iwl_trans*)* }

@IWL_TRANS_NO_FW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_trans_op_mode_leave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_trans_op_mode_leave(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %3 = call i32 (...) @might_sleep()
  %4 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %5 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %4, i32 0, i32 2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (%struct.iwl_trans*)*, i32 (%struct.iwl_trans*)** %7, align 8
  %9 = icmp ne i32 (%struct.iwl_trans*)* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %12 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.iwl_trans*)*, i32 (%struct.iwl_trans*)** %14, align 8
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %17 = call i32 %15(%struct.iwl_trans* %16)
  br label %18

18:                                               ; preds = %10, %1
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %20 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @IWL_TRANS_NO_FW, align 4
  %22 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %23 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  ret void
}

declare dso_local i32 @might_sleep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
