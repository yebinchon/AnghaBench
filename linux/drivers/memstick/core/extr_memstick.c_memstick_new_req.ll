; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_memstick.c_memstick_new_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_memstick.c_memstick_new_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32 (%struct.memstick_host*)*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@cmd_retries = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memstick_new_req(%struct.memstick_host* %0) #0 {
  %2 = alloca %struct.memstick_host*, align 8
  store %struct.memstick_host* %0, %struct.memstick_host** %2, align 8
  %3 = load %struct.memstick_host*, %struct.memstick_host** %2, align 8
  %4 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %3, i32 0, i32 1
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp ne %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load i32, i32* @cmd_retries, align 4
  %9 = load %struct.memstick_host*, %struct.memstick_host** %2, align 8
  %10 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 8
  %11 = load %struct.memstick_host*, %struct.memstick_host** %2, align 8
  %12 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @reinit_completion(i32* %14)
  %16 = load %struct.memstick_host*, %struct.memstick_host** %2, align 8
  %17 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %16, i32 0, i32 0
  %18 = load i32 (%struct.memstick_host*)*, i32 (%struct.memstick_host*)** %17, align 8
  %19 = load %struct.memstick_host*, %struct.memstick_host** %2, align 8
  %20 = call i32 %18(%struct.memstick_host* %19)
  br label %21

21:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @reinit_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
