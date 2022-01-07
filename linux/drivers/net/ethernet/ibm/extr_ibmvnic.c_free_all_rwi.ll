; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_free_all_rwi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_free_all_rwi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32 }
%struct.ibmvnic_rwi = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvnic_adapter*)* @free_all_rwi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_all_rwi(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca %struct.ibmvnic_adapter*, align 8
  %3 = alloca %struct.ibmvnic_rwi*, align 8
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %2, align 8
  %4 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %5 = call %struct.ibmvnic_rwi* @get_next_rwi(%struct.ibmvnic_adapter* %4)
  store %struct.ibmvnic_rwi* %5, %struct.ibmvnic_rwi** %3, align 8
  br label %6

6:                                                ; preds = %9, %1
  %7 = load %struct.ibmvnic_rwi*, %struct.ibmvnic_rwi** %3, align 8
  %8 = icmp ne %struct.ibmvnic_rwi* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = load %struct.ibmvnic_rwi*, %struct.ibmvnic_rwi** %3, align 8
  %11 = call i32 @kfree(%struct.ibmvnic_rwi* %10)
  %12 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %13 = call %struct.ibmvnic_rwi* @get_next_rwi(%struct.ibmvnic_adapter* %12)
  store %struct.ibmvnic_rwi* %13, %struct.ibmvnic_rwi** %3, align 8
  br label %6

14:                                               ; preds = %6
  ret void
}

declare dso_local %struct.ibmvnic_rwi* @get_next_rwi(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @kfree(%struct.ibmvnic_rwi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
