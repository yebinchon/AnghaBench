; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_enc_frame_buffer_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_enc_frame_buffer_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i32 }

@S5P_FIMV_ENC_SI_CH0_CUR_Y_ADR = common dso_local global i32 0, align 4
@S5P_FIMV_ENC_SI_CH0_CUR_C_ADR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_mfc_ctx*, i64, i64)* @s5p_mfc_set_enc_frame_buffer_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_mfc_set_enc_frame_buffer_v5(%struct.s5p_mfc_ctx* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.s5p_mfc_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.s5p_mfc_dev*, align 8
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %8, i32 0, i32 0
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %9, align 8
  store %struct.s5p_mfc_dev* %10, %struct.s5p_mfc_dev** %7, align 8
  %11 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @OFFSETB(i64 %12)
  %14 = load i32, i32* @S5P_FIMV_ENC_SI_CH0_CUR_Y_ADR, align 4
  %15 = call i32 @mfc_write(%struct.s5p_mfc_dev* %11, i32 %13, i32 %14)
  %16 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @OFFSETB(i64 %17)
  %19 = load i32, i32* @S5P_FIMV_ENC_SI_CH0_CUR_C_ADR, align 4
  %20 = call i32 @mfc_write(%struct.s5p_mfc_dev* %16, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i32 @OFFSETB(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
