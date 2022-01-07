; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_enc_calc_src_size_v6.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v6.c_s5p_mfc_enc_calc_src_size_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, i8*, i8*, i32, i8*, i32 }

@S5P_FIMV_NV12M_HALIGN_V6 = common dso_local global i32 0, align 4
@MFC_LUMA_PAD_BYTES_V7 = common dso_local global i64 0, align 8
@MFC_CHROMA_PAD_BYTES_V7 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5p_mfc_ctx*)* @s5p_mfc_enc_calc_src_size_v6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5p_mfc_enc_calc_src_size_v6(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %5 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @MB_WIDTH(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @MB_HEIGHT(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @S5P_FIMV_NV12M_HALIGN_V6, align 4
  %17 = call i8* @ALIGN(i32 %15, i32 %16)
  %18 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = mul i32 %20, %21
  %23 = mul i32 %22, 256
  %24 = call i8* @ALIGN(i32 %23, i32 256)
  %25 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* %4, align 4
  %29 = mul i32 %27, %28
  %30 = mul i32 %29, 128
  %31 = call i8* @ALIGN(i32 %30, i32 256)
  %32 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %35 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_MFCV7_PLUS(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %1
  %40 = load i64, i64* @MFC_LUMA_PAD_BYTES_V7, align 8
  %41 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %42 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr i8, i8* %43, i64 %40
  store i8* %44, i8** %42, align 8
  %45 = load i64, i64* @MFC_CHROMA_PAD_BYTES_V7, align 8
  %46 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr i8, i8* %48, i64 %45
  store i8* %49, i8** %47, align 8
  br label %50

50:                                               ; preds = %39, %1
  ret void
}

declare dso_local i32 @MB_WIDTH(i32) #1

declare dso_local i32 @MB_HEIGHT(i32) #1

declare dso_local i8* @ALIGN(i32, i32) #1

declare dso_local i64 @IS_MFCV7_PLUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
