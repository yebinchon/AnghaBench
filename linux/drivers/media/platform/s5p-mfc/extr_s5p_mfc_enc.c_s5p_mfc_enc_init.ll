; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_enc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_enc.c_s5p_mfc_enc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_ctx = type { i8*, i8* }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DEF_SRC_FMT_ENC = common dso_local global i32 0, align 4
@MFC_FMT_RAW = common dso_local global i32 0, align 4
@DEF_DST_FMT_ENC = common dso_local global i32 0, align 4
@MFC_FMT_ENC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s5p_mfc_enc_init(%struct.s5p_mfc_ctx* %0) #0 {
  %2 = alloca %struct.s5p_mfc_ctx*, align 8
  %3 = alloca %struct.v4l2_format, align 4
  store %struct.s5p_mfc_ctx* %0, %struct.s5p_mfc_ctx** %2, align 8
  %4 = load i32, i32* @DEF_SRC_FMT_ENC, align 4
  %5 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %3, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 %4, i32* %7, align 4
  %8 = load i32, i32* @MFC_FMT_RAW, align 4
  %9 = call i8* @find_format(%struct.v4l2_format* %3, i32 %8)
  %10 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %11 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @DEF_DST_FMT_ENC, align 4
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %3, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load i32, i32* @MFC_FMT_ENC, align 4
  %17 = call i8* @find_format(%struct.v4l2_format* %3, i32 %16)
  %18 = load %struct.s5p_mfc_ctx*, %struct.s5p_mfc_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.s5p_mfc_ctx, %struct.s5p_mfc_ctx* %18, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  ret void
}

declare dso_local i8* @find_format(%struct.v4l2_format*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
