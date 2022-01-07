; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_run_state_machine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_run_state_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i32, i32, i32, %struct.memstick_dev* }
%struct.memstick_dev = type { i32 (%struct.memstick_dev*, %struct.memstick_request**)*, i32, i32, i32 }
%struct.memstick_request = type opaque
%struct.memstick_request.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*, i32 (%struct.memstick_dev*, %struct.memstick_request.0**)*)* @msb_run_state_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_run_state_machine(%struct.msb_data* %0, i32 (%struct.memstick_dev*, %struct.memstick_request.0**)* %1) #0 {
  %3 = alloca %struct.msb_data*, align 8
  %4 = alloca i32 (%struct.memstick_dev*, %struct.memstick_request.0**)*, align 8
  %5 = alloca %struct.memstick_dev*, align 8
  store %struct.msb_data* %0, %struct.msb_data** %3, align 8
  store i32 (%struct.memstick_dev*, %struct.memstick_request.0**)* %1, i32 (%struct.memstick_dev*, %struct.memstick_request.0**)** %4, align 8
  %6 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %7 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %6, i32 0, i32 3
  %8 = load %struct.memstick_dev*, %struct.memstick_dev** %7, align 8
  store %struct.memstick_dev* %8, %struct.memstick_dev** %5, align 8
  %9 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %10 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, -1
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %16 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %18 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %17, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %20 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %19, i32 0, i32 2
  store i32 0, i32* %20, align 8
  %21 = load %struct.memstick_dev*, %struct.memstick_dev** %5, align 8
  %22 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %21, i32 0, i32 3
  %23 = call i32 @memset(i32* %22, i32 0, i32 4)
  %24 = load i32 (%struct.memstick_dev*, %struct.memstick_request.0**)*, i32 (%struct.memstick_dev*, %struct.memstick_request.0**)** %4, align 8
  %25 = bitcast i32 (%struct.memstick_dev*, %struct.memstick_request.0**)* %24 to i32 (%struct.memstick_dev*, %struct.memstick_request**)*
  %26 = load %struct.memstick_dev*, %struct.memstick_dev** %5, align 8
  %27 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %26, i32 0, i32 0
  store i32 (%struct.memstick_dev*, %struct.memstick_request**)* %25, i32 (%struct.memstick_dev*, %struct.memstick_request**)** %27, align 8
  %28 = load %struct.memstick_dev*, %struct.memstick_dev** %5, align 8
  %29 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memstick_new_req(i32 %30)
  %32 = load %struct.memstick_dev*, %struct.memstick_dev** %5, align 8
  %33 = getelementptr inbounds %struct.memstick_dev, %struct.memstick_dev* %32, i32 0, i32 1
  %34 = call i32 @wait_for_completion(i32* %33)
  %35 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %36 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, -1
  %39 = zext i1 %38 to i32
  %40 = call i32 @WARN_ON(i32 %39)
  %41 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %42 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  ret i32 %43
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memstick_new_req(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
