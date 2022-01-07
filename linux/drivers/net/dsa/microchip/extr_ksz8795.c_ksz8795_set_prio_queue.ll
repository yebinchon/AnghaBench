; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_set_prio_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz8795.c_ksz8795_set_prio_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32 }

@PORT_QUEUE_SPLIT_4 = common dso_local global i32 0, align 4
@PORT_QUEUE_SPLIT_2 = common dso_local global i32 0, align 4
@PORT_QUEUE_SPLIT_1 = common dso_local global i32 0, align 4
@REG_PORT_CTRL_0 = common dso_local global i32 0, align 4
@P_DROP_TAG_CTRL = common dso_local global i32 0, align 4
@PORT_QUEUE_SPLIT_L = common dso_local global i32 0, align 4
@PORT_QUEUE_SPLIT_H = common dso_local global i32 0, align 4
@REG_SW_CTRL_19 = common dso_local global i32 0, align 4
@SW_OUT_RATE_LIMIT_QUEUE_BASED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32, i32)* @ksz8795_set_prio_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz8795_set_prio_queue(%struct.ksz_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ksz_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  switch i32 %9, label %14 [
    i32 4, label %10
    i32 3, label %10
    i32 2, label %12
  ]

10:                                               ; preds = %3, %3
  %11 = load i32, i32* @PORT_QUEUE_SPLIT_4, align 4
  store i32 %11, i32* %6, align 4
  br label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @PORT_QUEUE_SPLIT_2, align 4
  store i32 %13, i32* %6, align 4
  br label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @PORT_QUEUE_SPLIT_1, align 4
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %14, %12, %10
  %17 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @REG_PORT_CTRL_0, align 4
  %20 = call i32 @ksz_pread8(%struct.ksz_device* %17, i32 %18, i32 %19, i32* %8)
  %21 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @P_DROP_TAG_CTRL, align 4
  %24 = call i32 @ksz_pread8(%struct.ksz_device* %21, i32 %22, i32 %23, i32* %7)
  %25 = load i32, i32* @PORT_QUEUE_SPLIT_L, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %8, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @PORT_QUEUE_SPLIT_2, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %16
  %34 = load i32, i32* @PORT_QUEUE_SPLIT_L, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %33, %16
  %38 = load i32, i32* @PORT_QUEUE_SPLIT_H, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %7, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @PORT_QUEUE_SPLIT_4, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %37
  %47 = load i32, i32* @PORT_QUEUE_SPLIT_H, align 4
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %46, %37
  %51 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @REG_PORT_CTRL_0, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @ksz_pwrite8(%struct.ksz_device* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @P_DROP_TAG_CTRL, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @ksz_pwrite8(%struct.ksz_device* %56, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @PORT_QUEUE_SPLIT_1, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %50
  %65 = load %struct.ksz_device*, %struct.ksz_device** %4, align 8
  %66 = load i32, i32* @REG_SW_CTRL_19, align 4
  %67 = load i32, i32* @SW_OUT_RATE_LIMIT_QUEUE_BASED, align 4
  %68 = call i32 @ksz_cfg(%struct.ksz_device* %65, i32 %66, i32 %67, i32 1)
  br label %69

69:                                               ; preds = %64, %50
  ret void
}

declare dso_local i32 @ksz_pread8(%struct.ksz_device*, i32, i32, i32*) #1

declare dso_local i32 @ksz_pwrite8(%struct.ksz_device*, i32, i32, i32) #1

declare dso_local i32 @ksz_cfg(%struct.ksz_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
