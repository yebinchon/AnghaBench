; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_phyerr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wmi.c_ath10k_wmi_event_phyerr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.sk_buff = type { i32 }
%struct.wmi_phyerr_hdr_arg = type { i32, i32, i32, i32, i8* }
%struct.wmi_phyerr_ev_arg = type { i32, i32, i32 }

@phy_errors = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"failed to parse phyerr event hdr: %d\0A\00", align 1
@ATH10K_DBG_WMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"wmi event phyerr count %d tsf64 0x%llX\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to parse phyerr event (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"single event (%d) wrong buf len\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_wmi_event_phyerr(%struct.ath10k* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.wmi_phyerr_hdr_arg, align 8
  %6 = alloca %struct.wmi_phyerr_ev_arg, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %15 = bitcast %struct.wmi_phyerr_hdr_arg* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 24, i1 false)
  %16 = bitcast %struct.wmi_phyerr_ev_arg* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 12, i1 false)
  %17 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %18 = load i32, i32* @phy_errors, align 4
  %19 = call i32 @ATH10K_DFS_STAT_INC(%struct.ath10k* %17, i32 %18)
  %20 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = call i32 @ath10k_wmi_pull_phyerr_hdr(%struct.ath10k* %20, %struct.sk_buff* %21, %struct.wmi_phyerr_hdr_arg* %5)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @ath10k_warn(%struct.ath10k* %26, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %113

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.wmi_phyerr_hdr_arg, %struct.wmi_phyerr_hdr_arg* %5, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  %32 = getelementptr inbounds %struct.wmi_phyerr_hdr_arg, %struct.wmi_phyerr_hdr_arg* %5, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  %34 = getelementptr inbounds %struct.wmi_phyerr_hdr_arg, %struct.wmi_phyerr_hdr_arg* %5, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = shl i32 %36, 32
  store i32 %37, i32* %12, align 4
  %38 = getelementptr inbounds %struct.wmi_phyerr_hdr_arg, %struct.wmi_phyerr_hdr_arg* %5, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %12, align 4
  %42 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %43 = load i32, i32* @ATH10K_DBG_WMI, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 @ath10k_dbg(%struct.ath10k* %42, i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  %47 = getelementptr inbounds %struct.wmi_phyerr_hdr_arg, %struct.wmi_phyerr_hdr_arg* %5, i32 0, i32 4
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %110, %29
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %113

53:                                               ; preds = %49
  %54 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @ath10k_wmi_pull_phyerr(%struct.ath10k* %54, i8* %55, i32 %56, %struct.wmi_phyerr_ev_arg* %6)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @ath10k_warn(%struct.ath10k* %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %113

64:                                               ; preds = %53
  %65 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %6, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %13, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %13, align 4
  %69 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %6, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  %71 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %6, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %64
  %77 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @ath10k_warn(%struct.ath10k* %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %113

80:                                               ; preds = %64
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %13, align 4
  %83 = sub nsw i32 %82, %81
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %11, align 4
  switch i32 %84, label %100 [
    i32 129, label %85
    i32 128, label %89
    i32 130, label %93
  ]

85:                                               ; preds = %80
  %86 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @ath10k_wmi_event_dfs(%struct.ath10k* %86, %struct.wmi_phyerr_ev_arg* %6, i32 %87)
  br label %101

89:                                               ; preds = %80
  %90 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %91 = load i32, i32* %12, align 4
  %92 = call i32 @ath10k_wmi_event_spectral_scan(%struct.ath10k* %90, %struct.wmi_phyerr_ev_arg* %6, i32 %91)
  br label %101

93:                                               ; preds = %80
  %94 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %95 = load i32, i32* %12, align 4
  %96 = call i32 @ath10k_wmi_event_dfs(%struct.ath10k* %94, %struct.wmi_phyerr_ev_arg* %6, i32 %95)
  %97 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @ath10k_wmi_event_spectral_scan(%struct.ath10k* %97, %struct.wmi_phyerr_ev_arg* %6, i32 %98)
  br label %101

100:                                              ; preds = %80
  br label %101

101:                                              ; preds = %100, %93, %89, %85
  %102 = load i8*, i8** %7, align 8
  %103 = getelementptr inbounds %struct.wmi_phyerr_ev_arg, %struct.wmi_phyerr_ev_arg* %6, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr i8, i8* %102, i64 %105
  %107 = load i32, i32* %10, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr i8, i8* %106, i64 %108
  store i8* %109, i8** %7, align 8
  br label %110

110:                                              ; preds = %101
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %9, align 4
  br label %49

113:                                              ; preds = %25, %60, %76, %49
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ATH10K_DFS_STAT_INC(%struct.ath10k*, i32) #2

declare dso_local i32 @ath10k_wmi_pull_phyerr_hdr(%struct.ath10k*, %struct.sk_buff*, %struct.wmi_phyerr_hdr_arg*) #2

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #2

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32, i32) #2

declare dso_local i32 @ath10k_wmi_pull_phyerr(%struct.ath10k*, i8*, i32, %struct.wmi_phyerr_ev_arg*) #2

declare dso_local i32 @ath10k_wmi_event_dfs(%struct.ath10k*, %struct.wmi_phyerr_ev_arg*, i32) #2

declare dso_local i32 @ath10k_wmi_event_spectral_scan(%struct.ath10k*, %struct.wmi_phyerr_ev_arg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
