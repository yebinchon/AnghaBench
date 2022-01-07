; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_dec_stream_buffer_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_set_dec_stream_buffer_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i32, %struct.s5p_mfc_dev* }
%struct.s5p_mfc_dev = type { i32 }

@S5P_FIMV_SI_CH0_SB_ST_ADR = common dso_local global i32 0, align 4
@S5P_FIMV_SI_CH0_CPB_SIZE = common dso_local global i32 0, align 4
@S5P_FIMV_SI_CH0_SB_FRM_SIZE = common dso_local global i32 0, align 4
@START_BYTE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_ctx*, i32, i32, i32)* @s5p_mfc_set_dec_stream_buffer_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_set_dec_stream_buffer_v5(%struct.s5p_mfc_ctx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.s5p_mfc_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.s5p_mfc_dev*, align 8
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %10, i32 0, i32 1
  %12 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %11, align 8
  store %struct.s5p_mfc_dev* %12, %struct.s5p_mfc_dev** %9, align 8
  %13 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @OFFSETA(i32 %14)
  %16 = load i32, i32* @S5P_FIMV_SI_CH0_SB_ST_ADR, align 4
  %17 = call i32 @mfc_write(%struct.s5p_mfc_dev* %13, i32 %15, i32 %16)
  %18 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %9, align 8
  %19 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @S5P_FIMV_SI_CH0_CPB_SIZE, align 4
  %23 = call i32 @mfc_write(%struct.s5p_mfc_dev* %18, i32 %21, i32 %22)
  %24 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %9, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @S5P_FIMV_SI_CH0_SB_FRM_SIZE, align 4
  %27 = call i32 @mfc_write(%struct.s5p_mfc_dev* %24, i32 %25, i32 %26)
  %28 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @START_BYTE_NUM, align 4
  %31 = call i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx* %28, i32 %29, i32 %30)
  ret i32 0
}

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i32 @OFFSETA(i32) #1

declare dso_local i32 @s5p_mfc_write_info_v5(%struct.s5p_mfc_ctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
