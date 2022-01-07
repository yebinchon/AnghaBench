; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_list_hw_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_list_hw_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_dl_list = type { i32, %struct.vsp1_dl_manager* }
%struct.vsp1_dl_manager = type { i32, %struct.vsp1_device* }
%struct.vsp1_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_dl_list*)* @vsp1_dl_list_hw_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsp1_dl_list_hw_enqueue(%struct.vsp1_dl_list* %0) #0 {
  %2 = alloca %struct.vsp1_dl_list*, align 8
  %3 = alloca %struct.vsp1_dl_manager*, align 8
  %4 = alloca %struct.vsp1_device*, align 8
  store %struct.vsp1_dl_list* %0, %struct.vsp1_dl_list** %2, align 8
  %5 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %2, align 8
  %6 = getelementptr inbounds %struct.vsp1_dl_list, %struct.vsp1_dl_list* %5, i32 0, i32 1
  %7 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %6, align 8
  store %struct.vsp1_dl_manager* %7, %struct.vsp1_dl_manager** %3, align 8
  %8 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %3, align 8
  %9 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %8, i32 0, i32 1
  %10 = load %struct.vsp1_device*, %struct.vsp1_device** %9, align 8
  store %struct.vsp1_device* %10, %struct.vsp1_device** %4, align 8
  %11 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %12 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %3, align 8
  %13 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @VI6_DL_HDR_ADDR(i32 %14)
  %16 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %2, align 8
  %17 = getelementptr inbounds %struct.vsp1_dl_list, %struct.vsp1_dl_list* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @vsp1_write(%struct.vsp1_device* %11, i32 %15, i32 %18)
  ret void
}

declare dso_local i32 @vsp1_write(%struct.vsp1_device*, i32, i32) #1

declare dso_local i32 @VI6_DL_HDR_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
