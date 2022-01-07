; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_push_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_push_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { i64 }
%struct.efx_filter_spec = type { i32, i64 }
%struct.efx_rss_context = type { i64 }

@MC_CMD_FILTER_OP_EXT_IN_LEN = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_RX_RSS = common dso_local global i32 0, align 4
@EFX_EF10_RSS_CONTEXT_INVALID = common dso_local global i64 0, align 8
@FILTER_OP_IN_OP = common dso_local global i32 0, align 4
@MC_CMD_FILTER_OP_IN_OP_REPLACE = common dso_local global i64 0, align 8
@FILTER_OP_IN_HANDLE = common dso_local global i32 0, align 4
@FILTER_OP_IN_PORT_ID = common dso_local global i32 0, align 4
@FILTER_OP_IN_RX_DEST = common dso_local global i32 0, align 4
@EFX_FILTER_RX_DMAQ_ID_DROP = common dso_local global i64 0, align 8
@MC_CMD_FILTER_OP_IN_RX_DEST_DROP = common dso_local global i64 0, align 8
@MC_CMD_FILTER_OP_IN_RX_DEST_HOST = common dso_local global i64 0, align 8
@FILTER_OP_IN_TX_DOMAIN = common dso_local global i32 0, align 4
@FILTER_OP_IN_TX_DEST = common dso_local global i32 0, align 4
@MC_CMD_FILTER_OP_IN_TX_DEST_DEFAULT = common dso_local global i64 0, align 8
@FILTER_OP_IN_RX_QUEUE = common dso_local global i32 0, align 4
@FILTER_OP_IN_RX_MODE = common dso_local global i32 0, align 4
@MC_CMD_FILTER_OP_IN_RX_MODE_RSS = common dso_local global i64 0, align 8
@MC_CMD_FILTER_OP_IN_RX_MODE_SIMPLE = common dso_local global i64 0, align 8
@FILTER_OP_IN_RX_CONTEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, %struct.efx_filter_spec*, i32*, i32, %struct.efx_rss_context*, i32)* @efx_ef10_filter_push_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_filter_push_prep(%struct.efx_nic* %0, %struct.efx_filter_spec* %1, i32* %2, i32 %3, %struct.efx_rss_context* %4, i32 %5) #0 {
  %7 = alloca %struct.efx_nic*, align 8
  %8 = alloca %struct.efx_filter_spec*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.efx_rss_context*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.efx_ef10_nic_data*, align 8
  %14 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %7, align 8
  store %struct.efx_filter_spec* %1, %struct.efx_filter_spec** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.efx_rss_context* %4, %struct.efx_rss_context** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 0
  %17 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %16, align 8
  store %struct.efx_ef10_nic_data* %17, %struct.efx_ef10_nic_data** %13, align 8
  %18 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %8, align 8
  %19 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %14, align 4
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* @MC_CMD_FILTER_OP_EXT_IN_LEN, align 4
  %23 = call i32 @memset(i32* %21, i32 0, i32 %22)
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @EFX_FILTER_FLAG_RX_RSS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %6
  %29 = load %struct.efx_rss_context*, %struct.efx_rss_context** %11, align 8
  %30 = icmp ne %struct.efx_rss_context* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @WARN_ON_ONCE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* @EFX_FILTER_FLAG_RX_RSS, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %14, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %14, align 4
  br label %55

