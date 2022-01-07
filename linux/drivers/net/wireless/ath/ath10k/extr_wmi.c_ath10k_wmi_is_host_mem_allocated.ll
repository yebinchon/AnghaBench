; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_is_host_mem_allocated.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_is_host_mem_allocated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wlan_host_mem_req = type { i32, i32, i32, i32 }

@NUM_UNITS_IS_NUM_ACTIVE_PEERS = common dso_local global i32 0, align 4
@NUM_UNITS_IS_NUM_PEERS = common dso_local global i32 0, align 4
@NUM_UNITS_IS_NUM_VDEVS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.wlan_host_mem_req**, i32)* @ath10k_wmi_is_host_mem_allocated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_wmi_is_host_mem_allocated(%struct.ath10k* %0, %struct.wlan_host_mem_req** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.wlan_host_mem_req**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.wlan_host_mem_req** %1, %struct.wlan_host_mem_req*** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %154

23:                                               ; preds = %3
  store i32 0, i32* %13, align 4
  br label %24

24:                                               ; preds = %150, %23
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %153

28:                                               ; preds = %24
  %29 = load %struct.wlan_host_mem_req**, %struct.wlan_host_mem_req*** %6, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %29, i64 %31
  %33 = load %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %32, align 8
  %34 = getelementptr inbounds %struct.wlan_host_mem_req, %struct.wlan_host_mem_req* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @__le32_to_cpu(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load %struct.wlan_host_mem_req**, %struct.wlan_host_mem_req*** %6, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %37, i64 %39
  %41 = load %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %40, align 8
  %42 = getelementptr inbounds %struct.wlan_host_mem_req, %struct.wlan_host_mem_req* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @__le32_to_cpu(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.wlan_host_mem_req**, %struct.wlan_host_mem_req*** %6, align 8
  %46 = load i32, i32* %13, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %45, i64 %47
  %49 = load %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %48, align 8
  %50 = getelementptr inbounds %struct.wlan_host_mem_req, %struct.wlan_host_mem_req* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @__le32_to_cpu(i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load %struct.wlan_host_mem_req**, %struct.wlan_host_mem_req*** %6, align 8
  %54 = load i32, i32* %13, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %53, i64 %55
  %57 = load %struct.wlan_host_mem_req*, %struct.wlan_host_mem_req** %56, align 8
  %58 = getelementptr inbounds %struct.wlan_host_mem_req, %struct.wlan_host_mem_req* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @__le32_to_cpu(i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @NUM_UNITS_IS_NUM_ACTIVE_PEERS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %28
  %66 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %67 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %72 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %80

75:                                               ; preds = %65
  %76 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %77 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %75, %70
  br label %103

81:                                               ; preds = %28
  %82 = load i32, i32* %11, align 4
  %83 = load i32, i32* @NUM_UNITS_IS_NUM_PEERS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %88 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %9, align 4
  br label %102

91:                                               ; preds = %81
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @NUM_UNITS_IS_NUM_VDEVS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %98 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %96, %91
  br label %102

102:                                              ; preds = %101, %86
  br label %103

103:                                              ; preds = %102, %80
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %104

104:                                              ; preds = %142, %103
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %107 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %105, %109
  br i1 %110, label %111, label %145

111:                                              ; preds = %104
  %112 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %113 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %141

123:                                              ; preds = %111
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @round_up(i32 %125, i32 4)
  %127 = mul nsw i32 %124, %126
  store i32 %127, i32* %12, align 4
  %128 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %129 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i32, i32* %14, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %123
  store i32 1, i32* %15, align 4
  br label %145

140:                                              ; preds = %123
  br label %141

141:                                              ; preds = %140, %111
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %14, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %14, align 4
  br label %104

145:                                              ; preds = %139, %104
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %149, label %148

148:                                              ; preds = %145
  store i32 0, i32* %4, align 4
  br label %154

149:                                              ; preds = %145
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %24

153:                                              ; preds = %24
  store i32 1, i32* %4, align 4
  br label %154

154:                                              ; preds = %153, %148, %22
  %155 = load i32, i32* %4, align 4
  ret i32 %155
}

declare dso_local i32 @__le32_to_cpu(i32) #1

declare dso_local i32 @round_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
