; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-mem2mem.c_v4l2_m2m_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_m2m_dev = type { i32, i32, i32, %struct.v4l2_m2m_ops*, i32* }
%struct.v4l2_m2m_ops = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@v4l2_m2m_device_run_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.v4l2_m2m_dev* @v4l2_m2m_init(%struct.v4l2_m2m_ops* %0) #0 {
  %2 = alloca %struct.v4l2_m2m_dev*, align 8
  %3 = alloca %struct.v4l2_m2m_ops*, align 8
  %4 = alloca %struct.v4l2_m2m_dev*, align 8
  store %struct.v4l2_m2m_ops* %0, %struct.v4l2_m2m_ops** %3, align 8
  %5 = load %struct.v4l2_m2m_ops*, %struct.v4l2_m2m_ops** %3, align 8
  %6 = icmp ne %struct.v4l2_m2m_ops* %5, null
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.v4l2_m2m_ops*, %struct.v4l2_m2m_ops** %3, align 8
  %9 = getelementptr inbounds %struct.v4l2_m2m_ops, %struct.v4l2_m2m_ops* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %7, %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.v4l2_m2m_dev* @ERR_PTR(i32 %18)
  store %struct.v4l2_m2m_dev* %19, %struct.v4l2_m2m_dev** %2, align 8
  br label %46

20:                                               ; preds = %7
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.v4l2_m2m_dev* @kzalloc(i32 32, i32 %21)
  store %struct.v4l2_m2m_dev* %22, %struct.v4l2_m2m_dev** %4, align 8
  %23 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %4, align 8
  %24 = icmp ne %struct.v4l2_m2m_dev* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  %28 = call %struct.v4l2_m2m_dev* @ERR_PTR(i32 %27)
  store %struct.v4l2_m2m_dev* %28, %struct.v4l2_m2m_dev** %2, align 8
  br label %46

29:                                               ; preds = %20
  %30 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %4, align 8
  %31 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %30, i32 0, i32 4
  store i32* null, i32** %31, align 8
  %32 = load %struct.v4l2_m2m_ops*, %struct.v4l2_m2m_ops** %3, align 8
  %33 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %4, align 8
  %34 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %33, i32 0, i32 3
  store %struct.v4l2_m2m_ops* %32, %struct.v4l2_m2m_ops** %34, align 8
  %35 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %4, align 8
  %36 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %35, i32 0, i32 2
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %4, align 8
  %39 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %38, i32 0, i32 1
  %40 = call i32 @spin_lock_init(i32* %39)
  %41 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %4, align 8
  %42 = getelementptr inbounds %struct.v4l2_m2m_dev, %struct.v4l2_m2m_dev* %41, i32 0, i32 0
  %43 = load i32, i32* @v4l2_m2m_device_run_work, align 4
  %44 = call i32 @INIT_WORK(i32* %42, i32 %43)
  %45 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %4, align 8
  store %struct.v4l2_m2m_dev* %45, %struct.v4l2_m2m_dev** %2, align 8
  br label %46

46:                                               ; preds = %29, %25, %16
  %47 = load %struct.v4l2_m2m_dev*, %struct.v4l2_m2m_dev** %2, align 8
  ret %struct.v4l2_m2m_dev* %47
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.v4l2_m2m_dev* @ERR_PTR(i32) #1

declare dso_local %struct.v4l2_m2m_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
