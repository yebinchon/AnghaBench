; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_tune_together.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_tune_together.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.msdc_host = type { i32, i64, i32 }
%struct.msdc_delay_phase = type { i32, i64, i32, i32 }

@MSDC_PATCH_BIT = common dso_local global i64 0, align 8
@MSDC_INT_DAT_LATCH_CK_SEL = common dso_local global i32 0, align 4
@MSDC_IOCON = common dso_local global i64 0, align 8
@MSDC_IOCON_RSPL = common dso_local global i32 0, align 4
@MSDC_IOCON_DSPL = common dso_local global i32 0, align 4
@MSDC_IOCON_W_DSPL = common dso_local global i32 0, align 4
@PAD_DELAY_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Final pad delay: %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @msdc_tune_together to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdc_tune_together(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msdc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.msdc_delay_phase, align 8
  %9 = alloca %struct.msdc_delay_phase, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.msdc_delay_phase, align 8
  %15 = alloca %struct.msdc_delay_phase, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %17 = call %struct.msdc_host* @mmc_priv(%struct.mmc_host* %16)
  store %struct.msdc_host* %17, %struct.msdc_host** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = bitcast %struct.msdc_delay_phase* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %18, i8 0, i64 24, i1 false)
  %19 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %20 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MSDC_PATCH_BIT, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* @MSDC_INT_DAT_LATCH_CK_SEL, align 4
  %25 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %26 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @sdr_set_field(i64 %23, i32 %24, i32 %27)
  %29 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %30 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MSDC_IOCON, align 8
  %33 = add nsw i64 %31, %32
  %34 = load i32, i32* @MSDC_IOCON_RSPL, align 4
  %35 = call i32 @sdr_clr_bits(i64 %33, i32 %34)
  %36 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %37 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MSDC_IOCON, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* @MSDC_IOCON_DSPL, align 4
  %42 = load i32, i32* @MSDC_IOCON_W_DSPL, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @sdr_clr_bits(i64 %40, i32 %43)
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %67, %2
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @PAD_DELAY_MAX, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %45
  %50 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @msdc_set_cmd_delay(%struct.msdc_host* %50, i32 %51)
  %53 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @msdc_set_data_delay(%struct.msdc_host* %53, i32 %54)
  %56 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @mmc_send_tuning(%struct.mmc_host* %56, i32 %57, i32* null)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %49
  %62 = load i32, i32* %12, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %61, %49
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %45

70:                                               ; preds = %45
  %71 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %72 = load i32, i32* %6, align 4
  call void @get_best_delay(%struct.msdc_delay_phase* sret %14, %struct.msdc_host* %71, i32 %72)
  %73 = bitcast %struct.msdc_delay_phase* %8 to i8*
  %74 = bitcast %struct.msdc_delay_phase* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 24, i1 false)
  %75 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %76, 12
  br i1 %77, label %86, label %78

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %84, 4
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %70
  br label %134

87:                                               ; preds = %82, %78
  %88 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %89 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MSDC_IOCON, align 8
  %92 = add nsw i64 %90, %91
  %93 = load i32, i32* @MSDC_IOCON_RSPL, align 4
  %94 = call i32 @sdr_set_bits(i64 %92, i32 %93)
  %95 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %96 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MSDC_IOCON, align 8
  %99 = add nsw i64 %97, %98
  %100 = load i32, i32* @MSDC_IOCON_DSPL, align 4
  %101 = load i32, i32* @MSDC_IOCON_W_DSPL, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @sdr_set_bits(i64 %99, i32 %102)
  store i32 0, i32* %12, align 4
  br label %104

104:                                              ; preds = %126, %87
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @PAD_DELAY_MAX, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %129

108:                                              ; preds = %104
  %109 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @msdc_set_cmd_delay(%struct.msdc_host* %109, i32 %110)
  %112 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @msdc_set_data_delay(%struct.msdc_host* %112, i32 %113)
  %115 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @mmc_send_tuning(%struct.mmc_host* %115, i32 %116, i32* null)
  store i32 %117, i32* %13, align 4
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %125, label %120

