; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_enable_if_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_enable_if_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32*, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@BE_IF_FILT_FLAGS_BASIC = common dso_local global i32 0, align 4
@ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_enable_if_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_enable_if_filters(%struct.be_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  %6 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %7 = load i32, i32* @BE_IF_FILT_FLAGS_BASIC, align 4
  %8 = load i32, i32* @ON, align 4
  %9 = call i32 @be_cmd_rx_filter(%struct.be_adapter* %6, i32 %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %85

14:                                               ; preds = %1
  %15 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ether_addr_equal(i32 %17, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %74, label %25

25:                                               ; preds = %14
  store i32 -1, i32* %5, align 4
  %26 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @is_zero_ether_addr(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %31, %25
  %38 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %39 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be_dev_mac_add(%struct.be_adapter* %38, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %85

49:                                               ; preds = %37
  %50 = load i32, i32* %5, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %53, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %52
  %61 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @be_dev_mac_del(%struct.be_adapter* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %52, %49
  %65 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %68, i32 0, i32 2
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ether_addr_copy(i32 %67, i32 %72)
  br label %74

74:                                               ; preds = %64, %14
  %75 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %81 = call i32 @be_vid_config(%struct.be_adapter* %80)
  br label %82

82:                                               ; preds = %79, %74
  %83 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %84 = call i32 @__be_set_rx_mode(%struct.be_adapter* %83)
  store i32 0, i32* %2, align 4
  br label %85

85:                                               ; preds = %82, %47, %12
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @be_cmd_rx_filter(%struct.be_adapter*, i32, i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @be_dev_mac_add(%struct.be_adapter*, i32) #1

declare dso_local i32 @be_dev_mac_del(%struct.be_adapter*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @be_vid_config(%struct.be_adapter*) #1

declare dso_local i32 @__be_set_rx_mode(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
