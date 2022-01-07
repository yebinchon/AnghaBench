; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_cadet_start_rds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-cadet.c_cadet_start_rds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cadet = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@cadet_handler = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cadet*)* @cadet_start_rds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cadet_start_rds(%struct.cadet* %0) #0 {
  %2 = alloca %struct.cadet*, align 8
  store %struct.cadet* %0, %struct.cadet** %2, align 8
  %3 = load %struct.cadet*, %struct.cadet** %2, align 8
  %4 = getelementptr inbounds %struct.cadet, %struct.cadet* %3, i32 0, i32 0
  store i32 1, i32* %4, align 8
  %5 = load %struct.cadet*, %struct.cadet** %2, align 8
  %6 = getelementptr inbounds %struct.cadet, %struct.cadet* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @outb(i32 128, i32 %7)
  %9 = load %struct.cadet*, %struct.cadet** %2, align 8
  %10 = getelementptr inbounds %struct.cadet, %struct.cadet* %9, i32 0, i32 1
  %11 = load i32, i32* @cadet_handler, align 4
  %12 = call i32 @timer_setup(%struct.TYPE_3__* %10, i32 %11, i32 0)
  %13 = load i64, i64* @jiffies, align 8
  %14 = call i64 @msecs_to_jiffies(i32 50)
  %15 = add nsw i64 %13, %14
  %16 = load %struct.cadet*, %struct.cadet** %2, align 8
  %17 = getelementptr inbounds %struct.cadet, %struct.cadet* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i64 %15, i64* %18, align 8
  %19 = load %struct.cadet*, %struct.cadet** %2, align 8
  %20 = getelementptr inbounds %struct.cadet, %struct.cadet* %19, i32 0, i32 1
  %21 = call i32 @add_timer(%struct.TYPE_3__* %20)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @timer_setup(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
