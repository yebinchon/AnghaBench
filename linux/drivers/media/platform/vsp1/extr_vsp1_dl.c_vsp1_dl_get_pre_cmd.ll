; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_get_pre_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_get_pre_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_dl_ext_cmd = type { i32 }
%struct.vsp1_dl_list = type { %struct.vsp1_dl_ext_cmd*, %struct.vsp1_dl_manager* }
%struct.vsp1_dl_manager = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vsp1_dl_ext_cmd* @vsp1_dl_get_pre_cmd(%struct.vsp1_dl_list* %0) #0 {
  %2 = alloca %struct.vsp1_dl_ext_cmd*, align 8
  %3 = alloca %struct.vsp1_dl_list*, align 8
  %4 = alloca %struct.vsp1_dl_manager*, align 8
  store %struct.vsp1_dl_list* %0, %struct.vsp1_dl_list** %3, align 8
  %5 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %3, align 8
  %6 = getelementptr inbounds %struct.vsp1_dl_list, %struct.vsp1_dl_list* %5, i32 0, i32 1
  %7 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %6, align 8
  store %struct.vsp1_dl_manager* %7, %struct.vsp1_dl_manager** %4, align 8
  %8 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %3, align 8
  %9 = getelementptr inbounds %struct.vsp1_dl_list, %struct.vsp1_dl_list* %8, i32 0, i32 0
  %10 = load %struct.vsp1_dl_ext_cmd*, %struct.vsp1_dl_ext_cmd** %9, align 8
  %11 = icmp ne %struct.vsp1_dl_ext_cmd* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %3, align 8
  %14 = getelementptr inbounds %struct.vsp1_dl_list, %struct.vsp1_dl_list* %13, i32 0, i32 0
  %15 = load %struct.vsp1_dl_ext_cmd*, %struct.vsp1_dl_ext_cmd** %14, align 8
  store %struct.vsp1_dl_ext_cmd* %15, %struct.vsp1_dl_ext_cmd** %2, align 8
  br label %26

16:                                               ; preds = %1
  %17 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %4, align 8
  %18 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.vsp1_dl_ext_cmd* @vsp1_dl_ext_cmd_get(i32 %19)
  %21 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %3, align 8
  %22 = getelementptr inbounds %struct.vsp1_dl_list, %struct.vsp1_dl_list* %21, i32 0, i32 0
  store %struct.vsp1_dl_ext_cmd* %20, %struct.vsp1_dl_ext_cmd** %22, align 8
  %23 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %3, align 8
  %24 = getelementptr inbounds %struct.vsp1_dl_list, %struct.vsp1_dl_list* %23, i32 0, i32 0
  %25 = load %struct.vsp1_dl_ext_cmd*, %struct.vsp1_dl_ext_cmd** %24, align 8
  store %struct.vsp1_dl_ext_cmd* %25, %struct.vsp1_dl_ext_cmd** %2, align 8
  br label %26

26:                                               ; preds = %16, %12
  %27 = load %struct.vsp1_dl_ext_cmd*, %struct.vsp1_dl_ext_cmd** %2, align 8
  ret %struct.vsp1_dl_ext_cmd* %27
}

declare dso_local %struct.vsp1_dl_ext_cmd* @vsp1_dl_ext_cmd_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
