; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_implicit_create_pstream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_wmi.c_ath6kl_wmi_implicit_create_pstream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmi = type { i64, i32, i32 }
%struct.sk_buff = type { i32*, i64 }
%struct.wmi_data_hdr = type { i32 }
%struct.ath6kl_llc_snap_hdr = type { i64 }
%struct.wmi_create_pstream_cmd = type { i32, i32, i32, i32 }

@IP_ETHERTYPE = common dso_local global i32 0, align 4
@WMM_AC_BE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WMI_DATA_HDR_META_SHIFT = common dso_local global i32 0, align 4
@WMI_DATA_HDR_META_MASK = common dso_local global i32 0, align 4
@WMI_MAX_TX_META_SZ = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i32 0, align 4
@WMI_VOICE_USER_PRIORITY = common dso_local global i32 0, align 4
@WMM_AC_VI = common dso_local global i64 0, align 8
@up_to_ac = common dso_local global i32* null, align 8
@WMI_IMPLICIT_PSTREAM_INACTIVITY_INT = common dso_local global i32 0, align 4
@WMI_IMPLICIT_PSTREAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_wmi_implicit_create_pstream(%struct.wmi* %0, i32 %1, %struct.sk_buff* %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wmi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.wmi_data_hdr*, align 8
  %15 = alloca %struct.ath6kl_llc_snap_hdr*, align 8
  %16 = alloca %struct.wmi_create_pstream_cmd, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store %struct.wmi* %0, %struct.wmi** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.sk_buff* %2, %struct.sk_buff** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %24 = load i32, i32* @IP_ETHERTYPE, align 4
  store i32 %24, i32* %19, align 4
  %25 = load i32, i32* @WMM_AC_BE, align 4
  store i32 %25, i32* %22, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %27 = icmp eq %struct.sk_buff* %26, null
  %28 = zext i1 %27 to i32
  %29 = call i64 @WARN_ON(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %146

34:                                               ; preds = %6
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %23, align 8
  %38 = load i32*, i32** %23, align 8
  %39 = bitcast i32* %38 to %struct.wmi_data_hdr*
  store %struct.wmi_data_hdr* %39, %struct.wmi_data_hdr** %14, align 8
  %40 = load %struct.wmi_data_hdr*, %struct.wmi_data_hdr** %14, align 8
  %41 = getelementptr inbounds %struct.wmi_data_hdr, %struct.wmi_data_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = load i32, i32* @WMI_DATA_HDR_META_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = load i32, i32* @WMI_DATA_HDR_META_MASK, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %34
  %50 = load i32, i32* @WMI_MAX_TX_META_SZ, align 4
  br label %52

51:                                               ; preds = %34
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 0, %51 ]
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  store i32 0, i32* %21, align 4
  br label %92

57:                                               ; preds = %52
  store i32 4, i32* %18, align 4
  %58 = load i32*, i32** %23, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 4
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = bitcast i32* %65 to %struct.ath6kl_llc_snap_hdr*
  store %struct.ath6kl_llc_snap_hdr* %66, %struct.ath6kl_llc_snap_hdr** %15, align 8
  %67 = load %struct.ath6kl_llc_snap_hdr*, %struct.ath6kl_llc_snap_hdr** %15, align 8
  %68 = getelementptr inbounds %struct.ath6kl_llc_snap_hdr, %struct.ath6kl_llc_snap_hdr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %19, align 4
  %71 = call i64 @htons(i32 %70)
  %72 = icmp eq i64 %69, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %57
  %74 = load %struct.ath6kl_llc_snap_hdr*, %struct.ath6kl_llc_snap_hdr** %15, align 8
  %75 = bitcast %struct.ath6kl_llc_snap_hdr* %74 to i32*
  %76 = getelementptr inbounds i32, i32* %75, i64 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @ath6kl_wmi_determine_user_priority(i32* %76, i32 %77)
  store i32 %78, i32* %21, align 4
  br label %82

79:                                               ; preds = %57
  %80 = load i32, i32* %11, align 4
  %81 = and i32 %80, 7
  store i32 %81, i32* %21, align 4
  br label %82

82:                                               ; preds = %79, %73
  %83 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* @ETH_P_PAE, align 4
  %87 = call i64 @cpu_to_be16(i32 %86)
  %88 = icmp eq i64 %85, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i32, i32* @WMI_VOICE_USER_PRIORITY, align 4
  store i32 %90, i32* %21, align 4
  br label %91

91:                                               ; preds = %89, %82
  br label %92

92:                                               ; preds = %91, %56
  %93 = load %struct.wmi*, %struct.wmi** %8, align 8
  %94 = getelementptr inbounds %struct.wmi, %struct.wmi* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @WMM_AC_VI, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load i32, i32* %21, align 4
  %100 = icmp eq i32 %99, 5
  br i1 %100, label %104, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %21, align 4
  %103 = icmp eq i32 %102, 4
  br i1 %103, label %104, label %105

104:                                              ; preds = %101, %98
  store i32 1, i32* %21, align 4
  br label %105

105:                                              ; preds = %104, %101, %92
  %106 = load i32*, i32** @up_to_ac, align 8
  %107 = load i32, i32* %21, align 4
  %108 = and i32 %107, 7
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %22, align 4
  %112 = load %struct.wmi_data_hdr*, %struct.wmi_data_hdr** %14, align 8
  %113 = load i32, i32* %21, align 4
  %114 = call i32 @wmi_data_hdr_set_up(%struct.wmi_data_hdr* %112, i32 %113)
  %115 = load %struct.wmi*, %struct.wmi** %8, align 8
  %116 = getelementptr inbounds %struct.wmi, %struct.wmi* %115, i32 0, i32 2
  %117 = call i32 @spin_lock_bh(i32* %116)
  %118 = load %struct.wmi*, %struct.wmi** %8, align 8
  %119 = getelementptr inbounds %struct.wmi, %struct.wmi* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  store i32 %120, i32* %20, align 4
  %121 = load %struct.wmi*, %struct.wmi** %8, align 8
  %122 = getelementptr inbounds %struct.wmi, %struct.wmi* %121, i32 0, i32 2
  %123 = call i32 @spin_unlock_bh(i32* %122)
  %124 = load i32, i32* %20, align 4
  %125 = load i32, i32* %22, align 4
  %126 = shl i32 1, %125
  %127 = and i32 %124, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %105
  %130 = call i32 @memset(%struct.wmi_create_pstream_cmd* %16, i32 0, i32 16)
  %131 = load i32, i32* %22, align 4
  %132 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %16, i32 0, i32 0
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %21, align 4
  %134 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %16, i32 0, i32 1
  store i32 %133, i32* %134, align 4
  %135 = load i32, i32* @WMI_IMPLICIT_PSTREAM_INACTIVITY_INT, align 4
  %136 = call i32 @cpu_to_le32(i32 %135)
  %137 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %16, i32 0, i32 3
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* @WMI_IMPLICIT_PSTREAM, align 4
  %139 = getelementptr inbounds %struct.wmi_create_pstream_cmd, %struct.wmi_create_pstream_cmd* %16, i32 0, i32 2
  store i32 %138, i32* %139, align 4
  %140 = load %struct.wmi*, %struct.wmi** %8, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @ath6kl_wmi_create_pstream_cmd(%struct.wmi* %140, i32 %141, %struct.wmi_create_pstream_cmd* %16)
  br label %143

143:                                              ; preds = %129, %105
  %144 = load i32, i32* %22, align 4
  %145 = load i32*, i32** %13, align 8
  store i32 %144, i32* %145, align 4
  store i32 0, i32* %7, align 4
  br label %146

146:                                              ; preds = %143, %31
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ath6kl_wmi_determine_user_priority(i32*, i32) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local i32 @wmi_data_hdr_set_up(%struct.wmi_data_hdr*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @memset(%struct.wmi_create_pstream_cmd*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ath6kl_wmi_create_pstream_cmd(%struct.wmi*, i32, %struct.wmi_create_pstream_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
