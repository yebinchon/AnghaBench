; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-input.c_bttv_input_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-input.c_bttv_input_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv_ir = type { i32, i32, %struct.bttv* }
%struct.bttv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@BTTV_BOARD_ENLTV_FM_2 = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@ir = common dso_local global %struct.bttv_ir* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @bttv_input_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_input_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.bttv_ir*, align 8
  %4 = alloca %struct.bttv*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %6 = ptrtoint %struct.bttv_ir* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.bttv_ir* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.bttv_ir* %9, %struct.bttv_ir** %3, align 8
  %10 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %11 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %10, i32 0, i32 2
  %12 = load %struct.bttv*, %struct.bttv** %11, align 8
  store %struct.bttv* %12, %struct.bttv** %4, align 8
  %13 = load %struct.bttv*, %struct.bttv** %4, align 8
  %14 = getelementptr inbounds %struct.bttv, %struct.bttv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BTTV_BOARD_ENLTV_FM_2, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.bttv*, %struct.bttv** %4, align 8
  %21 = call i32 @ir_enltv_handle_key(%struct.bttv* %20)
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.bttv*, %struct.bttv** %4, align 8
  %24 = call i32 @ir_handle_key(%struct.bttv* %23)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %27 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %26, i32 0, i32 1
  %28 = load i64, i64* @jiffies, align 8
  %29 = load %struct.bttv_ir*, %struct.bttv_ir** %3, align 8
  %30 = getelementptr inbounds %struct.bttv_ir, %struct.bttv_ir* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @msecs_to_jiffies(i32 %31)
  %33 = add nsw i64 %28, %32
  %34 = call i32 @mod_timer(i32* %27, i64 %33)
  ret void
}

declare dso_local %struct.bttv_ir* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @ir_enltv_handle_key(%struct.bttv*) #1

declare dso_local i32 @ir_handle_key(%struct.bttv*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
