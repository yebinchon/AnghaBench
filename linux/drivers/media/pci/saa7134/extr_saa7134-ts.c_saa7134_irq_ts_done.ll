; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-ts.c_saa7134_irq_ts_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-ts.c_saa7134_irq_ts_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7134_irq_ts_done(%struct.saa7134_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %7 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %10 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %2
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %16 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @V4L2_FIELD_TOP, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load i64, i64* %4, align 8
  %23 = and i64 %22, 1048576
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %44

26:                                               ; preds = %21
  br label %33

27:                                               ; preds = %14
  %28 = load i64, i64* %4, align 8
  %29 = and i64 %28, 1048576
  %30 = icmp ne i64 %29, 1048576
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %44

32:                                               ; preds = %27
  br label %33

33:                                               ; preds = %32, %26
  %34 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %35 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %36 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %35, i32 0, i32 2
  %37 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %38 = call i32 @saa7134_buffer_finish(%struct.saa7134_dev* %34, %struct.TYPE_3__* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %2
  %40 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %41 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %42 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %41, i32 0, i32 2
  %43 = call i32 @saa7134_buffer_next(%struct.saa7134_dev* %40, %struct.TYPE_3__* %42)
  br label %44

44:                                               ; preds = %39, %31, %25
  %45 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %46 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock(i32* %46)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @saa7134_buffer_finish(%struct.saa7134_dev*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @saa7134_buffer_next(%struct.saa7134_dev*, %struct.TYPE_3__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
