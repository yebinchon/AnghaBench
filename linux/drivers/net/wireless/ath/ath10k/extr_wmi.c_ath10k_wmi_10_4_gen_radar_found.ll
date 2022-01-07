; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_gen_radar_found.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_10_4_gen_radar_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ath10k = type { i32 }
%struct.ath10k_radar_found_info = type { i32, i32, i32, i32, i32, i32 }
%struct.wmi_radar_found_info = type { i8*, i8*, i8*, i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"wmi radar found pri_min %d pri_max %d width_min %d width_max %d sidx_min %d sidx_max %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ath10k*, %struct.ath10k_radar_found_info*)* @ath10k_wmi_10_4_gen_radar_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ath10k_wmi_10_4_gen_radar_found(%struct.ath10k* %0, %struct.ath10k_radar_found_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ath10k_radar_found_info*, align 8
  %6 = alloca %struct.wmi_radar_found_info*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.ath10k_radar_found_info* %1, %struct.ath10k_radar_found_info** %5, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %9 = call %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k* %8, i32 48)
  store %struct.sk_buff* %9, %struct.sk_buff** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %11 = icmp ne %struct.sk_buff* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.sk_buff* @ERR_PTR(i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %3, align 8
  br label %79

16:                                               ; preds = %2
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.wmi_radar_found_info*
  store %struct.wmi_radar_found_info* %20, %struct.wmi_radar_found_info** %6, align 8
  %21 = load %struct.ath10k_radar_found_info*, %struct.ath10k_radar_found_info** %5, align 8
  %22 = getelementptr inbounds %struct.ath10k_radar_found_info, %struct.ath10k_radar_found_info* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @__cpu_to_le32(i32 %23)
  %25 = load %struct.wmi_radar_found_info*, %struct.wmi_radar_found_info** %6, align 8
  %26 = getelementptr inbounds %struct.wmi_radar_found_info, %struct.wmi_radar_found_info* %25, i32 0, i32 5
  store i8* %24, i8** %26, align 8
  %27 = load %struct.ath10k_radar_found_info*, %struct.ath10k_radar_found_info** %5, align 8
  %28 = getelementptr inbounds %struct.ath10k_radar_found_info, %struct.ath10k_radar_found_info* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @__cpu_to_le32(i32 %29)
  %31 = load %struct.wmi_radar_found_info*, %struct.wmi_radar_found_info** %6, align 8
  %32 = getelementptr inbounds %struct.wmi_radar_found_info, %struct.wmi_radar_found_info* %31, i32 0, i32 4
  store i8* %30, i8** %32, align 8
  %33 = load %struct.ath10k_radar_found_info*, %struct.ath10k_radar_found_info** %5, align 8
  %34 = getelementptr inbounds %struct.ath10k_radar_found_info, %struct.ath10k_radar_found_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @__cpu_to_le32(i32 %35)
  %37 = load %struct.wmi_radar_found_info*, %struct.wmi_radar_found_info** %6, align 8
  %38 = getelementptr inbounds %struct.wmi_radar_found_info, %struct.wmi_radar_found_info* %37, i32 0, i32 3
  store i8* %36, i8** %38, align 8
  %39 = load %struct.ath10k_radar_found_info*, %struct.ath10k_radar_found_info** %5, align 8
  %40 = getelementptr inbounds %struct.ath10k_radar_found_info, %struct.ath10k_radar_found_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i8* @__cpu_to_le32(i32 %41)
  %43 = load %struct.wmi_radar_found_info*, %struct.wmi_radar_found_info** %6, align 8
  %44 = getelementptr inbounds %struct.wmi_radar_found_info, %struct.wmi_radar_found_info* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ath10k_radar_found_info*, %struct.ath10k_radar_found_info** %5, align 8
  %46 = getelementptr inbounds %struct.ath10k_radar_found_info, %struct.ath10k_radar_found_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @__cpu_to_le32(i32 %47)
  %49 = load %struct.wmi_radar_found_info*, %struct.wmi_radar_found_info** %6, align 8
  %50 = getelementptr inbounds %struct.wmi_radar_found_info, %struct.wmi_radar_found_info* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  %51 = load %struct.ath10k_radar_found_info*, %struct.ath10k_radar_found_info** %5, align 8
  %52 = getelementptr inbounds %struct.ath10k_radar_found_info, %struct.ath10k_radar_found_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @__cpu_to_le32(i32 %53)
  %55 = load %struct.wmi_radar_found_info*, %struct.wmi_radar_found_info** %6, align 8
  %56 = getelementptr inbounds %struct.wmi_radar_found_info, %struct.wmi_radar_found_info* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %58 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %59 = load %struct.ath10k_radar_found_info*, %struct.ath10k_radar_found_info** %5, align 8
  %60 = getelementptr inbounds %struct.ath10k_radar_found_info, %struct.ath10k_radar_found_info* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ath10k_radar_found_info*, %struct.ath10k_radar_found_info** %5, align 8
  %63 = getelementptr inbounds %struct.ath10k_radar_found_info, %struct.ath10k_radar_found_info* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ath10k_radar_found_info*, %struct.ath10k_radar_found_info** %5, align 8
  %66 = getelementptr inbounds %struct.ath10k_radar_found_info, %struct.ath10k_radar_found_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ath10k_radar_found_info*, %struct.ath10k_radar_found_info** %5, align 8
  %69 = getelementptr inbounds %struct.ath10k_radar_found_info, %struct.ath10k_radar_found_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ath10k_radar_found_info*, %struct.ath10k_radar_found_info** %5, align 8
  %72 = getelementptr inbounds %struct.ath10k_radar_found_info, %struct.ath10k_radar_found_info* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.ath10k_radar_found_info*, %struct.ath10k_radar_found_info** %5, align 8
  %75 = getelementptr inbounds %struct.ath10k_radar_found_info, %struct.ath10k_radar_found_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ath10k_dbg(%struct.ath10k* %57, i32 %58, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %61, i32 %64, i32 %67, i32 %70, i32 %73, i32 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %78, %struct.sk_buff** %3, align 8
  br label %79

79:                                               ; preds = %16, %12
  %80 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %80
}

declare dso_local %struct.sk_buff* @ath10k_wmi_alloc_skb(%struct.ath10k*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i8* @__cpu_to_le32(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
