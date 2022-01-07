; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-input.c_tm6000_ir_int_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-input.c_tm6000_ir_int_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { %struct.tm6000_IR* }
%struct.tm6000_IR = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tm6000_ir_int_stop(%struct.tm6000_core* %0) #0 {
  %2 = alloca %struct.tm6000_core*, align 8
  %3 = alloca %struct.tm6000_IR*, align 8
  store %struct.tm6000_core* %0, %struct.tm6000_core** %2, align 8
  %4 = load %struct.tm6000_core*, %struct.tm6000_core** %2, align 8
  %5 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %4, i32 0, i32 0
  %6 = load %struct.tm6000_IR*, %struct.tm6000_IR** %5, align 8
  store %struct.tm6000_IR* %6, %struct.tm6000_IR** %3, align 8
  %7 = load %struct.tm6000_IR*, %struct.tm6000_IR** %3, align 8
  %8 = icmp ne %struct.tm6000_IR* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.tm6000_IR*, %struct.tm6000_IR** %3, align 8
  %11 = getelementptr inbounds %struct.tm6000_IR, %struct.tm6000_IR* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %9, %1
  br label %20

15:                                               ; preds = %9
  %16 = load %struct.tm6000_IR*, %struct.tm6000_IR** %3, align 8
  %17 = getelementptr inbounds %struct.tm6000_IR, %struct.tm6000_IR* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__tm6000_ir_int_stop(i32 %18)
  br label %20

20:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @__tm6000_ir_int_stop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
