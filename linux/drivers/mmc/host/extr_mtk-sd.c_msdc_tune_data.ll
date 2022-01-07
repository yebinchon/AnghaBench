; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_tune_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mtk-sd.c_msdc_tune_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.msdc_host = type { i32, i64, i32 }
%struct.msdc_delay_phase = type { i32, i64, i32, i32 }

@MSDC_PATCH_BIT = common dso_local global i64 0, align 8
@MSDC_INT_DAT_LATCH_CK_SEL = common dso_local global i32 0, align 4
@MSDC_IOCON = common dso_local global i64 0, align 8
@MSDC_IOCON_DSPL = common dso_local global i32 0, align 4
@MSDC_IOCON_W_DSPL = common dso_local global i32 0, align 4
@PAD_DELAY_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Final data pad delay: %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*, i32)* @msdc_tune_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdc_tune_data(%struct.mmc_host* %0, i32 %1) #0 {
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
  %34 = load i32, i32* @MSDC_IOCON_DSPL, align 4
  %35 = call i32 @sdr_clr_bits(i64 %33, i32 %34)
  %36 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %37 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MSDC_IOCON, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* @MSDC_IOCON_W_DSPL, align 4
  %42 = call i32 @sdr_clr_bits(i64 %40, i32 %41)
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %62, %2
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @PAD_DELAY_MAX, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @msdc_set_data_delay(%struct.msdc_host* %48, i32 %49)
  %51 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @mmc_send_tuning(%struct.mmc_host* %51, i32 %52, i32* null)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %12, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %56, %47
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %43

65:                                               ; preds = %43
  %66 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %67 = load i32, i32* %6, align 4
  call void @get_best_delay(%struct.msdc_delay_phase* sret %14, %struct.msdc_host* %66, i32 %67)
  %68 = bitcast %struct.msdc_delay_phase* %8 to i8*
  %69 = bitcast %struct.msdc_delay_phase* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 24, i1 false)
  %70 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %71, 12
  br i1 %72, label %81, label %73

73:                                               ; preds = %65
  %74 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sge i32 %79, 4
  br i1 %80, label %81, label %82

81:                                               ; preds = %77, %65
  br label %124

82:                                               ; preds = %77, %73
  %83 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %84 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MSDC_IOCON, align 8
  %87 = add nsw i64 %85, %86
  %88 = load i32, i32* @MSDC_IOCON_DSPL, align 4
  %89 = call i32 @sdr_set_bits(i64 %87, i32 %88)
  %90 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %91 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MSDC_IOCON, align 8
  %94 = add nsw i64 %92, %93
  %95 = load i32, i32* @MSDC_IOCON_W_DSPL, align 4
  %96 = call i32 @sdr_set_bits(i64 %94, i32 %95)
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %116, %82
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @PAD_DELAY_MAX, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %97
  %102 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %103 = load i32, i32* %12, align 4
  %104 = call i32 @msdc_set_data_delay(%struct.msdc_host* %102, i32 %103)
  %105 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @mmc_send_tuning(%struct.mmc_host* %105, i32 %106, i32* null)
  store i32 %107, i32* %13, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %115, label %110

110:                                              ; preds = %101
  %111 = load i32, i32* %12, align 4
  %112 = shl i32 1, %111
  %113 = load i32, i32* %7, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %7, align 4
  br label %115

115:                                              ; preds = %110, %101
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %12, align 4
  br label %97

119:                                              ; preds = %97
  %120 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %121 = load i32, i32* %7, align 4
  call void @get_best_delay(%struct.msdc_delay_phase* sret %15, %struct.msdc_host* %120, i32 %121)
  %122 = bitcast %struct.msdc_delay_phase* %9 to i8*
  %123 = bitcast %struct.msdc_delay_phase* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %122, i8* align 8 %123, i64 24, i1 false)
  br label %124

124:                                              ; preds = %119, %81
  %125 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %9, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @max(i32 %126, i32 %128)
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %11, align 4
  %131 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %134, label %151

134:                                              ; preds = %124
  %135 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %136 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @MSDC_IOCON, align 8
  %139 = add nsw i64 %137, %138
  %140 = load i32, i32* @MSDC_IOCON_DSPL, align 4
  %141 = call i32 @sdr_clr_bits(i64 %139, i32 %140)
  %142 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %143 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @MSDC_IOCON, align 8
  %146 = add nsw i64 %144, %145
  %147 = load i32, i32* @MSDC_IOCON_W_DSPL, align 4
  %148 = call i32 @sdr_clr_bits(i64 %146, i32 %147)
  %149 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %8, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  store i32 %150, i32* %10, align 4
  br label %168

151:                                              ; preds = %124
  %152 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %153 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @MSDC_IOCON, align 8
  %156 = add nsw i64 %154, %155
  %157 = load i32, i32* @MSDC_IOCON_DSPL, align 4
  %158 = call i32 @sdr_set_bits(i64 %156, i32 %157)
  %159 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %160 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @MSDC_IOCON, align 8
  %163 = add nsw i64 %161, %162
  %164 = load i32, i32* @MSDC_IOCON_W_DSPL, align 4
  %165 = call i32 @sdr_set_bits(i64 %163, i32 %164)
  %166 = getelementptr inbounds %struct.msdc_delay_phase, %struct.msdc_delay_phase* %9, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %151, %134
  %169 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @msdc_set_data_delay(%struct.msdc_host* %169, i32 %170)
  %172 = load %struct.msdc_host*, %struct.msdc_host** %5, align 8
  %173 = getelementptr inbounds %struct.msdc_host, %struct.msdc_host* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = call i32 @dev_dbg(i32 %174, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* %10, align 4
  %178 = icmp eq i32 %177, 255
  br i1 %178, label %179, label %182

179:                                              ; preds = %168
  %180 = load i32, i32* @EIO, align 4
  %181 = sub nsw i32 0, %180
  br label %183

182:                                              ; preds = %168
  br label %183

183:                                              ; preds = %182, %179
  %184 = phi i32 [ %181, %179 ], [ 0, %182 ]
  ret i32 %184
}

declare dso_local %struct.msdc_host* @mmc_priv(%struct.mmc_host*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @sdr_set_field(i64, i32, i32) #1

declare dso_local i32 @sdr_clr_bits(i64, i32) #1

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
