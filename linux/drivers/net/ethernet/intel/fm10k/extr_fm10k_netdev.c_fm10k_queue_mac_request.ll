; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_queue_mac_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_queue_mac_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, i32 }
%struct.fm10k_macvlan_request = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FM10K_MC_MAC_REQUEST = common dso_local global i32 0, align 4
@FM10K_UC_MAC_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_queue_mac_request(%struct.fm10k_intfc* %0, i8* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fm10k_intfc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fm10k_macvlan_request*, align 8
  %13 = alloca i64, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.fm10k_macvlan_request* @kzalloc(i32 40, i32 %14)
  store %struct.fm10k_macvlan_request* %15, %struct.fm10k_macvlan_request** %12, align 8
  %16 = load %struct.fm10k_macvlan_request*, %struct.fm10k_macvlan_request** %12, align 8
  %17 = icmp ne %struct.fm10k_macvlan_request* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %5
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %66

21:                                               ; preds = %5
  %22 = load i8*, i8** %9, align 8
  %23 = call i64 @is_multicast_ether_addr(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @FM10K_MC_MAC_REQUEST, align 4
  %27 = load %struct.fm10k_macvlan_request*, %struct.fm10k_macvlan_request** %12, align 8
  %28 = getelementptr inbounds %struct.fm10k_macvlan_request, %struct.fm10k_macvlan_request* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  br label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @FM10K_UC_MAC_REQUEST, align 4
  %31 = load %struct.fm10k_macvlan_request*, %struct.fm10k_macvlan_request** %12, align 8
  %32 = getelementptr inbounds %struct.fm10k_macvlan_request, %struct.fm10k_macvlan_request* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.fm10k_macvlan_request*, %struct.fm10k_macvlan_request** %12, align 8
  %35 = getelementptr inbounds %struct.fm10k_macvlan_request, %struct.fm10k_macvlan_request* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @ether_addr_copy(i32 %37, i8* %38)
  %40 = load i8*, i8** %8, align 8
  %41 = load %struct.fm10k_macvlan_request*, %struct.fm10k_macvlan_request** %12, align 8
  %42 = getelementptr inbounds %struct.fm10k_macvlan_request, %struct.fm10k_macvlan_request* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load %struct.fm10k_macvlan_request*, %struct.fm10k_macvlan_request** %12, align 8
  %46 = getelementptr inbounds %struct.fm10k_macvlan_request, %struct.fm10k_macvlan_request* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i8* %44, i8** %47, align 8
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.fm10k_macvlan_request*, %struct.fm10k_macvlan_request** %12, align 8
  %50 = getelementptr inbounds %struct.fm10k_macvlan_request, %struct.fm10k_macvlan_request* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %52 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %51, i32 0, i32 0
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.fm10k_macvlan_request*, %struct.fm10k_macvlan_request** %12, align 8
  %56 = getelementptr inbounds %struct.fm10k_macvlan_request, %struct.fm10k_macvlan_request* %55, i32 0, i32 1
  %57 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %58 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %57, i32 0, i32 1
  %59 = call i32 @list_add_tail(i32* %56, i32* %58)
  %60 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %61 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %60, i32 0, i32 0
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %7, align 8
  %65 = call i32 @fm10k_macvlan_schedule(%struct.fm10k_intfc* %64)
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %33, %18
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.fm10k_macvlan_request* @kzalloc(i32, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i32 @ether_addr_copy(i32, i8*) #1

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