120:                                              ; preds = %108
  %121 = load i32, i32* %12, align 4
  %122 = shl i32 1, %121
  %123 = load i32, i32* %7, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %120, %108
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %12, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %12, align 4
  br label %104

129:                                              ; preds = %104
  %130 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %131 = load i32, i32* %7, align 4
  call void @get_best_delay(%struct.msdc_delay_phase* sret %15, %struct.msdc_host* %130, i32 %131)
  %132 = bitcast %struct.msdc_delay_phase* %9 to i8*
  %133 = bitcast %struct.msdc_delay_phase* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %132, i8* align 8 %133, i64 24, i1 false)
  br label %134

134:                                              ; preds = %129, %86
  %135 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %9, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @max(i32 %136, i32 %138)
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %11, align 4
  %141 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %140, %142
  br i1 %143, label %144, label %163

144:                                              ; preds = %134
  %145 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %146 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @MSDC_IOCON, align 8
  %149 = add nsw i64 %147, %148
  %150 = load i32, i32* @MSDC_IOCON_RSPL, align 4
  %151 = call i32 @sdr_clr_bits(i64 %149, i32 %150)
  %152 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %153 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @MSDC_IOCON, align 8
  %156 = add nsw i64 %154, %155
  %157 = load i32, i32* @MSDC_IOCON_DSPL, align 4
  %158 = load i32, i32* @MSDC_IOCON_W_DSPL, align 4
  %159 = or i32 %157, %158
  %160 = call i32 @sdr_clr_bits(i64 %156, i32 %159)
  %161 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  store i32 %162, i32* %10, align 4
  br label %182

163:                                              ; preds = %134
  %164 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %165 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @MSDC_IOCON, align 8
  %168 = add nsw i64 %166, %167
  %169 = load i32, i32* @MSDC_IOCON_RSPL, align 4
  %170 = call i32 @sdr_set_bits(i64 %168, i32 %169)
  %171 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %172 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @MSDC_IOCON, align 8
  %175 = add nsw i64 %173, %174
  %176 = load i32, i32* @MSDC_IOCON_DSPL, align 4
  %177 = load i32, i32* @MSDC_IOCON_W_DSPL, align 4
  %178 = or i32 %176, %177
  %179 = call i32 @sdr_set_bits(i64 %175, i32 %178)
  %180 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %9, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %10, align 4
  br label %182

182:                                              ; preds = %163, %144
  %183 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @msdc_set_cmd_delay(%struct.msdc_host* %183, i32 %184)
  %186 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %187 = load i32, i32* %10, align 4
  %188 = call i32 @msdc_set_data_delay(%struct.msdc_host* %186, i32 %187)
  %189 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %190 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* %10, align 4
  %193 = call i32 @dev_dbg(i32 %191, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %192)
  %194 = load i32, i32* %10, align 4
  %195 = icmp eq i32 %194, 255
  br i1 %195, label %196, label %199

196:                                              ; preds = %182
  %197 = load i32, i32* @EIO, align 4
  %198 = sub nsw i32 0, %197
  br label %200

199:                                              ; preds = %182
  br label %200

200:                                              ; preds = %199, %196
  %201 = phi i32 [ %198, %196 ], [ 0, %199 ]
  ret i32 %201
}

declare dso_local %struct.msdc_host* @mmc_priv(%struct.mmc_host*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sdr_set_field(i64, i32, i32) #1

declare dso_local i32 @sdr_clr_bits(i64, i32) #1

declare dso_local i32 @msdc_set_cmd_delay(%struct.msdc_host*, i32) #1

declare dso_local i32 @msdc_set_data_delay(%struct.msdc_host*, i32) #1

declare dso_local i32 @mmc_send_tuning(%struct.mmc_host*, i32, i32*) #1

declare dso_local void @get_best_delay(%struct.msdc_delay_phase* sret, %struct.msdc_host*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @sdr_set_bits(i64, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
