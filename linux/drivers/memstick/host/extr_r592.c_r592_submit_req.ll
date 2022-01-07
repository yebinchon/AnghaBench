; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_submit_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_submit_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32 }
%struct.r592_device = type { i32, i32, i64 }

@.str = private unnamed_addr constant [36 x i8] c"IO thread woken to process requests\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.memstick_host*)* @r592_submit_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r592_submit_req(%struct.memstick_host* %0) #0 {
  %2 = alloca %struct.memstick_host*, align 8
  %3 = alloca %struct.r592_device*, align 8
  %4 = alloca i64, align 8
  store %struct.memstick_host* %0, %struct.memstick_host** %2, align 8
  %5 = load %struct.memstick_host*, %struct.memstick_host** %2, align 8
  %6 = call %struct.r592_device* @memstick_priv(%struct.memstick_host* %5)
  store %struct.r592_device* %6, %struct.r592_device** %3, align 8
  %7 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %8 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %29

12:                                               ; preds = %1
  %13 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %14 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %13, i32 0, i32 0
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %18 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @wake_up_process(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = call i32 @dbg_verbose(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %12
  %25 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %26 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %25, i32 0, i32 0
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  br label %29

29:                                               ; preds = %24, %11
  ret void
}

declare dso_local %struct.r592_device* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @wake_up_process(i32) #1

declare dso_local i32 @dbg_verbose(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
