; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_get_enc_frame_buffer_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_get_enc_frame_buffer_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i64* }

@BANK_R_CTX = common dso_local global i64 0, align 8
@S5P_FIMV_ENCODED_Y_ADDR = common dso_local global i32 0, align 4
@MFC_OFFSET_SHIFT = common dso_local global i64 0, align 8
@S5P_FIMV_ENCODED_C_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_mfc_ctx*, i64*, i64*)* @s5p_mfc_get_enc_frame_buffer_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_mfc_get_enc_frame_buffer_v5(%struct.s5p_mfc_ctx* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.s5p_mfc_ctx*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.s5p_mfc_dev*, align 8
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %8, i32 0, i32 0
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %9, align 8
  store %struct.s5p_mfc_dev* %10, %struct.s5p_mfc_dev** %7, align 8
  %11 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  %12 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i64, i64* @BANK_R_CTX, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  %18 = load i32, i32* @S5P_FIMV_ENCODED_Y_ADDR, align 4
  %19 = call i64 @mfc_read(%struct.s5p_mfc_dev* %17, i32 %18)
  %20 = load i64, i64* @MFC_OFFSET_SHIFT, align 8
  %21 = shl i64 %19, %20
  %22 = add i64 %16, %21
  %23 = load i64*, i64** %5, align 8
  store i64 %22, i64* %23, align 8
  %24 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  %25 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @BANK_R_CTX, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %7, align 8
  %31 = load i32, i32* @S5P_FIMV_ENCODED_C_ADDR, align 4
  %32 = call i64 @mfc_read(%struct.s5p_mfc_dev* %30, i32 %31)
  %33 = load i64, i64* @MFC_OFFSET_SHIFT, align 8
  %34 = shl i64 %32, %33
  %35 = add i64 %29, %34
  %36 = load i64*, i64** %6, align 8
  store i64 %35, i64* %36, align 8
  ret void
}

declare dso_local i64 @mfc_read(%struct.s5p_mfc_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
