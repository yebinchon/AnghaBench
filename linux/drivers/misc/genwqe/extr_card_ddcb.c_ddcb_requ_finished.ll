; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_ddcb_requ_finished.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_ddcb.c_ddcb_requ_finished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i64 }
%struct.ddcb_requ = type { i32 }

@GENWQE_REQU_FINISHED = common dso_local global i64 0, align 8
@GENWQE_CARD_USED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genwqe_dev*, %struct.ddcb_requ*)* @ddcb_requ_finished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddcb_requ_finished(%struct.genwqe_dev* %0, %struct.ddcb_requ* %1) #0 {
  %3 = alloca %struct.genwqe_dev*, align 8
  %4 = alloca %struct.ddcb_requ*, align 8
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %3, align 8
  store %struct.ddcb_requ* %1, %struct.ddcb_requ** %4, align 8
  %5 = load %struct.ddcb_requ*, %struct.ddcb_requ** %4, align 8
  %6 = call i64 @ddcb_requ_get_state(%struct.ddcb_requ* %5)
  %7 = load i64, i64* @GENWQE_REQU_FINISHED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = load %struct.genwqe_dev*, %struct.genwqe_dev** %3, align 8
  %11 = getelementptr inbounds %struct.genwqe_dev, %struct.genwqe_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @GENWQE_CARD_USED, align 8
  %14 = icmp ne i64 %12, %13
  br label %15

15:                                               ; preds = %9, %2
  %16 = phi i1 [ true, %2 ], [ %14, %9 ]
  %17 = zext i1 %16 to i32
  ret i32 %17
}

declare dso_local i64 @ddcb_requ_get_state(%struct.ddcb_requ*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
