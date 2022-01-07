; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_add_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_add_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_mac_filter = type { i32, i32, i32, i32 }
%struct.iavf_adapter = type { i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_ADD_MAC_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iavf_mac_filter* (%struct.iavf_adapter*, i32*)* @iavf_add_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iavf_mac_filter* @iavf_add_filter(%struct.iavf_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.iavf_mac_filter*, align 8
  %4 = alloca %struct.iavf_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.iavf_mac_filter*, align 8
  store %struct.iavf_adapter* %0, %struct.iavf_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store %struct.iavf_mac_filter* null, %struct.iavf_mac_filter** %3, align 8
  br label %46

10:                                               ; preds = %2
  %11 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call %struct.iavf_mac_filter* @iavf_find_filter(%struct.iavf_adapter* %11, i32* %12)
  store %struct.iavf_mac_filter* %13, %struct.iavf_mac_filter** %6, align 8
  %14 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %6, align 8
  %15 = icmp ne %struct.iavf_mac_filter* %14, null
  br i1 %15, label %41, label %16

16:                                               ; preds = %10
  %17 = load i32, i32* @GFP_ATOMIC, align 4
  %18 = call %struct.iavf_mac_filter* @kzalloc(i32 16, i32 %17)
  store %struct.iavf_mac_filter* %18, %struct.iavf_mac_filter** %6, align 8
  %19 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %6, align 8
  %20 = icmp ne %struct.iavf_mac_filter* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %6, align 8
  store %struct.iavf_mac_filter* %22, %struct.iavf_mac_filter** %3, align 8
  br label %46

23:                                               ; preds = %16
  %24 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %6, align 8
  %25 = getelementptr inbounds %struct.iavf_mac_filter, %struct.iavf_mac_filter* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @ether_addr_copy(i32 %26, i32* %27)
  %29 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %6, align 8
  %30 = getelementptr inbounds %struct.iavf_mac_filter, %struct.iavf_mac_filter* %29, i32 0, i32 2
  %31 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %32 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %31, i32 0, i32 1
  %33 = call i32 @list_add_tail(i32* %30, i32* %32)
  %34 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %6, align 8
  %35 = getelementptr inbounds %struct.iavf_mac_filter, %struct.iavf_mac_filter* %34, i32 0, i32 0
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* @IAVF_FLAG_AQ_ADD_MAC_FILTER, align 4
  %37 = load %struct.iavf_adapter*, %struct.iavf_adapter** %4, align 8
  %38 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %44

41:                                               ; preds = %10
  %42 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %6, align 8
  %43 = getelementptr inbounds %struct.iavf_mac_filter, %struct.iavf_mac_filter* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %23
  %45 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %6, align 8
  store %struct.iavf_mac_filter* %45, %struct.iavf_mac_filter** %3, align 8
  br label %46

46:                                               ; preds = %44, %21, %9
  %47 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %3, align 8
  ret %struct.iavf_mac_filter* %47
}

declare dso_local %struct.iavf_mac_filter* @iavf_find_filter(%struct.iavf_adapter*, i32*) #1

declare dso_local %struct.iavf_mac_filter* @kzalloc(i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
