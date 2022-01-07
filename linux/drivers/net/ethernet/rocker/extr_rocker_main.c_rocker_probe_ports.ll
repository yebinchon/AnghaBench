; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_probe_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_probe_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*)* @rocker_probe_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_probe_ports(%struct.rocker* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rocker*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %3, align 8
  %7 = load %struct.rocker*, %struct.rocker** %3, align 8
  %8 = getelementptr inbounds %struct.rocker, %struct.rocker* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 8, %10
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32 @kzalloc(i64 %12, i32 %13)
  %15 = load %struct.rocker*, %struct.rocker** %3, align 8
  %16 = getelementptr inbounds %struct.rocker, %struct.rocker* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.rocker*, %struct.rocker** %3, align 8
  %18 = getelementptr inbounds %struct.rocker, %struct.rocker* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %47

24:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %39, %24
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.rocker*, %struct.rocker** %3, align 8
  %28 = getelementptr inbounds %struct.rocker, %struct.rocker* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %25
  %32 = load %struct.rocker*, %struct.rocker** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @rocker_probe_port(%struct.rocker* %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %43

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %25

42:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %47

43:                                               ; preds = %37
  %44 = load %struct.rocker*, %struct.rocker** %3, align 8
  %45 = call i32 @rocker_remove_ports(%struct.rocker* %44)
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %42, %21
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i32 @rocker_probe_port(%struct.rocker*, i32) #1

declare dso_local i32 @rocker_remove_ports(%struct.rocker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
