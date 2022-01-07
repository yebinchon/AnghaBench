; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_rwpf.c_vsp1_rwpf_init_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_rwpf.c_vsp1_rwpf_init_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_rwpf = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_7__* }

@vsp1_rwpf_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_ALPHA_COMPONENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsp1_rwpf_init_ctrls(%struct.vsp1_rwpf* %0, i32 %1) #0 {
  %3 = alloca %struct.vsp1_rwpf*, align 8
  %4 = alloca i32, align 4
  store %struct.vsp1_rwpf* %0, %struct.vsp1_rwpf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %6 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  %8 = add i32 %7, 1
  %9 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_7__* %6, i32 %8)
  %10 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %11 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %10, i32 0, i32 0
  %12 = load i32, i32* @V4L2_CID_ALPHA_COMPONENT, align 4
  %13 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_7__* %11, i32* @vsp1_rwpf_ctrl_ops, i32 %12, i32 0, i32 255, i32 1, i32 255)
  %14 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %15 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %14, i32 0, i32 0
  %16 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %17 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %19, align 8
  %20 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %3, align 8
  %21 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  ret i32 %23
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_7__*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
