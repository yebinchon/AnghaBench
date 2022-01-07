; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bnx2 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@BNX2_FLAG_BROKEN_STATS = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@BNX2_HC_STATS_TICKS_HC_STAT_TICKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @bnx2_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.bnx2*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.bnx2* @netdev_priv(%struct.net_device* %6)
  store %struct.bnx2* %7, %struct.bnx2** %5, align 8
  %8 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %8, i32 0, i32 8
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = ptrtoint i8* %11 to i32
  %13 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %14 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %16 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 1023
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %21 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %20, i32 0, i32 0
  store i32 1023, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %24 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %29 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %31 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %32, 255
  br i1 %33, label %34, label %37

34:                                               ; preds = %22
  %35 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %36 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %35, i32 0, i32 1
  store i32 255, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %22
  %38 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %39 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %44 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  %45 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %46 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 1023
  br i1 %48, label %49, label %52

49:                                               ; preds = %37
  %50 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %51 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %50, i32 0, i32 2
  store i32 1023, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %37
  %53 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %54 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %59 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %61 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 255
  br i1 %63, label %64, label %67

64:                                               ; preds = %52
  %65 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %66 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %65, i32 0, i32 3
  store i32 255, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %52
  %68 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %69 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %68, i32 0, i32 4
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %74 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %76 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 1023
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %81 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %80, i32 0, i32 4
  store i32 1023, i32* %81, align 4
  br label %82

82:                                               ; preds = %79, %67
  %83 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %84 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = inttoptr i64 %85 to i8*
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %89 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %91 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = icmp sgt i32 %92, 255
  br i1 %93, label %94, label %97

94:                                               ; preds = %82
  %95 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %96 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %95, i32 0, i32 5
  store i32 255, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %82
  %98 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %99 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  %102 = ptrtoint i8* %101 to i32
  %103 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %104 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %103, i32 0, i32 6
  store i32 %102, i32* %104, align 4
  %105 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %106 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %105, i32 0, i32 6
  %107 = load i32, i32* %106, align 4
  %108 = icmp sgt i32 %107, 1023
  br i1 %108, label %109, label %112

109:                                              ; preds = %97
  %110 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %111 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %110, i32 0, i32 6
  store i32 1023, i32* %111, align 4
  br label %112

112:                                              ; preds = %109, %97
  %113 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %114 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %119 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %118, i32 0, i32 7
  store i32 %117, i32* %119, align 4
  %120 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %121 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %120, i32 0, i32 7
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %122, 255
  br i1 %123, label %124, label %127

124:                                              ; preds = %112
  %125 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %126 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %125, i32 0, i32 7
  store i32 255, i32* %126, align 4
  br label %127

127:                                              ; preds = %124, %112
  %128 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %129 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %132 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %131, i32 0, i32 10
  store i32 %130, i32* %132, align 4
  %133 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %134 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @BNX2_FLAG_BROKEN_STATS, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %155

139:                                              ; preds = %127
  %140 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %141 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %146 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %145, i32 0, i32 10
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @USEC_PER_SEC, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %144
  %151 = load i32, i32* @USEC_PER_SEC, align 4
  %152 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %153 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %152, i32 0, i32 10
  store i32 %151, i32* %153, align 4
  br label %154

154:                                              ; preds = %150, %144, %139
  br label %155

155:                                              ; preds = %154, %127
  %156 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %157 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %156, i32 0, i32 10
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @BNX2_HC_STATS_TICKS_HC_STAT_TICKS, align 4
  %160 = icmp sgt i32 %158, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %155
  %162 = load i32, i32* @BNX2_HC_STATS_TICKS_HC_STAT_TICKS, align 4
  %163 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %164 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %163, i32 0, i32 10
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %161, %155
  %166 = load i32, i32* @BNX2_HC_STATS_TICKS_HC_STAT_TICKS, align 4
  %167 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %168 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %167, i32 0, i32 10
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, %166
  store i32 %170, i32* %168, align 4
  %171 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %172 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %171, i32 0, i32 9
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @netif_running(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %183

176:                                              ; preds = %165
  %177 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %178 = call i32 @bnx2_netif_stop(%struct.bnx2* %177, i32 1)
  %179 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %180 = call i32 @bnx2_init_nic(%struct.bnx2* %179, i32 0)
  %181 = load %struct.bnx2*, %struct.bnx2** %5, align 8
  %182 = call i32 @bnx2_netif_start(%struct.bnx2* %181, i32 1)
  br label %183

183:                                              ; preds = %176, %165
  ret i32 0
}

declare dso_local %struct.bnx2* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @bnx2_netif_stop(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_init_nic(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_netif_start(%struct.bnx2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
