; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_hw = type { i64, i64, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@REG_ICTL_MASK_ALL = common dso_local global i32 0, align 4
@fjes_hw_update_zone_task = common dso_local global i32 0, align 4
@fjes_hw_epstop_task = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@FJES_DEBUG_BUFFER_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fjes_hw_init(%struct.fjes_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fjes_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.fjes_hw* %0, %struct.fjes_hw** %3, align 8
  %5 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %6 = call i32 @fjes_hw_iomap(%struct.fjes_hw* %5)
  %7 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %8 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %7, i32 0, i32 6
  store i32 %6, i32* %8, align 8
  %9 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %10 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %78

16:                                               ; preds = %1
  %17 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %18 = call i32 @fjes_hw_reset(%struct.fjes_hw* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %78

23:                                               ; preds = %16
  %24 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %25 = load i32, i32* @REG_ICTL_MASK_ALL, align 4
  %26 = call i32 @fjes_hw_set_irqmask(%struct.fjes_hw* %24, i32 %25, i32 1)
  %27 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %28 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %27, i32 0, i32 5
  %29 = load i32, i32* @fjes_hw_update_zone_task, align 4
  %30 = call i32 @INIT_WORK(i32* %28, i32 %29)
  %31 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %32 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %31, i32 0, i32 4
  %33 = load i32, i32* @fjes_hw_epstop_task, align 4
  %34 = call i32 @INIT_WORK(i32* %32, i32 %33)
  %35 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %36 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %40 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %39, i32 0, i32 3
  %41 = call i32 @spin_lock_init(i32* %40)
  %42 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %43 = call i64 @fjes_hw_get_max_epid(%struct.fjes_hw* %42)
  %44 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %45 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %47 = call i64 @fjes_hw_get_my_epid(%struct.fjes_hw* %46)
  %48 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %49 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %51 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %23
  %55 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %56 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %59 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %54, %23
  %63 = load i32, i32* @ENXIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %78

65:                                               ; preds = %54
  %66 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %67 = call i32 @fjes_hw_setup(%struct.fjes_hw* %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* @FJES_DEBUG_BUFFER_SIZE, align 4
  %69 = call i32 @vzalloc(i32 %68)
  %70 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %71 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @FJES_DEBUG_BUFFER_SIZE, align 4
  %74 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %75 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* %4, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %65, %62, %21, %13
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @fjes_hw_iomap(%struct.fjes_hw*) #1

declare dso_local i32 @fjes_hw_reset(%struct.fjes_hw*) #1

declare dso_local i32 @fjes_hw_set_irqmask(%struct.fjes_hw*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i64 @fjes_hw_get_max_epid(%struct.fjes_hw*) #1

declare dso_local i64 @fjes_hw_get_my_epid(%struct.fjes_hw*) #1

declare dso_local i32 @fjes_hw_setup(%struct.fjes_hw*) #1

declare dso_local i32 @vzalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
