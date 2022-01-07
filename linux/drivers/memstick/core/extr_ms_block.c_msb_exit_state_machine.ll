; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_exit_state_machine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_exit_state_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@h_msb_default_bad = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i32)* @msb_exit_state_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_exit_state_machine(%struct.msb_data* %0, i32 %1) #0 {
  %3 = alloca %struct.msb_data*, align 8
  %4 = alloca i32, align 4
  store %struct.msb_data* %0, %struct.msb_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %6 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp eq i32 %7, -1
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %12 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %11, i32 0, i32 0
  store i32 -1, i32* %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %15 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @h_msb_default_bad, align 4
  %17 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %18 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  store i32 %16, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %25 = call i32 @msb_invalidate_reg_window(%struct.msb_data* %24)
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %28 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @complete(i32* %30)
  %32 = load i32, i32* @ENXIO, align 4
  %33 = sub nsw i32 0, %32
  ret i32 %33
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @msb_invalidate_reg_window(%struct.msb_data*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
