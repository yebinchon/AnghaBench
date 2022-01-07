; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_list_commit_continuous.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_list_commit_continuous.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_dl_list = type { i32, %struct.vsp1_dl_manager* }
%struct.vsp1_dl_manager = type { %struct.vsp1_dl_list*, %struct.vsp1_dl_list* }

@VSP1_DL_FRAME_END_INTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vsp1_dl_list*)* @vsp1_dl_list_commit_continuous to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsp1_dl_list_commit_continuous(%struct.vsp1_dl_list* %0) #0 {
  %2 = alloca %struct.vsp1_dl_list*, align 8
  %3 = alloca %struct.vsp1_dl_manager*, align 8
  store %struct.vsp1_dl_list* %0, %struct.vsp1_dl_list** %2, align 8
  %4 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %2, align 8
  %5 = getelementptr inbounds %struct.vsp1_dl_list, %struct.vsp1_dl_list* %4, i32 0, i32 1
  %6 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %5, align 8
  store %struct.vsp1_dl_manager* %6, %struct.vsp1_dl_manager** %3, align 8
  %7 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %3, align 8
  %8 = call i64 @vsp1_dl_list_hw_update_pending(%struct.vsp1_dl_manager* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %3, align 8
  %12 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %11, i32 0, i32 1
  %13 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %12, align 8
  %14 = icmp ne %struct.vsp1_dl_list* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %10
  %16 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %3, align 8
  %17 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %16, i32 0, i32 1
  %18 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %17, align 8
  %19 = getelementptr inbounds %struct.vsp1_dl_list, %struct.vsp1_dl_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @VSP1_DL_FRAME_END_INTERNAL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %15, %10
  %25 = phi i1 [ false, %10 ], [ %23, %15 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON(i32 %26)
  %28 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %3, align 8
  %29 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %28, i32 0, i32 1
  %30 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %29, align 8
  %31 = call i32 @__vsp1_dl_list_put(%struct.vsp1_dl_list* %30)
  %32 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %2, align 8
  %33 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %3, align 8
  %34 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %33, i32 0, i32 1
  store %struct.vsp1_dl_list* %32, %struct.vsp1_dl_list** %34, align 8
  br label %45

35:                                               ; preds = %1
  %36 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %2, align 8
  %37 = call i32 @vsp1_dl_list_hw_enqueue(%struct.vsp1_dl_list* %36)
  %38 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %3, align 8
  %39 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %38, i32 0, i32 0
  %40 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %39, align 8
  %41 = call i32 @__vsp1_dl_list_put(%struct.vsp1_dl_list* %40)
  %42 = load %struct.vsp1_dl_list*, %struct.vsp1_dl_list** %2, align 8
  %43 = load %struct.vsp1_dl_manager*, %struct.vsp1_dl_manager** %3, align 8
  %44 = getelementptr inbounds %struct.vsp1_dl_manager, %struct.vsp1_dl_manager* %43, i32 0, i32 0
  store %struct.vsp1_dl_list* %42, %struct.vsp1_dl_list** %44, align 8
  br label %45

45:                                               ; preds = %35, %24
  ret void
}

declare dso_local i64 @vsp1_dl_list_hw_update_pending(%struct.vsp1_dl_manager*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__vsp1_dl_list_put(%struct.vsp1_dl_list*) #1

declare dso_local i32 @vsp1_dl_list_hw_enqueue(%struct.vsp1_dl_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
