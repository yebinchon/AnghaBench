; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_reinit_bt848.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-driver.c_bttv_reinit_bt848.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32, i32, %struct.TYPE_3__, i32, i64, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@bttv_verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"%d: reset, reinitialize\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*)* @bttv_reinit_bt848 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_reinit_bt848(%struct.bttv* %0) #0 {
  %2 = alloca %struct.bttv*, align 8
  %3 = alloca i64, align 8
  store %struct.bttv* %0, %struct.bttv** %2, align 8
  %4 = load i64, i64* @bttv_verbose, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.bttv*, %struct.bttv** %2, align 8
  %8 = getelementptr inbounds %struct.bttv, %struct.bttv* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %6, %1
  %13 = load %struct.bttv*, %struct.bttv** %2, align 8
  %14 = getelementptr inbounds %struct.bttv, %struct.bttv* %13, i32 0, i32 3
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.bttv*, %struct.bttv** %2, align 8
  %18 = getelementptr inbounds %struct.bttv, %struct.bttv* %17, i32 0, i32 4
  store i64 0, i64* %18, align 8
  %19 = load %struct.bttv*, %struct.bttv** %2, align 8
  %20 = call i32 @bttv_set_dma(%struct.bttv* %19, i32 0)
  %21 = load %struct.bttv*, %struct.bttv** %2, align 8
  %22 = getelementptr inbounds %struct.bttv, %struct.bttv* %21, i32 0, i32 3
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.bttv*, %struct.bttv** %2, align 8
  %26 = call i32 @init_bt848(%struct.bttv* %25)
  %27 = load %struct.bttv*, %struct.bttv** %2, align 8
  %28 = getelementptr inbounds %struct.bttv, %struct.bttv* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = load %struct.bttv*, %struct.bttv** %2, align 8
  %31 = load %struct.bttv*, %struct.bttv** %2, align 8
  %32 = getelementptr inbounds %struct.bttv, %struct.bttv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bttv*, %struct.bttv** %2, align 8
  %35 = getelementptr inbounds %struct.bttv, %struct.bttv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @set_input(%struct.bttv* %30, i32 %33, i32 %36)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bttv_set_dma(%struct.bttv*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @init_bt848(%struct.bttv*) #1

declare dso_local i32 @set_input(%struct.bttv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
