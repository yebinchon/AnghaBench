; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_rx.c_ef4_filter_is_mc_recipient.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_rx.c_ef4_filter_is_mc_recipient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_filter_spec = type { i32, i64, i32, i64, i32*, i32 }

@EF4_FILTER_FLAG_RX = common dso_local global i32 0, align 4
@EF4_FILTER_RX_DMAQ_ID_DROP = common dso_local global i64 0, align 8
@EF4_FILTER_MATCH_LOC_MAC = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_LOC_MAC_IG = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_ETHER_TYPE = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_LOC_HOST = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ef4_filter_is_mc_recipient(%struct.ef4_filter_spec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ef4_filter_spec*, align 8
  store %struct.ef4_filter_spec* %0, %struct.ef4_filter_spec** %3, align 8
  %4 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %5 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @EF4_FILTER_FLAG_RX, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %12 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @EF4_FILTER_RX_DMAQ_ID_DROP, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %78

17:                                               ; preds = %10
  %18 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %19 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @EF4_FILTER_MATCH_LOC_MAC, align 4
  %22 = load i32, i32* @EF4_FILTER_MATCH_LOC_MAC_IG, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %28 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @is_multicast_ether_addr(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %78

33:                                               ; preds = %26, %17
  %34 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %35 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @EF4_FILTER_MATCH_ETHER_TYPE, align 4
  %38 = load i32, i32* @EF4_FILTER_MATCH_LOC_HOST, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = load i32, i32* @EF4_FILTER_MATCH_ETHER_TYPE, align 4
  %42 = load i32, i32* @EF4_FILTER_MATCH_LOC_HOST, align 4
  %43 = or i32 %41, %42
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %77

45:                                               ; preds = %33
  %46 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %47 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @ETH_P_IP, align 4
  %50 = call i64 @htons(i32 %49)
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %45
  %53 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %54 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %53, i32 0, i32 4
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @ipv4_is_multicast(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %78

61:                                               ; preds = %52, %45
  %62 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %63 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* @ETH_P_IPV6, align 4
  %66 = call i64 @htons(i32 %65)
  %67 = icmp eq i64 %64, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %3, align 8
  %70 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 255
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 1, i32* %2, align 4
  br label %78

76:                                               ; preds = %68, %61
  br label %77

77:                                               ; preds = %76, %33
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %75, %60, %32, %16
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @ipv4_is_multicast(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
