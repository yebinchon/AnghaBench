; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_cs.c_softingcs_find_platform_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/softing/extr_softing_cs.c_softingcs_find_platform_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.softing_platform_data = type { i32, i32 }

@softingcs_platform_data = common dso_local global %struct.softing_platform_data* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.softing_platform_data* (i32, i32)* @softingcs_find_platform_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.softing_platform_data* @softingcs_find_platform_data(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.softing_platform_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.softing_platform_data*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.softing_platform_data*, %struct.softing_platform_data** @softingcs_platform_data, align 8
  store %struct.softing_platform_data* %7, %struct.softing_platform_data** %6, align 8
  br label %8

8:                                                ; preds = %28, %2
  %9 = load %struct.softing_platform_data*, %struct.softing_platform_data** %6, align 8
  %10 = getelementptr inbounds %struct.softing_platform_data, %struct.softing_platform_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %31

13:                                               ; preds = %8
  %14 = load %struct.softing_platform_data*, %struct.softing_platform_data** %6, align 8
  %15 = getelementptr inbounds %struct.softing_platform_data, %struct.softing_platform_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.softing_platform_data*, %struct.softing_platform_data** %6, align 8
  %21 = getelementptr inbounds %struct.softing_platform_data, %struct.softing_platform_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load %struct.softing_platform_data*, %struct.softing_platform_data** %6, align 8
  store %struct.softing_platform_data* %26, %struct.softing_platform_data** %3, align 8
  br label %32

27:                                               ; preds = %19, %13
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.softing_platform_data*, %struct.softing_platform_data** %6, align 8
  %30 = getelementptr inbounds %struct.softing_platform_data, %struct.softing_platform_data* %29, i32 1
  store %struct.softing_platform_data* %30, %struct.softing_platform_data** %6, align 8
  br label %8

31:                                               ; preds = %8
  store %struct.softing_platform_data* null, %struct.softing_platform_data** %3, align 8
  br label %32

32:                                               ; preds = %31, %25
  %33 = load %struct.softing_platform_data*, %struct.softing_platform_data** %3, align 8
  ret %struct.softing_platform_data* %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
