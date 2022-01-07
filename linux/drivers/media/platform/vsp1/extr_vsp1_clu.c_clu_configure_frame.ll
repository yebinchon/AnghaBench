; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_clu.c_clu_configure_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_clu.c_clu_configure_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.vsp1_clu = type { i64, i32, %struct.vsp1_dl_body*, i64 }

@VI6_CLU_CTRL_AAI = common dso_local global i32 0, align 4
@VI6_CLU_CTRL_MVS = common dso_local global i32 0, align 4
@VI6_CLU_CTRL_EN = common dso_local global i32 0, align 4
@V4L2_CID_VSP1_CLU_MODE_2D = common dso_local global i64 0, align 8
@VI6_CLU_CTRL_AX1I_2D = common dso_local global i32 0, align 4
@VI6_CLU_CTRL_AX2I_2D = common dso_local global i32 0, align 4
@VI6_CLU_CTRL_OS0_2D = common dso_local global i32 0, align 4
@VI6_CLU_CTRL_OS1_2D = common dso_local global i32 0, align 4
@VI6_CLU_CTRL_OS2_2D = common dso_local global i32 0, align 4
@VI6_CLU_CTRL_M2D = common dso_local global i32 0, align 4
@VI6_CLU_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @clu_configure_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clu_configure_frame(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca %struct.vsp1_clu*, align 8
  %10 = alloca %struct.vsp1_dl_body*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %13 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %14 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %13, i32 0, i32 0
  %15 = call %struct.vsp1_clu* @to_clu(i32* %14)
  store %struct.vsp1_clu* %15, %struct.vsp1_clu** %9, align 8
  %16 = load i32, i32* @VI6_CLU_CTRL_AAI, align 4
  %17 = load i32, i32* @VI6_CLU_CTRL_MVS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @VI6_CLU_CTRL_EN, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %12, align 4
  %21 = load %struct.vsp1_clu*, %struct.vsp1_clu** %9, align 8
  %22 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_CID_VSP1_CLU_MODE_2D, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %45

26:                                               ; preds = %4
  %27 = load %struct.vsp1_clu*, %struct.vsp1_clu** %9, align 8
  %28 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load i32, i32* @VI6_CLU_CTRL_AX1I_2D, align 4
  %33 = load i32, i32* @VI6_CLU_CTRL_AX2I_2D, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @VI6_CLU_CTRL_OS0_2D, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @VI6_CLU_CTRL_OS1_2D, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @VI6_CLU_CTRL_OS2_2D, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @VI6_CLU_CTRL_M2D, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %12, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %31, %26, %4
  %46 = load %struct.vsp1_clu*, %struct.vsp1_clu** %9, align 8
  %47 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %48 = load i32, i32* @VI6_CLU_CTRL, align 4
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @vsp1_clu_write(%struct.vsp1_clu* %46, %struct.vsp1_dl_body* %47, i32 %48, i32 %49)
  %51 = load %struct.vsp1_clu*, %struct.vsp1_clu** %9, align 8
  %52 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %51, i32 0, i32 1
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.vsp1_clu*, %struct.vsp1_clu** %9, align 8
  %56 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %55, i32 0, i32 2
  %57 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %56, align 8
  store %struct.vsp1_dl_body* %57, %struct.vsp1_dl_body** %10, align 8
  %58 = load %struct.vsp1_clu*, %struct.vsp1_clu** %9, align 8
  %59 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %58, i32 0, i32 2
  store %struct.vsp1_dl_body* null, %struct.vsp1_dl_body** %59, align 8
  %60 = load %struct.vsp1_clu*, %struct.vsp1_clu** %9, align 8
  %61 = getelementptr inbounds %struct.vsp1_clu, %struct.vsp1_clu* %60, i32 0, i32 1
  %62 = load i64, i64* %11, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %10, align 8
  %65 = icmp ne %struct.vsp1_dl_body* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %45
  %67 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %7, align 8
  %68 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %10, align 8
  %69 = call i32 @vsp1_dl_list_add_body(%struct.vsp1_dl_list* %67, %struct.vsp1_dl_body* %68)
  %70 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %10, align 8
  %71 = call i32 @vsp1_dl_body_put(%struct.vsp1_dl_body* %70)
  br label %72

72:                                               ; preds = %66, %45
  ret void
}

declare dso_local %struct.vsp1_clu* @to_clu(i32*) #1

declare dso_local i32 @vsp1_clu_write(%struct.vsp1_clu*, %struct.vsp1_dl_body*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vsp1_dl_list_add_body(%struct.vsp1_dl_list*, %struct.vsp1_dl_body*) #1

declare dso_local i32 @vsp1_dl_body_put(%struct.vsp1_dl_body*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
