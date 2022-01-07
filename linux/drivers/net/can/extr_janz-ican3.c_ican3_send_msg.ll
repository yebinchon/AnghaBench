; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ican3_dev = type { i64, i32 }
%struct.ican3_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ican3_dev*, %struct.ican3_msg*)* @ican3_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ican3_send_msg(%struct.ican3_dev* %0, %struct.ican3_msg* %1) #0 {
  %3 = alloca %struct.ican3_dev*, align 8
  %4 = alloca %struct.ican3_msg*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ican3_dev* %0, %struct.ican3_dev** %3, align 8
  store %struct.ican3_msg* %1, %struct.ican3_msg** %4, align 8
  %7 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %12 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %17 = load %struct.ican3_msg*, %struct.ican3_msg** %4, align 8
  %18 = call i32 @ican3_old_send_msg(%struct.ican3_dev* %16, %struct.ican3_msg* %17)
  store i32 %18, i32* %6, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %21 = load %struct.ican3_msg*, %struct.ican3_msg** %4, align 8
  %22 = call i32 @ican3_new_send_msg(%struct.ican3_dev* %20, %struct.ican3_msg* %21)
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.ican3_dev*, %struct.ican3_dev** %3, align 8
  %25 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %5, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ican3_old_send_msg(%struct.ican3_dev*, %struct.ican3_msg*) #1

declare dso_local i32 @ican3_new_send_msg(%struct.ican3_dev*, %struct.ican3_msg*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
