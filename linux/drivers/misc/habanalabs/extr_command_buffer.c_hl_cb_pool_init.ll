; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_buffer.c_hl_cb_pool_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_command_buffer.c_hl_cb_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hl_cb = type { i32, i32 }

@HL_KERNEL_ASID_ID = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_cb_pool_init(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.hl_cb*, align 8
  %5 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %6 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %7 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %6, i32 0, i32 0
  %8 = call i32 @INIT_LIST_HEAD(i32* %7)
  %9 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %10 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %9, i32 0, i32 2
  %11 = call i32 @spin_lock_init(i32* %10)
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %43, %1
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %15 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %13, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %12
  %20 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %21 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %22 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @HL_KERNEL_ASID_ID, align 4
  %26 = call %struct.hl_cb* @hl_cb_alloc(%struct.hl_device* %20, i32 %24, i32 %25)
  store %struct.hl_cb* %26, %struct.hl_cb** %4, align 8
  %27 = load %struct.hl_cb*, %struct.hl_cb** %4, align 8
  %28 = icmp ne %struct.hl_cb* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load %struct.hl_cb*, %struct.hl_cb** %4, align 8
  %31 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.hl_cb*, %struct.hl_cb** %4, align 8
  %33 = getelementptr inbounds %struct.hl_cb, %struct.hl_cb* %32, i32 0, i32 1
  %34 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %35 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %34, i32 0, i32 0
  %36 = call i32 @list_add(i32* %33, i32* %35)
  br label %42

37:                                               ; preds = %19
  %38 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %39 = call i32 @hl_cb_pool_fini(%struct.hl_device* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %47

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %12

46:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %37
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.hl_cb* @hl_cb_alloc(%struct.hl_device*, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @hl_cb_pool_fini(%struct.hl_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
