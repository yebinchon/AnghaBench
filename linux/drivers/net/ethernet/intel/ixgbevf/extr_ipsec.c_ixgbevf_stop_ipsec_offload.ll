; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ipsec.c_ixgbevf_stop_ipsec_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ipsec.c_ixgbevf_stop_ipsec_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { %struct.ixgbevf_ipsec* }
%struct.ixgbevf_ipsec = type { %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbevf_stop_ipsec_offload(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.ixgbevf_ipsec*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %4 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %4, i32 0, i32 0
  %6 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %5, align 8
  store %struct.ixgbevf_ipsec* %6, %struct.ixgbevf_ipsec** %3, align 8
  %7 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %7, i32 0, i32 0
  store %struct.ixgbevf_ipsec* null, %struct.ixgbevf_ipsec** %8, align 8
  %9 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %3, align 8
  %10 = icmp ne %struct.ixgbevf_ipsec* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_ipsec, %struct.ixgbevf_ipsec* %12, i32 0, i32 1
  %14 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %13, align 8
  %15 = call i32 @kfree(%struct.ixgbevf_ipsec* %14)
  %16 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %3, align 8
  %17 = getelementptr inbounds %struct.ixgbevf_ipsec, %struct.ixgbevf_ipsec* %16, i32 0, i32 0
  %18 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %17, align 8
  %19 = call i32 @kfree(%struct.ixgbevf_ipsec* %18)
  %20 = load %struct.ixgbevf_ipsec*, %struct.ixgbevf_ipsec** %3, align 8
  %21 = call i32 @kfree(%struct.ixgbevf_ipsec* %20)
  br label %22

22:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @kfree(%struct.ixgbevf_ipsec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
