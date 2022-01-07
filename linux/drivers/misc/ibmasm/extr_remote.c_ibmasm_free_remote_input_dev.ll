; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_remote.c_ibmasm_free_remote_input_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ibmasm/extr_remote.c_ibmasm_free_remote_input_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.service_processor = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ibmasm_free_remote_input_dev(%struct.service_processor* %0) #0 {
  %2 = alloca %struct.service_processor*, align 8
  store %struct.service_processor* %0, %struct.service_processor** %2, align 8
  %3 = load %struct.service_processor*, %struct.service_processor** %2, align 8
  %4 = call i32 @disable_mouse_interrupts(%struct.service_processor* %3)
  %5 = load %struct.service_processor*, %struct.service_processor** %2, align 8
  %6 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @input_unregister_device(i32 %8)
  %10 = load %struct.service_processor*, %struct.service_processor** %2, align 8
  %11 = getelementptr inbounds %struct.service_processor, %struct.service_processor* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @input_unregister_device(i32 %13)
  ret void
}

declare dso_local i32 @disable_mouse_interrupts(%struct.service_processor*) #1

declare dso_local i32 @input_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
