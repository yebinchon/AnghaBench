; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_tx_rate_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_tx_rate_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.host_cmd_ds_tx_rate_cfg }
%struct.host_cmd_ds_tx_rate_cfg = type { i64, i8* }
%struct.mwifiex_rate_scope = type { i8**, i8**, i8*, i8*, i8*, i8* }
%struct.mwifiex_rate_drop_pattern = type { i64, i8*, i8* }

@HostCmd_CMD_TX_RATE_CFG = common dso_local global i32 0, align 4
@TLV_TYPE_RATE_SCOPE = common dso_local global i32 0, align 4
@MWIFIEX_FW_V15 = common dso_local global i64 0, align 8
@TLV_TYPE_RATE_DROP_CONTROL = common dso_local global i32 0, align 4
@S_DS_GEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i32, i32*)* @mwifiex_cmd_tx_rate_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_tx_rate_cfg(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.host_cmd_ds_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.host_cmd_ds_tx_rate_cfg*, align 8
  %10 = alloca %struct.mwifiex_rate_scope*, align 8
  %11 = alloca %struct.mwifiex_rate_drop_pattern*, align 8
  %12 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %13 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %14 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.host_cmd_ds_tx_rate_cfg* %15, %struct.host_cmd_ds_tx_rate_cfg** %9, align 8
  %16 = load i32, i32* @HostCmd_CMD_TX_RATE_CFG, align 4
  %17 = call i8* @cpu_to_le16(i32 %16)
  %18 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %19 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @cpu_to_le16(i32 %20)
  %22 = load %struct.host_cmd_ds_tx_rate_cfg*, %struct.host_cmd_ds_tx_rate_cfg** %9, align 8
  %23 = getelementptr inbounds %struct.host_cmd_ds_tx_rate_cfg, %struct.host_cmd_ds_tx_rate_cfg* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.host_cmd_ds_tx_rate_cfg*, %struct.host_cmd_ds_tx_rate_cfg** %9, align 8
  %25 = getelementptr inbounds %struct.host_cmd_ds_tx_rate_cfg, %struct.host_cmd_ds_tx_rate_cfg* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.host_cmd_ds_tx_rate_cfg*, %struct.host_cmd_ds_tx_rate_cfg** %9, align 8
  %27 = bitcast %struct.host_cmd_ds_tx_rate_cfg* %26 to i32*
  %28 = getelementptr inbounds i32, i32* %27, i64 16
  %29 = bitcast i32* %28 to %struct.mwifiex_rate_scope*
  store %struct.mwifiex_rate_scope* %29, %struct.mwifiex_rate_scope** %10, align 8
  %30 = load i32, i32* @TLV_TYPE_RATE_SCOPE, align 4
  %31 = call i8* @cpu_to_le16(i32 %30)
  %32 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %10, align 8
  %33 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %32, i32 0, i32 5
  store i8* %31, i8** %33, align 8
  %34 = call i8* @cpu_to_le16(i32 44)
  %35 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %10, align 8
  %36 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %35, i32 0, i32 4
  store i8* %34, i8** %36, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %107

39:                                               ; preds = %4
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %10, align 8
  %45 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %10, align 8
  %51 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  store i64 0, i64* %12, align 8
  br label %52

52:                                               ; preds = %71, %39
  %53 = load i64, i64* %12, align 8
  %54 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %10, align 8
  %55 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %54, i32 0, i32 1
  %56 = load i8**, i8*** %55, align 8
  %57 = call i64 @ARRAY_SIZE(i8** %56)
  %58 = icmp ult i64 %53, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %52
  %60 = load i32*, i32** %8, align 8
  %61 = load i64, i64* %12, align 8
  %62 = add i64 2, %61
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @cpu_to_le16(i32 %64)
  %66 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %10, align 8
  %67 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %66, i32 0, i32 1
  %68 = load i8**, i8*** %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds i8*, i8** %68, i64 %69
  store i8* %65, i8** %70, align 8
  br label %71

71:                                               ; preds = %59
  %72 = load i64, i64* %12, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %12, align 8
  br label %52

74:                                               ; preds = %52
  %75 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %76 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @MWIFIEX_FW_V15, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %106

82:                                               ; preds = %74
  store i64 0, i64* %12, align 8
  br label %83

83:                                               ; preds = %102, %82
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %10, align 8
  %86 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %85, i32 0, i32 0
  %87 = load i8**, i8*** %86, align 8
  %88 = call i64 @ARRAY_SIZE(i8** %87)
  %89 = icmp ult i64 %84, %88
  br i1 %89, label %90, label %105

90:                                               ; preds = %83
  %91 = load i32*, i32** %8, align 8
  %92 = load i64, i64* %12, align 8
  %93 = add i64 10, %92
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @cpu_to_le16(i32 %95)
  %97 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %10, align 8
  %98 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %97, i32 0, i32 0
  %99 = load i8**, i8*** %98, align 8
  %100 = load i64, i64* %12, align 8
  %101 = getelementptr inbounds i8*, i8** %99, i64 %100
  store i8* %96, i8** %101, align 8
  br label %102

102:                                              ; preds = %90
  %103 = load i64, i64* %12, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %12, align 8
  br label %83

105:                                              ; preds = %83
  br label %106

106:                                              ; preds = %105, %74
  br label %183

107:                                              ; preds = %4
  %108 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %109 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = call i8* @cpu_to_le16(i32 %112)
  %114 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %10, align 8
  %115 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %114, i32 0, i32 3
  store i8* %113, i8** %115, align 8
  %116 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %117 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = call i8* @cpu_to_le16(i32 %120)
  %122 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %10, align 8
  %123 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  store i64 0, i64* %12, align 8
  br label %124

124:                                              ; preds = %145, %107
  %125 = load i64, i64* %12, align 8
  %126 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %10, align 8
  %127 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %126, i32 0, i32 1
  %128 = load i8**, i8*** %127, align 8
  %129 = call i64 @ARRAY_SIZE(i8** %128)
  %130 = icmp ult i64 %125, %129
  br i1 %130, label %131, label %148

131:                                              ; preds = %124
  %132 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %133 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i64, i64* %12, align 8
  %136 = add i64 2, %135
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @cpu_to_le16(i32 %138)
  %140 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %10, align 8
  %141 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %140, i32 0, i32 1
  %142 = load i8**, i8*** %141, align 8
  %143 = load i64, i64* %12, align 8
  %144 = getelementptr inbounds i8*, i8** %142, i64 %143
  store i8* %139, i8** %144, align 8
  br label %145

145:                                              ; preds = %131
  %146 = load i64, i64* %12, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %12, align 8
  br label %124

148:                                              ; preds = %124
  %149 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %150 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @MWIFIEX_FW_V15, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %182

156:                                              ; preds = %148
  store i64 0, i64* %12, align 8
  br label %157

157:                                              ; preds = %178, %156
  %158 = load i64, i64* %12, align 8
  %159 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %10, align 8
  %160 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %159, i32 0, i32 0
  %161 = load i8**, i8*** %160, align 8
  %162 = call i64 @ARRAY_SIZE(i8** %161)
  %163 = icmp ult i64 %158, %162
  br i1 %163, label %164, label %181

164:                                              ; preds = %157
  %165 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %166 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* %12, align 8
  %169 = add i64 10, %168
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @cpu_to_le16(i32 %171)
  %173 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %10, align 8
  %174 = getelementptr inbounds %struct.mwifiex_rate_scope, %struct.mwifiex_rate_scope* %173, i32 0, i32 0
  %175 = load i8**, i8*** %174, align 8
  %176 = load i64, i64* %12, align 8
  %177 = getelementptr inbounds i8*, i8** %175, i64 %176
  store i8* %172, i8** %177, align 8
  br label %178

178:                                              ; preds = %164
  %179 = load i64, i64* %12, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %12, align 8
  br label %157

181:                                              ; preds = %157
  br label %182

182:                                              ; preds = %181, %148
  br label %183

183:                                              ; preds = %182, %106
  %184 = load %struct.mwifiex_rate_scope*, %struct.mwifiex_rate_scope** %10, align 8
  %185 = bitcast %struct.mwifiex_rate_scope* %184 to i32*
  %186 = getelementptr inbounds i32, i32* %185, i64 48
  %187 = bitcast i32* %186 to %struct.mwifiex_rate_drop_pattern*
  store %struct.mwifiex_rate_drop_pattern* %187, %struct.mwifiex_rate_drop_pattern** %11, align 8
  %188 = load i32, i32* @TLV_TYPE_RATE_DROP_CONTROL, align 4
  %189 = call i8* @cpu_to_le16(i32 %188)
  %190 = load %struct.mwifiex_rate_drop_pattern*, %struct.mwifiex_rate_drop_pattern** %11, align 8
  %191 = getelementptr inbounds %struct.mwifiex_rate_drop_pattern, %struct.mwifiex_rate_drop_pattern* %190, i32 0, i32 2
  store i8* %189, i8** %191, align 8
  %192 = call i8* @cpu_to_le16(i32 8)
  %193 = load %struct.mwifiex_rate_drop_pattern*, %struct.mwifiex_rate_drop_pattern** %11, align 8
  %194 = getelementptr inbounds %struct.mwifiex_rate_drop_pattern, %struct.mwifiex_rate_drop_pattern* %193, i32 0, i32 1
  store i8* %192, i8** %194, align 8
  %195 = load %struct.mwifiex_rate_drop_pattern*, %struct.mwifiex_rate_drop_pattern** %11, align 8
  %196 = getelementptr inbounds %struct.mwifiex_rate_drop_pattern, %struct.mwifiex_rate_drop_pattern* %195, i32 0, i32 0
  store i64 0, i64* %196, align 8
  %197 = load i32, i32* @S_DS_GEN, align 4
  %198 = sext i32 %197 to i64
  %199 = add i64 %198, 16
  %200 = add i64 %199, 48
  %201 = add i64 %200, 24
  %202 = trunc i64 %201 to i32
  %203 = call i8* @cpu_to_le16(i32 %202)
  %204 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %205 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %204, i32 0, i32 0
  store i8* %203, i8** %205, align 8
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