40:                                               ; preds = %28
  %41 = load %struct.efx_rss_context*, %struct.efx_rss_context** %11, align 8
  %42 = getelementptr inbounds %struct.efx_rss_context, %struct.efx_rss_context* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EFX_EF10_RSS_CONTEXT_INVALID, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON_ONCE(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %40
  %50 = load i32, i32* @EFX_FILTER_FLAG_RX_RSS, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %14, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %14, align 4
  br label %54

54:                                               ; preds = %49, %40
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %55, %6
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* @FILTER_OP_IN_OP, align 4
  %62 = load i64, i64* @MC_CMD_FILTER_OP_IN_OP_REPLACE, align 8
  %63 = call i32 @MCDI_SET_DWORD(i32* %60, i32 %61, i64 %62)
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* @FILTER_OP_IN_HANDLE, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @MCDI_SET_QWORD(i32* %64, i32 %65, i32 %66)
  br label %73

68:                                               ; preds = %56
  %69 = load %struct.efx_nic*, %struct.efx_nic** %7, align 8
  %70 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %8, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = call i32 @efx_ef10_filter_push_prep_set_match_fields(%struct.efx_nic* %69, %struct.efx_filter_spec* %70, i32* %71)
  br label %73

73:                                               ; preds = %68, %59
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* @FILTER_OP_IN_PORT_ID, align 4
  %76 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %13, align 8
  %77 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @MCDI_SET_DWORD(i32* %74, i32 %75, i64 %78)
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* @FILTER_OP_IN_RX_DEST, align 4
  %82 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %8, align 8
  %83 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @EFX_FILTER_RX_DMAQ_ID_DROP, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %73
  %88 = load i64, i64* @MC_CMD_FILTER_OP_IN_RX_DEST_DROP, align 8
  br label %91

89:                                               ; preds = %73
  %90 = load i64, i64* @MC_CMD_FILTER_OP_IN_RX_DEST_HOST, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %88, %87 ], [ %90, %89 ]
  %93 = call i32 @MCDI_SET_DWORD(i32* %80, i32 %81, i64 %92)
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* @FILTER_OP_IN_TX_DOMAIN, align 4
  %96 = call i32 @MCDI_SET_DWORD(i32* %94, i32 %95, i64 0)
  %97 = load i32*, i32** %9, align 8
  %98 = load i32, i32* @FILTER_OP_IN_TX_DEST, align 4
  %99 = load i64, i64* @MC_CMD_FILTER_OP_IN_TX_DEST_DEFAULT, align 8
  %100 = call i32 @MCDI_SET_DWORD(i32* %97, i32 %98, i64 %99)
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* @FILTER_OP_IN_RX_QUEUE, align 4
  %103 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %8, align 8
  %104 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @EFX_FILTER_RX_DMAQ_ID_DROP, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %91
  br label %113

109:                                              ; preds = %91
  %110 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %8, align 8
  %111 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  br label %113

113:                                              ; preds = %109, %108
  %114 = phi i64 [ 0, %108 ], [ %112, %109 ]
  %115 = call i32 @MCDI_SET_DWORD(i32* %101, i32 %102, i64 %114)
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* @FILTER_OP_IN_RX_MODE, align 4
  %118 = load i32, i32* %14, align 4
  %119 = load i32, i32* @EFX_FILTER_FLAG_RX_RSS, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %113
  %123 = load i64, i64* @MC_CMD_FILTER_OP_IN_RX_MODE_RSS, align 8
  br label %126

124:                                              ; preds = %113
  %125 = load i64, i64* @MC_CMD_FILTER_OP_IN_RX_MODE_SIMPLE, align 8
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i64 [ %123, %122 ], [ %125, %124 ]
  %128 = call i32 @MCDI_SET_DWORD(i32* %116, i32 %117, i64 %127)
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @EFX_FILTER_FLAG_RX_RSS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %126
  %134 = load i32*, i32** %9, align 8
  %135 = load i32, i32* @FILTER_OP_IN_RX_CONTEXT, align 4
  %136 = load %struct.efx_rss_context*, %struct.efx_rss_context** %11, align 8
  %137 = getelementptr inbounds %struct.efx_rss_context, %struct.efx_rss_context* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @MCDI_SET_DWORD(i32* %134, i32 %135, i64 %138)
  br label %140

140:                                              ; preds = %133, %126
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @MCDI_SET_DWORD(i32*, i32, i64) #1

declare dso_local i32 @MCDI_SET_QWORD(i32*, i32, i32) #1

declare dso_local i32 @efx_ef10_filter_push_prep_set_match_fields(%struct.efx_nic*, %struct.efx_filter_spec*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
