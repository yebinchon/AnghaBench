; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_coalesce_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_cmd.c_mwifiex_cmd_coalesce_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.host_cmd_ds_coalesce_cfg }
%struct.host_cmd_ds_coalesce_cfg = type { %struct.coalesce_receive_filt_rule*, i8*, i8* }
%struct.coalesce_receive_filt_rule = type { i64, %struct.coalesce_filt_field_param*, %struct.TYPE_8__, i32, i8* }
%struct.coalesce_filt_field_param = type { i32, i32, i8*, i32 }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.mwifiex_ds_coalesce_cfg = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i32, i32, i32 }

@HostCmd_CMD_COALESCE_CFG = common dso_local global i64 0, align 8
@S_DS_GEN = common dso_local global i64 0, align 8
@TLV_TYPE_COALESCE_RULE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.host_cmd_ds_command*, i64, i8*)* @mwifiex_cmd_coalesce_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cmd_coalesce_cfg(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.host_cmd_ds_command*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.host_cmd_ds_coalesce_cfg*, align 8
  %10 = alloca %struct.mwifiex_ds_coalesce_cfg*, align 8
  %11 = alloca %struct.coalesce_filt_field_param*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.coalesce_receive_filt_rule*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %16 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %17 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store %struct.host_cmd_ds_coalesce_cfg* %18, %struct.host_cmd_ds_coalesce_cfg** %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = bitcast i8* %19 to %struct.mwifiex_ds_coalesce_cfg*
  store %struct.mwifiex_ds_coalesce_cfg* %20, %struct.mwifiex_ds_coalesce_cfg** %10, align 8
  %21 = load i64, i64* @HostCmd_CMD_COALESCE_CFG, align 8
  %22 = call i8* @cpu_to_le16(i64 %21)
  %23 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %24 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i64, i64* @S_DS_GEN, align 8
  %26 = call i8* @cpu_to_le16(i64 %25)
  %27 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %28 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i8* @cpu_to_le16(i64 %29)
  %31 = load %struct.host_cmd_ds_coalesce_cfg*, %struct.host_cmd_ds_coalesce_cfg** %9, align 8
  %32 = getelementptr inbounds %struct.host_cmd_ds_coalesce_cfg, %struct.host_cmd_ds_coalesce_cfg* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.mwifiex_ds_coalesce_cfg*, %struct.mwifiex_ds_coalesce_cfg** %10, align 8
  %34 = getelementptr inbounds %struct.mwifiex_ds_coalesce_cfg, %struct.mwifiex_ds_coalesce_cfg* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @cpu_to_le16(i64 %35)
  %37 = load %struct.host_cmd_ds_coalesce_cfg*, %struct.host_cmd_ds_coalesce_cfg** %9, align 8
  %38 = getelementptr inbounds %struct.host_cmd_ds_coalesce_cfg, %struct.host_cmd_ds_coalesce_cfg* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.host_cmd_ds_coalesce_cfg*, %struct.host_cmd_ds_coalesce_cfg** %9, align 8
  %40 = getelementptr inbounds %struct.host_cmd_ds_coalesce_cfg, %struct.host_cmd_ds_coalesce_cfg* %39, i32 0, i32 0
  %41 = load %struct.coalesce_receive_filt_rule*, %struct.coalesce_receive_filt_rule** %40, align 8
  store %struct.coalesce_receive_filt_rule* %41, %struct.coalesce_receive_filt_rule** %15, align 8
  store i64 0, i64* %12, align 8
  br label %42

42:                                               ; preds = %189, %4
  %43 = load i64, i64* %12, align 8
  %44 = load %struct.mwifiex_ds_coalesce_cfg*, %struct.mwifiex_ds_coalesce_cfg** %10, align 8
  %45 = getelementptr inbounds %struct.mwifiex_ds_coalesce_cfg, %struct.mwifiex_ds_coalesce_cfg* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %192

48:                                               ; preds = %42
  %49 = load i64, i64* @TLV_TYPE_COALESCE_RULE, align 8
  %50 = call i8* @cpu_to_le16(i64 %49)
  %51 = load %struct.coalesce_receive_filt_rule*, %struct.coalesce_receive_filt_rule** %15, align 8
  %52 = getelementptr inbounds %struct.coalesce_receive_filt_rule, %struct.coalesce_receive_filt_rule* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load %struct.mwifiex_ds_coalesce_cfg*, %struct.mwifiex_ds_coalesce_cfg** %10, align 8
  %55 = getelementptr inbounds %struct.mwifiex_ds_coalesce_cfg, %struct.mwifiex_ds_coalesce_cfg* %54, i32 0, i32 1
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = call i8* @cpu_to_le16(i64 %60)
  %62 = load %struct.coalesce_receive_filt_rule*, %struct.coalesce_receive_filt_rule** %15, align 8
  %63 = getelementptr inbounds %struct.coalesce_receive_filt_rule, %struct.coalesce_receive_filt_rule* %62, i32 0, i32 4
  store i8* %61, i8** %63, align 8
  %64 = load %struct.mwifiex_ds_coalesce_cfg*, %struct.mwifiex_ds_coalesce_cfg** %10, align 8
  %65 = getelementptr inbounds %struct.mwifiex_ds_coalesce_cfg, %struct.mwifiex_ds_coalesce_cfg* %64, i32 0, i32 1
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i64, i64* %12, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.coalesce_receive_filt_rule*, %struct.coalesce_receive_filt_rule** %15, align 8
  %72 = getelementptr inbounds %struct.coalesce_receive_filt_rule, %struct.coalesce_receive_filt_rule* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 8
  %73 = load %struct.mwifiex_ds_coalesce_cfg*, %struct.mwifiex_ds_coalesce_cfg** %10, align 8
  %74 = getelementptr inbounds %struct.mwifiex_ds_coalesce_cfg, %struct.mwifiex_ds_coalesce_cfg* %73, i32 0, i32 1
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = load i64, i64* %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.coalesce_receive_filt_rule*, %struct.coalesce_receive_filt_rule** %15, align 8
  %81 = getelementptr inbounds %struct.coalesce_receive_filt_rule, %struct.coalesce_receive_filt_rule* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  store i64 0, i64* %14, align 8
  %82 = load %struct.coalesce_receive_filt_rule*, %struct.coalesce_receive_filt_rule** %15, align 8
  %83 = getelementptr inbounds %struct.coalesce_receive_filt_rule, %struct.coalesce_receive_filt_rule* %82, i32 0, i32 1
  %84 = load %struct.coalesce_filt_field_param*, %struct.coalesce_filt_field_param** %83, align 8
  store %struct.coalesce_filt_field_param* %84, %struct.coalesce_filt_field_param** %11, align 8
  store i64 0, i64* %13, align 8
  br label %85

85:                                               ; preds = %158, %48
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.mwifiex_ds_coalesce_cfg*, %struct.mwifiex_ds_coalesce_cfg** %10, align 8
  %88 = getelementptr inbounds %struct.mwifiex_ds_coalesce_cfg, %struct.mwifiex_ds_coalesce_cfg* %87, i32 0, i32 1
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %86, %93
  br i1 %94, label %95, label %161

95:                                               ; preds = %85
  %96 = load %struct.mwifiex_ds_coalesce_cfg*, %struct.mwifiex_ds_coalesce_cfg** %10, align 8
  %97 = getelementptr inbounds %struct.mwifiex_ds_coalesce_cfg, %struct.mwifiex_ds_coalesce_cfg* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = load i64, i64* %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = load i64, i64* %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.coalesce_filt_field_param*, %struct.coalesce_filt_field_param** %11, align 8
  %108 = getelementptr inbounds %struct.coalesce_filt_field_param, %struct.coalesce_filt_field_param* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 8
  %109 = load %struct.mwifiex_ds_coalesce_cfg*, %struct.mwifiex_ds_coalesce_cfg** %10, align 8
  %110 = getelementptr inbounds %struct.mwifiex_ds_coalesce_cfg, %struct.mwifiex_ds_coalesce_cfg* %109, i32 0, i32 1
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load i64, i64* %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i64, i64* %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.coalesce_filt_field_param*, %struct.coalesce_filt_field_param** %11, align 8
  %121 = getelementptr inbounds %struct.coalesce_filt_field_param, %struct.coalesce_filt_field_param* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load %struct.mwifiex_ds_coalesce_cfg*, %struct.mwifiex_ds_coalesce_cfg** %10, align 8
  %123 = getelementptr inbounds %struct.mwifiex_ds_coalesce_cfg, %struct.mwifiex_ds_coalesce_cfg* %122, i32 0, i32 1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = load i64, i64* %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %127, align 8
  %129 = load i64, i64* %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i8* @cpu_to_le16(i64 %132)
  %134 = load %struct.coalesce_filt_field_param*, %struct.coalesce_filt_field_param** %11, align 8
  %135 = getelementptr inbounds %struct.coalesce_filt_field_param, %struct.coalesce_filt_field_param* %134, i32 0, i32 2
  store i8* %133, i8** %135, align 8
  %136 = load %struct.coalesce_filt_field_param*, %struct.coalesce_filt_field_param** %11, align 8
  %137 = getelementptr inbounds %struct.coalesce_filt_field_param, %struct.coalesce_filt_field_param* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.mwifiex_ds_coalesce_cfg*, %struct.mwifiex_ds_coalesce_cfg** %10, align 8
  %140 = getelementptr inbounds %struct.mwifiex_ds_coalesce_cfg, %struct.mwifiex_ds_coalesce_cfg* %139, i32 0, i32 1
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = load i64, i64* %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load i64, i64* %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.coalesce_filt_field_param*, %struct.coalesce_filt_field_param** %11, align 8
  %151 = getelementptr inbounds %struct.coalesce_filt_field_param, %struct.coalesce_filt_field_param* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @memcpy(i32 %138, i32 %149, i32 %152)
  %154 = load i64, i64* %14, align 8
  %155 = add i64 %154, 24
  store i64 %155, i64* %14, align 8
  %156 = load %struct.coalesce_filt_field_param*, %struct.coalesce_filt_field_param** %11, align 8
  %157 = getelementptr inbounds %struct.coalesce_filt_field_param, %struct.coalesce_filt_field_param* %156, i32 1
  store %struct.coalesce_filt_field_param* %157, %struct.coalesce_filt_field_param** %11, align 8
  br label %158

158:                                              ; preds = %95
  %159 = load i64, i64* %13, align 8
  %160 = add i64 %159, 1
  store i64 %160, i64* %13, align 8
  br label %85

161:                                              ; preds = %85
  %162 = load i64, i64* %14, align 8
  %163 = add i64 %162, 8
  %164 = add i64 %163, 4
  %165 = add i64 %164, 4
  %166 = call i8* @cpu_to_le16(i64 %165)
  %167 = load %struct.coalesce_receive_filt_rule*, %struct.coalesce_receive_filt_rule** %15, align 8
  %168 = getelementptr inbounds %struct.coalesce_receive_filt_rule, %struct.coalesce_receive_filt_rule* %167, i32 0, i32 2
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  store i8* %166, i8** %169, align 8
  %170 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %171 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %170, i32 0, i32 0
  %172 = load %struct.coalesce_receive_filt_rule*, %struct.coalesce_receive_filt_rule** %15, align 8
  %173 = getelementptr inbounds %struct.coalesce_receive_filt_rule, %struct.coalesce_receive_filt_rule* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @le16_to_cpu(i8* %175)
  %177 = sext i32 %176 to i64
  %178 = add i64 %177, 4
  %179 = trunc i64 %178 to i32
  %180 = call i32 @le16_unaligned_add_cpu(i8** %171, i32 %179)
  %181 = load %struct.coalesce_receive_filt_rule*, %struct.coalesce_receive_filt_rule** %15, align 8
  %182 = getelementptr inbounds %struct.coalesce_receive_filt_rule, %struct.coalesce_receive_filt_rule* %181, i32 0, i32 1
  %183 = load %struct.coalesce_filt_field_param*, %struct.coalesce_filt_field_param** %182, align 8
  %184 = bitcast %struct.coalesce_filt_field_param* %183 to i32*
  %185 = load i64, i64* %14, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = bitcast i32* %186 to i8*
  %188 = bitcast i8* %187 to %struct.coalesce_receive_filt_rule*
  store %struct.coalesce_receive_filt_rule* %188, %struct.coalesce_receive_filt_rule** %15, align 8
  br label %189

189:                                              ; preds = %161
  %190 = load i64, i64* %12, align 8
  %191 = add i64 %190, 1
  store i64 %191, i64* %12, align 8
  br label %42

192:                                              ; preds = %42
  %193 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %6, align 8
  %194 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %193, i32 0, i32 0
  %195 = call i32 @le16_unaligned_add_cpu(i8** %194, i32 16)
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @le16_unaligned_add_cpu(i8**, i32) #1

declare dso_local i32 @le16_to_cpu(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
