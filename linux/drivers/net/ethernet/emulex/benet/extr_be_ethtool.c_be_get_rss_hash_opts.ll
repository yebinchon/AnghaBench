; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_rss_hash_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_rss_hash_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@RSS_ENABLE_IPV4 = common dso_local global i32 0, align 4
@RXH_IP_DST = common dso_local global i32 0, align 4
@RXH_IP_SRC = common dso_local global i32 0, align 4
@RSS_ENABLE_TCP_IPV4 = common dso_local global i32 0, align 4
@RXH_L4_B_0_1 = common dso_local global i32 0, align 4
@RXH_L4_B_2_3 = common dso_local global i32 0, align 4
@RSS_ENABLE_UDP_IPV4 = common dso_local global i32 0, align 4
@RSS_ENABLE_IPV6 = common dso_local global i32 0, align 4
@RSS_ENABLE_TCP_IPV6 = common dso_local global i32 0, align 4
@RSS_ENABLE_UDP_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, i32)* @be_get_rss_hash_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_rss_hash_opts(%struct.be_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %123 [
    i32 131, label %7
    i32 129, label %36
    i32 130, label %65
    i32 128, label %94
  ]

7:                                                ; preds = %2
  %8 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RSS_ENABLE_IPV4, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %7
  %16 = load i32, i32* @RXH_IP_DST, align 4
  %17 = load i32, i32* @RXH_IP_SRC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %15, %7
  %22 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RSS_ENABLE_TCP_IPV4, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i32, i32* @RXH_L4_B_0_1, align 4
  %31 = load i32, i32* @RXH_L4_B_2_3, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %29, %21
  br label %123

36:                                               ; preds = %2
  %37 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @RSS_ENABLE_IPV4, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* @RXH_IP_DST, align 4
  %46 = load i32, i32* @RXH_IP_SRC, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %5, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %44, %36
  %51 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RSS_ENABLE_UDP_IPV4, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load i32, i32* @RXH_L4_B_0_1, align 4
  %60 = load i32, i32* @RXH_L4_B_2_3, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %58, %50
  br label %123

65:                                               ; preds = %2
  %66 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %67 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @RSS_ENABLE_IPV6, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %65
  %74 = load i32, i32* @RXH_IP_DST, align 4
  %75 = load i32, i32* @RXH_IP_SRC, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %73, %65
  %80 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @RSS_ENABLE_TCP_IPV6, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %79
  %88 = load i32, i32* @RXH_L4_B_0_1, align 4
  %89 = load i32, i32* @RXH_L4_B_2_3, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* %5, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %87, %79
  br label %123

94:                                               ; preds = %2
  %95 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @RSS_ENABLE_IPV6, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %94
  %103 = load i32, i32* @RXH_IP_DST, align 4
  %104 = load i32, i32* @RXH_IP_SRC, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %5, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %102, %94
  %109 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @RSS_ENABLE_UDP_IPV6, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load i32, i32* @RXH_L4_B_0_1, align 4
  %118 = load i32, i32* @RXH_L4_B_2_3, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* %5, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %5, align 4
  br label %122

122:                                              ; preds = %116, %108
  br label %123

123:                                              ; preds = %2, %122, %93, %64, %35
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
