; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_inject_packet_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_debugfs.c_iwl_dbgfs_inject_packet_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.iwl_rx_cmd_buffer = type { i32, i32, i32, i32 }
%struct.iwl_rx_packet = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.iwl_rx_mpdu_desc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_22560 = common dso_local global i64 0, align 8
@IWL_RX_DESC_SIZE_V1 = common dso_local global i32 0, align 4
@EIO = common dso_local global i64 0, align 8
@ENOTSUPP = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@LEGACY_GROUP = common dso_local global i32 0, align 4
@REPLY_RX_MPDU_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.iwl_mvm*, i8*, i64, i32*)* @iwl_dbgfs_inject_packet_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iwl_dbgfs_inject_packet_write(%struct.iwl_mvm* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.iwl_rx_cmd_buffer, align 4
  %11 = alloca %struct.iwl_rx_packet*, align 8
  %12 = alloca %struct.iwl_rx_mpdu_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %16 = bitcast %struct.iwl_rx_cmd_buffer* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 16, i1 false)
  %17 = load i64, i64* %8, align 8
  %18 = udiv i64 %17, 2
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %14, align 4
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @IWL_RX_DESC_SIZE_V1, align 4
  %34 = sext i32 %33 to i64
  br label %35

35:                                               ; preds = %32, %31
  %36 = phi i64 [ 4, %31 ], [ %34, %32 ]
  store i64 %36, i64* %15, align 8
  %37 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %38 = call i32 @iwl_mvm_firmware_running(%struct.iwl_mvm* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i64, i64* @EIO, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %5, align 8
  br label %131

43:                                               ; preds = %35
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %44, i32 0, i32 0
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load i64, i64* @ENOTSUPP, align 8
  %54 = sub i64 0, %53
  store i64 %54, i64* %5, align 8
  br label %131

55:                                               ; preds = %43
  %56 = load i32, i32* @GFP_ATOMIC, align 4
  %57 = call i32 @alloc_pages(i32 %56, i32 0)
  %58 = getelementptr inbounds %struct.iwl_rx_cmd_buffer, %struct.iwl_rx_cmd_buffer* %10, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.iwl_rx_cmd_buffer, %struct.iwl_rx_cmd_buffer* %10, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i64, i64* @ENOMEM, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %5, align 8
  br label %131

65:                                               ; preds = %55
  %66 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %10)
  store %struct.iwl_rx_packet* %66, %struct.iwl_rx_packet** %11, align 8
  %67 = getelementptr inbounds %struct.iwl_rx_cmd_buffer, %struct.iwl_rx_cmd_buffer* %10, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @page_address(i32 %68)
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @hex2bin(i32 %69, i8* %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %65
  br label %121

76:                                               ; preds = %65
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %15, align 8
  %80 = add i64 16, %79
  %81 = icmp ult i64 %78, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  br label %121

83:                                               ; preds = %76
  %84 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %11, align 8
  %85 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %11, align 8
  %89 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @WIDE_ID(i32 %87, i32 %91)
  %93 = load i32, i32* @LEGACY_GROUP, align 4
  %94 = load i32, i32* @REPLY_RX_MPDU_CMD, align 4
  %95 = call i64 @WIDE_ID(i32 %93, i32 %94)
  %96 = icmp ne i64 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %83
  br label %121

98:                                               ; preds = %83
  %99 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %11, align 8
  %100 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to i8*
  %103 = bitcast i8* %102 to %struct.iwl_rx_mpdu_desc*
  store %struct.iwl_rx_mpdu_desc* %103, %struct.iwl_rx_mpdu_desc** %12, align 8
  %104 = load %struct.iwl_rx_mpdu_desc*, %struct.iwl_rx_mpdu_desc** %12, align 8
  %105 = getelementptr inbounds %struct.iwl_rx_mpdu_desc, %struct.iwl_rx_mpdu_desc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @le16_to_cpu(i32 %106)
  %108 = sext i32 %107 to i64
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %15, align 8
  %112 = sub i64 %110, %111
  %113 = sub i64 %112, 16
  %114 = icmp ne i64 %108, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %98
  br label %121

116:                                              ; preds = %98
  %117 = call i32 (...) @local_bh_disable()
  %118 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %119 = call i32 @iwl_mvm_rx_mpdu_mq(%struct.iwl_mvm* %118, i32* null, %struct.iwl_rx_cmd_buffer* %10, i32 0)
  %120 = call i32 (...) @local_bh_enable()
  store i32 0, i32* %14, align 4
  br label %121

121:                                              ; preds = %116, %115, %97, %82, %75
  %122 = call i32 @iwl_free_rxb(%struct.iwl_rx_cmd_buffer* %10)
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = sext i32 %123 to i64
  br label %129

127:                                              ; preds = %121
  %128 = load i64, i64* %8, align 8
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i64 [ %126, %125 ], [ %128, %127 ]
  store i64 %130, i64* %5, align 8
  br label %131

131:                                              ; preds = %129, %62, %52, %40
  %132 = load i64, i64* %5, align 8
  ret i64 %132
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @iwl_mvm_firmware_running(%struct.iwl_mvm*) #2

declare dso_local i32 @alloc_pages(i32, i32) #2

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #2

declare dso_local i32 @hex2bin(i32, i8*, i32) #2

declare dso_local i32 @page_address(i32) #2

declare dso_local i64 @WIDE_ID(i32, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @local_bh_disable(...) #2

declare dso_local i32 @iwl_mvm_rx_mpdu_mq(%struct.iwl_mvm*, i32*, %struct.iwl_rx_cmd_buffer*, i32) #2

declare dso_local i32 @local_bh_enable(...) #2

declare dso_local i32 @iwl_free_rxb(%struct.iwl_rx_cmd_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
