; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_handle_upr_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_handle_upr_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { i32 }
%struct.slic_upr = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"no upr found on list\0A\00", align 1
@SLIC_UPR_LSTAT = common dso_local global i64 0, align 8
@SLIC_ISR_UPCERR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*, i32)* @slic_handle_upr_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_handle_upr_irq(%struct.slic_device* %0, i32 %1) #0 {
  %3 = alloca %struct.slic_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.slic_upr*, align 8
  store %struct.slic_device* %0, %struct.slic_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %7 = call %struct.slic_upr* @slic_dequeue_upr(%struct.slic_device* %6)
  store %struct.slic_upr* %7, %struct.slic_upr** %5, align 8
  %8 = load %struct.slic_upr*, %struct.slic_upr** %5, align 8
  %9 = icmp ne %struct.slic_upr* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %12 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @netdev_warn(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %37

15:                                               ; preds = %2
  %16 = load %struct.slic_upr*, %struct.slic_upr** %5, align 8
  %17 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SLIC_UPR_LSTAT, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @SLIC_ISR_UPCERR_MASK, align 4
  %24 = and i32 %22, %23
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %29 = load %struct.slic_upr*, %struct.slic_upr** %5, align 8
  %30 = call i32 @slic_queue_upr(%struct.slic_device* %28, %struct.slic_upr* %29)
  br label %37

31:                                               ; preds = %21
  %32 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %33 = call i32 @slic_handle_link_irq(%struct.slic_device* %32)
  br label %34

34:                                               ; preds = %31, %15
  %35 = load %struct.slic_upr*, %struct.slic_upr** %5, align 8
  %36 = call i32 @kfree(%struct.slic_upr* %35)
  br label %37

37:                                               ; preds = %34, %27, %10
  ret void
}

declare dso_local %struct.slic_upr* @slic_dequeue_upr(%struct.slic_device*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @slic_queue_upr(%struct.slic_device*, %struct.slic_upr*) #1

declare dso_local i32 @slic_handle_link_irq(%struct.slic_device*) #1

declare dso_local i32 @kfree(%struct.slic_upr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
