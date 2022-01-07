; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_venc_vpu_if.c_handle_enc_init_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_venc_vpu_if.c_handle_enc_init_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_vpu_inst = type { i32, i32, i32 }
%struct.venc_vpu_ipi_msg_init = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venc_vpu_inst*, i8*)* @handle_enc_init_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_enc_init_msg(%struct.venc_vpu_inst* %0, i8* %1) #0 {
  %3 = alloca %struct.venc_vpu_inst*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.venc_vpu_ipi_msg_init*, align 8
  store %struct.venc_vpu_inst* %0, %struct.venc_vpu_inst** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.venc_vpu_ipi_msg_init*
  store %struct.venc_vpu_ipi_msg_init* %7, %struct.venc_vpu_ipi_msg_init** %5, align 8
  %8 = load %struct.venc_vpu_ipi_msg_init*, %struct.venc_vpu_ipi_msg_init** %5, align 8
  %9 = getelementptr inbounds %struct.venc_vpu_ipi_msg_init, %struct.venc_vpu_ipi_msg_init* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %12 = getelementptr inbounds %struct.venc_vpu_inst, %struct.venc_vpu_inst* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %14 = getelementptr inbounds %struct.venc_vpu_inst, %struct.venc_vpu_inst* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.venc_vpu_ipi_msg_init*, %struct.venc_vpu_ipi_msg_init** %5, align 8
  %17 = getelementptr inbounds %struct.venc_vpu_ipi_msg_init, %struct.venc_vpu_ipi_msg_init* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @vpu_mapping_dm_addr(i32 %15, i32 %18)
  %20 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %21 = getelementptr inbounds %struct.venc_vpu_inst, %struct.venc_vpu_inst* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  ret void
}

declare dso_local i32 @vpu_mapping_dm_addr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
