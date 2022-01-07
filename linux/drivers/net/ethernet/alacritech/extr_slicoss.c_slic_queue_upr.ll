; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_queue_upr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_queue_upr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { %struct.slic_upr_list }
%struct.slic_upr_list = type { i32, i32, i32 }
%struct.slic_upr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*, %struct.slic_upr*)* @slic_queue_upr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_queue_upr(%struct.slic_device* %0, %struct.slic_upr* %1) #0 {
  %3 = alloca %struct.slic_device*, align 8
  %4 = alloca %struct.slic_upr*, align 8
  %5 = alloca %struct.slic_upr_list*, align 8
  %6 = alloca i32, align 4
  store %struct.slic_device* %0, %struct.slic_device** %3, align 8
  store %struct.slic_upr* %1, %struct.slic_upr** %4, align 8
  %7 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %8 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %7, i32 0, i32 0
  store %struct.slic_upr_list* %8, %struct.slic_upr_list** %5, align 8
  %9 = load %struct.slic_upr_list*, %struct.slic_upr_list** %5, align 8
  %10 = getelementptr inbounds %struct.slic_upr_list, %struct.slic_upr_list* %9, i32 0, i32 1
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.slic_upr_list*, %struct.slic_upr_list** %5, align 8
  %13 = getelementptr inbounds %struct.slic_upr_list, %struct.slic_upr_list* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.slic_upr*, %struct.slic_upr** %4, align 8
  %16 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %15, i32 0, i32 0
  %17 = call i32 @INIT_LIST_HEAD(i32* %16)
  %18 = load %struct.slic_upr*, %struct.slic_upr** %4, align 8
  %19 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %18, i32 0, i32 0
  %20 = load %struct.slic_upr_list*, %struct.slic_upr_list** %5, align 8
  %21 = getelementptr inbounds %struct.slic_upr_list, %struct.slic_upr_list* %20, i32 0, i32 2
  %22 = call i32 @list_add_tail(i32* %19, i32* %21)
  %23 = load %struct.slic_upr_list*, %struct.slic_upr_list** %5, align 8
  %24 = getelementptr inbounds %struct.slic_upr_list, %struct.slic_upr_list* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.slic_upr_list*, %struct.slic_upr_list** %5, align 8
  %26 = getelementptr inbounds %struct.slic_upr_list, %struct.slic_upr_list* %25, i32 0, i32 1
  %27 = call i32 @spin_unlock_bh(i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %2
  %31 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %32 = load %struct.slic_upr*, %struct.slic_upr** %4, align 8
  %33 = call i32 @slic_start_upr(%struct.slic_device* %31, %struct.slic_upr* %32)
  br label %34

34:                                               ; preds = %30, %2
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @slic_start_upr(%struct.slic_device*, %struct.slic_upr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
