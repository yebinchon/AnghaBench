; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_tx_rate_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmdresp.c_mwifiex_ret_tx_rate_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, i64, i8**, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.host_cmd_ds_command = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.host_cmd_ds_tx_rate_cfg }
%struct.host_cmd_ds_tx_rate_cfg = type { i32 }
%struct.mwifiex_rate_scope = type { i32*, i32*, i32, i32 }
%struct.mwifiex_ie_types_header = type { i32, i32 }

@S_DS_GEN = common dso_local global i8* null, align 8
@MWIFIEX_FW_V15 = common dso_local global i32 0, align 4
@HostCmd_CMD_802_11_TX_RATE_QUERY = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*)* @mwifiex_ret_tx_rate_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_ret_tx_rate_cfg(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca %struct.host_cmd_ds_tx_rate_cfg*, align 8
  %7 = alloca %struct.mwifiex_rate_scope*, align 8
  %8 = alloca %struct.mwifiex_ie_types_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  %14 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %15 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.host_cmd_ds_tx_rate_cfg* %16, %struct.host_cmd_ds_tx_rate_cfg** %6, align 8
  %17 = load %struct.host_cmd_ds_tx_rate_cfg*, %struct.host_cmd_ds_tx_rate_cfg** %6, align 8
  %18 = bitcast %struct.host_cmd_ds_tx_rate_cfg* %17 to i32*
  %19 = getelementptr inbounds i32, i32* %18, i64 4
  store i32* %19, i32** %12, align 8
  %20 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %21 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @le16_to_cpu(i32 %22)
  %24 = load i8*, i8** @S_DS_GEN, align 8
  %25 = ptrtoint i8* %23 to i64
  %26 = ptrtoint i8* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sub i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %134, %2
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp uge i64 %32, 8
  br i1 %33, label %34, label %147

34:                                               ; preds = %30
  %35 = load i32*, i32** %12, align 8
  %36 = bitcast i32* %35 to %struct.mwifiex_ie_types_header*
  store %struct.mwifiex_ie_types_header* %36, %struct.mwifiex_ie_types_header** %8, align 8
  %37 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %8, align 8
  %38 = getelementptr inbounds %struct.mwifiex_ie_types_header, %struct.mwifiex_ie_types_header* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @le16_to_cpu(i32 %39)
  %41 = ptrtoint i8* %40 to i32
  store i32 %41, i32* %9, align 4
  %42 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %8, align 8
  %43 = getelementptr inbounds %struct.mwifiex_ie_types_header, %struct.mwifiex_ie_types_header* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @le16_to_cpu(i32 %44)
  %46 = ptrtoint i8* %45 to i32
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 8, %50
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %34
  br label %147

54:                                               ; preds = %34
  %55 = load i32, i32* %9, align 4
  switch i32 %55, label %134 [
    i32 128, label %56
  ]

56:                                               ; preds = %54
  %57 = load i32*, i32** %12, align 8
  %58 = bitcast i32* %57 to %struct.mwifiex_rate_scope*
  store %struct.mwifiex_rate_scope* %58, %struct.mwifiex_rate_scope** %7, align 8
  %59 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %7, align 8
  %60 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @le16_to_cpu(i32 %61)
  %63 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %64 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %63, i32 0, i32 2
  %65 = load i8**, i8*** %64, align 8
  %66 = getelementptr inbounds i8*, i8** %65, i64 0
  store i8* %62, i8** %66, align 8
  %67 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %7, align 8
  %68 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @le16_to_cpu(i32 %69)
  %71 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %72 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %71, i32 0, i32 2
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 1
  store i8* %70, i8** %74, align 8
  store i64 0, i64* %13, align 8
  br label %75

75:                                               ; preds = %96, %56
  %76 = load i64, i64* %13, align 8
  %77 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %7, align 8
  %78 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @ARRAY_SIZE(i32* %79)
  %81 = icmp ult i64 %76, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %75
  %83 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %7, align 8
  %84 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @le16_to_cpu(i32 %88)
  %90 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %91 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %90, i32 0, i32 2
  %92 = load i8**, i8*** %91, align 8
  %93 = load i64, i64* %13, align 8
  %94 = add i64 2, %93
  %95 = getelementptr inbounds i8*, i8** %92, i64 %94
  store i8* %89, i8** %95, align 8
  br label %96

96:                                               ; preds = %82
  %97 = load i64, i64* %13, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %13, align 8
  br label %75

99:                                               ; preds = %75
  %100 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %101 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %100, i32 0, i32 3
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MWIFIEX_FW_V15, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %133

107:                                              ; preds = %99
  store i64 0, i64* %13, align 8
  br label %108

108:                                              ; preds = %129, %107
  %109 = load i64, i64* %13, align 8
  %110 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %7, align 8
  %111 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @ARRAY_SIZE(i32* %112)
  %114 = icmp ult i64 %109, %113
  br i1 %114, label %115, label %132

115:                                              ; preds = %108
  %116 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %7, align 8
  %117 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load i64, i64* %13, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @le16_to_cpu(i32 %121)
  %123 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %124 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %123, i32 0, i32 2
  %125 = load i8**, i8*** %124, align 8
  %126 = load i64, i64* %13, align 8
  %127 = add i64 10, %126
  %128 = getelementptr inbounds i8*, i8** %125, i64 %127
  store i8* %122, i8** %128, align 8
  br label %129

129:                                              ; preds = %115
  %130 = load i64, i64* %13, align 8
  %131 = add i64 %130, 1
  store i64 %131, i64* %13, align 8
  br label %108

132:                                              ; preds = %108
  br label %133

133:                                              ; preds = %132, %99
  br label %134

134:                                              ; preds = %54, %133
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = add i64 8, %136
  %138 = load i32*, i32** %12, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 %137
  store i32* %139, i32** %12, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 8, %141
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = sub i64 %144, %142
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %11, align 4
  br label %30

147:                                              ; preds = %53, %30
  %148 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %149 = call i64 @mwifiex_is_rate_auto(%struct.mwifiex_private* %148)
  %150 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %151 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %150, i32 0, i32 1
  store i64 %149, i64* %151, align 8
  %152 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %153 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %147
  %157 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %158 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  br label %164

159:                                              ; preds = %147
  %160 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %161 = load i32, i32* @HostCmd_CMD_802_11_TX_RATE_QUERY, align 4
  %162 = load i32, i32* @HostCmd_ACT_GEN_GET, align 4
  %163 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %160, i32 %161, i32 %162, i32 0, i32* null, i32 0)
  store i32 %163, i32* %3, align 4
  br label %165

164:                                              ; preds = %156
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %159
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @mwifiex_is_rate_auto(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
