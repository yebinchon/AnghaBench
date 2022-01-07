; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-debugfs.c_hva_debugfs_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-debugfs.c_hva_debugfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HVA_NAME = common dso_local global i32 0, align 4
@device = common dso_local global i32 0, align 4
@encoders = common dso_local global i32 0, align 4
@last = common dso_local global i32 0, align 4
@regs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hva_debugfs_create(%struct.hva_dev* %0) #0 {
  %2 = alloca %struct.hva_dev*, align 8
  store %struct.hva_dev* %0, %struct.hva_dev** %2, align 8
  %3 = load i32, i32* @HVA_NAME, align 4
  %4 = call i32 @debugfs_create_dir(i32 %3, i32* null)
  %5 = load %struct.hva_dev*, %struct.hva_dev** %2, align 8
  %6 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 %4, i32* %7, align 4
  %8 = load %struct.hva_dev*, %struct.hva_dev** %2, align 8
  %9 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %35

14:                                               ; preds = %1
  %15 = load i32, i32* @device, align 4
  %16 = call i32 @hva_dbg_create_entry(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %14
  br label %35

19:                                               ; preds = %14
  %20 = load i32, i32* @encoders, align 4
  %21 = call i32 @hva_dbg_create_entry(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %35

24:                                               ; preds = %19
  %25 = load i32, i32* @last, align 4
  %26 = call i32 @hva_dbg_create_entry(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  br label %35

29:                                               ; preds = %24
  %30 = load i32, i32* @regs, align 4
  %31 = call i32 @hva_dbg_create_entry(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %35

34:                                               ; preds = %29
  br label %38

35:                                               ; preds = %33, %28, %23, %18, %13
  %36 = load %struct.hva_dev*, %struct.hva_dev** %2, align 8
  %37 = call i32 @hva_debugfs_remove(%struct.hva_dev* %36)
  br label %38

38:                                               ; preds = %35, %34
  ret void
}

declare dso_local i32 @debugfs_create_dir(i32, i32*) #1

declare dso_local i32 @hva_dbg_create_entry(i32) #1

declare dso_local i32 @hva_debugfs_remove(%struct.hva_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
