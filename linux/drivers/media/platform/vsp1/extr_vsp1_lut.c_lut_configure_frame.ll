; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_lut.c_lut_configure_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_lut.c_lut_configure_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i32 }
%struct.vsp1_pipeline = type { i32 }
%struct.vsp1_dl_list = type { i32 }
%struct.vsp1_dl_body = type { i32 }
%struct.vsp1_lut = type { i32, %struct.vsp1_dl_body* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_entity*, %struct.vsp1_pipeline*, %struct.vsp1_dl_list*, %struct.vsp1_dl_body*)* @lut_configure_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lut_configure_frame(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_list* %2, %struct.vsp1_dl_body* %3) #0 {
  %5 = alloca %struct.vsp1_entity*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_dl_list*, align 8
  %8 = alloca %struct.vsp1_dl_body*, align 8
  %9 = alloca %struct.vsp1_lut*, align 8
  %10 = alloca %struct.vsp1_dl_body*, align 8
  %11 = alloca i64, align 8
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %5, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %6, align 8
  store %struct.vsp1_dl_list* %2, %struct.vsp1_dl_list** %7, align 8
  store %struct.vsp1_dl_body* %3, %struct.vsp1_dl_body** %8, align 8
  %12 = load %struct.vsp1_entity*, %struct.vsp1_entity** %5, align 8
  %13 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %12, i32 0, i32 0
  %14 = call %struct.vsp1_lut* @to_lut(i32* %13)
  store %struct.vsp1_lut* %14, %struct.vsp1_lut** %9, align 8
  %15 = load %struct.vsp1_lut*, %struct.vsp1_lut** %9, align 8
  %16 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %15, i32 0, i32 0
  %17 = load i64, i64* %11, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.vsp1_lut*, %struct.vsp1_lut** %9, align 8
  %20 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %19, i32 0, i32 1
  %21 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %20, align 8
  store %struct.vsp1_dl_body* %21, %struct.vsp1_dl_body** %10, align 8
  %22 = load %struct.vsp1_lut*, %struct.vsp1_lut** %9, align 8
  %23 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %22, i32 0, i32 1
  store %struct.vsp1_dl_body* null, %struct.vsp1_dl_body** %23, align 8
  %24 = load %struct.vsp1_lut*, %struct.vsp1_lut** %9, align 8
  %25 = getelementptr inbounds %struct.vsp1_lut, %struct.vsp1_lut* %24, i32 0, i32 0
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %10, align 8
  %29 = icmp ne %struct.vsp1_dl_body* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %4
  %31 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %7, align 8
  %32 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %10, align 8
  %33 = call i32 @vsp1_dl_list_add_body(%struct.vsp1_dl_list* %31, %struct.vsp1_dl_body* %32)
  %34 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %10, align 8
  %35 = call i32 @vsp1_dl_body_put(%struct.vsp1_dl_body* %34)
  br label %36

36:                                               ; preds = %30, %4
  ret void
}

declare dso_local %struct.vsp1_lut* @to_lut(i32*) #1

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
