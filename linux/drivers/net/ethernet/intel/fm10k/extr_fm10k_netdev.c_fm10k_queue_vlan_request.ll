; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_queue_vlan_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_queue_vlan_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, i32 }
%struct.fm10k_macvlan_request = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FM10K_VLAN_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_queue_vlan_request(%struct.fm10k_intfc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm10k_intfc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fm10k_macvlan_request*, align 8
  %11 = alloca i64, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @GFP_ATOMIC, align 4
  %13 = call %struct.fm10k_macvlan_request* @kzalloc(i32 20, i32 %12)
  store %struct.fm10k_macvlan_request* %13, %struct.fm10k_macvlan_request** %10, align 8
  %14 = load %struct.fm10k_macvlan_request*, %struct.fm10k_macvlan_request** %10, align 8
  %15 = icmp ne %struct.fm10k_macvlan_request* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %49

19:                                               ; preds = %4
  %20 = load i32, i32* @FM10K_VLAN_REQUEST, align 4
  %21 = load %struct.fm10k_macvlan_request*, %struct.fm10k_macvlan_request** %10, align 8
  %22 = getelementptr inbounds %struct.fm10k_macvlan_request, %struct.fm10k_macvlan_request* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.fm10k_macvlan_request*, %struct.fm10k_macvlan_request** %10, align 8
  %25 = getelementptr inbounds %struct.fm10k_macvlan_request, %struct.fm10k_macvlan_request* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.fm10k_macvlan_request*, %struct.fm10k_macvlan_request** %10, align 8
  %29 = getelementptr inbounds %struct.fm10k_macvlan_request, %struct.fm10k_macvlan_request* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.fm10k_macvlan_request*, %struct.fm10k_macvlan_request** %10, align 8
  %33 = getelementptr inbounds %struct.fm10k_macvlan_request, %struct.fm10k_macvlan_request* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %35 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %34, i32 0, i32 0
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.fm10k_macvlan_request*, %struct.fm10k_macvlan_request** %10, align 8
  %39 = getelementptr inbounds %struct.fm10k_macvlan_request, %struct.fm10k_macvlan_request* %38, i32 0, i32 1
  %40 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %41 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %40, i32 0, i32 1
  %42 = call i32 @list_add_tail(i32* %39, i32* %41)
  %43 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %44 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %43, i32 0, i32 0
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %6, align 8
  %48 = call i32 @fm10k_macvlan_schedule(%struct.fm10k_intfc* %47)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %19, %16
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local %struct.fm10k_macvlan_request* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @fm10k_macvlan_schedule(%struct.fm10k_intfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
