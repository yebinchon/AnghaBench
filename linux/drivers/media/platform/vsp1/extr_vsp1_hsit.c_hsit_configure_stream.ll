; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_hsit.c_hsit_configure_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_hsit.c_hsit_configure_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.vsp1_hsit = type { i64 }

@VI6_HSI_CTRL = common dso_local global i32 0, align 4
@VI6_HSI_CTRL_EN = common dso_local global i32 0, align 4
@VI6_HST_CTRL = common dso_local global i32 0, align 4
@VI6_HST_CTRL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @hsit_configure_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hsit_configure_stream(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca %struct.vsp1_hsit*, align 8
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %10 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %11 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %10, i32 0, i32 0
  %12 = call %struct.vsp1_hsit* @to_hsit(i32* %11)
  store %struct.vsp1_hsit* %12, %struct.vsp1_hsit** %9, align 8
  %13 = load %struct.vsp1_hsit*, %struct.vsp1_hsit** %9, align 8
  %14 = getelementptr inbounds %struct.vsp1_hsit, %struct.vsp1_hsit* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.vsp1_hsit*, %struct.vsp1_hsit** %9, align 8
  %19 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %20 = load i32, i32* @VI6_HSI_CTRL, align 4
  %21 = load i32, i32* @VI6_HSI_CTRL_EN, align 4
  %22 = call i32 @vsp1_hsit_write(%struct.vsp1_hsit* %18, %struct.vsp1_dl_body* %19, i32 %20, i32 %21)
  br label %29

23:                                               ; preds = %4
  %24 = load %struct.vsp1_hsit*, %struct.vsp1_hsit** %9, align 8
  %25 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %8, align 8
  %26 = load i32, i32* @VI6_HST_CTRL, align 4
  %27 = load i32, i32* @VI6_HST_CTRL_EN, align 4
  %28 = call i32 @vsp1_hsit_write(%struct.vsp1_hsit* %24, %struct.vsp1_dl_body* %25, i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %17
  ret void
}

declare dso_local %struct.vsp1_hsit* @to_hsit(i32*) #1

declare dso_local i32 @vsp1_hsit_write(%struct.vsp1_hsit*, %struct.vsp1_dl_body*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
