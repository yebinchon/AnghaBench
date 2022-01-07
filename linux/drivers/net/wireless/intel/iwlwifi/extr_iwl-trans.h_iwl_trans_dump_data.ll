; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-trans.h_iwl_trans_dump_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-trans.h_iwl_trans_dump_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans_dump_data = type { i32 }
%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iwl_trans_dump_data* (%struct.iwl_trans*, i32)* @iwl_trans_dump_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iwl_trans_dump_data* @iwl_trans_dump_data(%struct.iwl_trans* %0, i32 %1) #0 {
  %3 = alloca %struct.iwl_trans_dump_data*, align 8
  %4 = alloca %struct.iwl_trans*, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %7 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast {}** %9 to %struct.iwl_trans_dump_data* (%struct.iwl_trans*, i32)**
  %11 = load %struct.iwl_trans_dump_data* (%struct.iwl_trans*, i32)*, %struct.iwl_trans_dump_data* (%struct.iwl_trans*, i32)** %10, align 8
  %12 = icmp ne %struct.iwl_trans_dump_data* (%struct.iwl_trans*, i32)* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.iwl_trans_dump_data* null, %struct.iwl_trans_dump_data** %3, align 8
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to %struct.iwl_trans_dump_data* (%struct.iwl_trans*, i32)**
  %20 = load %struct.iwl_trans_dump_data* (%struct.iwl_trans*, i32)*, %struct.iwl_trans_dump_data* (%struct.iwl_trans*, i32)** %19, align 8
  %21 = load %struct.iwl_trans*, %struct.iwl_trans** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.iwl_trans_dump_data* %20(%struct.iwl_trans* %21, i32 %22)
  store %struct.iwl_trans_dump_data* %23, %struct.iwl_trans_dump_data** %3, align 8
  br label %24

24:                                               ; preds = %14, %13
  %25 = load %struct.iwl_trans_dump_data*, %struct.iwl_trans_dump_data** %3, align 8
  ret %struct.iwl_trans_dump_data* %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
