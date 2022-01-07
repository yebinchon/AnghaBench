; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-input.c_bttv_ir_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-input.c_bttv_ir_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv_ir = type { i32, i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@bttv_input_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@bttv_rc5_timer_end = common dso_local global i32 0, align 4
@ir_rc5_remote_gap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv_ir*)* @bttv_ir_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_ir_start(%struct.bttv_ir* %0) #0 {
  %2 = alloca %struct.bttv_ir*, align 8
  store %struct.bttv_ir* %0, %struct.bttv_ir** %2, align 8
  %3 = load %struct.bttv_ir*, %struct.bttv_ir** %2, align 8
  %4 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %3, i32 0, i32 4
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load %struct.bttv_ir*, %struct.bttv_ir** %2, align 8
  %9 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %8, i32 0, i32 2
  %10 = load i32, i32* @bttv_input_timer, align 4
  %11 = call i32 @timer_setup(%struct.TYPE_3__* %9, i32 %10, i32 0)
  %12 = load i64, i64* @jiffies, align 8
  %13 = call i64 @msecs_to_jiffies(i32 1000)
  %14 = add nsw i64 %12, %13
  %15 = load %struct.bttv_ir*, %struct.bttv_ir** %2, align 8
  %16 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = load %struct.bttv_ir*, %struct.bttv_ir** %2, align 8
  %19 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %18, i32 0, i32 2
  %20 = call i32 @add_timer(%struct.TYPE_3__* %19)
  br label %37

21:                                               ; preds = %1
  %22 = load %struct.bttv_ir*, %struct.bttv_ir** %2, align 8
  %23 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.bttv_ir*, %struct.bttv_ir** %2, align 8
  %28 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %27, i32 0, i32 2
  %29 = load i32, i32* @bttv_rc5_timer_end, align 4
  %30 = call i32 @timer_setup(%struct.TYPE_3__* %28, i32 %29, i32 0)
  %31 = load %struct.bttv_ir*, %struct.bttv_ir** %2, align 8
  %32 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load i32, i32* @ir_rc5_remote_gap, align 4
  %34 = load %struct.bttv_ir*, %struct.bttv_ir** %2, align 8
  %35 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %26, %21
  br label %37

37:                                               ; preds = %36, %7
  ret void
}

declare dso_local i32 @timer_setup(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
