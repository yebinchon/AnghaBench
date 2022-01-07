; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_rpf.c_rpf_configure_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_rpf.c_rpf_configure_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.vsp1_rwpf = type { i32, i32 }

@VI6_RPF_VRTCOL_SET = common dso_local global i32 0, align 4
@VI6_RPF_VRTCOL_SET_LAYA_SHIFT = common dso_local global i32 0, align 4
@VI6_RPF_MULT_ALPHA = common dso_local global i32 0, align 4
@VI6_RPF_MULT_ALPHA_RATIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @rpf_configure_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpf_configure_frame(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca %struct.vsp1_rwpf*, align 8
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %10 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %11 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %10, i32 0, i32 0
  %12 = call %struct.vsp1_rwpf* @to_rwpf(i32* %11)
  store %struct.vsp1_rwpf* %12, %struct.vsp1_rwpf** %9, align 8
  %13 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %14 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %15 = load i32, i32* @VI6_RPF_VRTCOL_SET, align 4
  %16 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %17 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VI6_RPF_VRTCOL_SET_LAYA_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = call i32 @vsp1_rpf_write(%struct.vsp1_rwpf* %13, %struct.vsp1_dl_body* %14, i32 %15, i32 %20)
  %22 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %23 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %24 = load i32, i32* @VI6_RPF_MULT_ALPHA, align 4
  %25 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %26 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %29 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VI6_RPF_MULT_ALPHA_RATIO_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %27, %32
  %34 = call i32 @vsp1_rpf_write(%struct.vsp1_rwpf* %22, %struct.vsp1_dl_body* %23, i32 %24, i32 %33)
  %35 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %36 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %37 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %9, align 8
  %38 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @vsp1_pipeline_propagate_alpha(%struct.vsp1_pipeline* %35, %struct.vsp1_dl_body* %36, i32 %39)
  ret void
}

declare dso_local %struct.vsp1_rwpf* @to_rwpf(i32*) #1

declare dso_local i32 @vsp1_rpf_write(%struct.vsp1_rwpf*, %struct.vsp1_dl_body*, i32, i32) #1

declare dso_local i32 @vsp1_pipeline_propagate_alpha(%struct.vsp1_pipeline*, %struct.vsp1_dl_body*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
