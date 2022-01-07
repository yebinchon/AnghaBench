; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_add_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_add_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00 = type { i32 }
%struct.ucb1x00_driver = type { i32 (%struct.ucb1x00_dev*)*, i32 }
%struct.ucb1x00_dev = type opaque
%struct.ucb1x00_dev.0 = type { i32, i32, %struct.ucb1x00_driver*, %struct.ucb1x00* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucb1x00*, %struct.ucb1x00_driver*)* @ucb1x00_add_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_add_dev(%struct.ucb1x00* %0, %struct.ucb1x00_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ucb1x00*, align 8
  %5 = alloca %struct.ucb1x00_driver*, align 8
  %6 = alloca %struct.ucb1x00_dev.0*, align 8
  %7 = alloca i32, align 4
  store %struct.ucb1x00* %0, %struct.ucb1x00** %4, align 8
  store %struct.ucb1x00_driver* %1, %struct.ucb1x00_driver** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ucb1x00_dev.0* @kmalloc(i32 24, i32 %8)
  store %struct.ucb1x00_dev.0* %9, %struct.ucb1x00_dev.0** %6, align 8
  %10 = load %struct.ucb1x00_dev.0*, %struct.ucb1x00_dev.0** %6, align 8
  %11 = icmp ne %struct.ucb1x00_dev.0* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %46

15:                                               ; preds = %2
  %16 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %17 = load %struct.ucb1x00_dev.0*, %struct.ucb1x00_dev.0** %6, align 8
  %18 = getelementptr inbounds %struct.ucb1x00_dev.0, %struct.ucb1x00_dev.0* %17, i32 0, i32 3
  store %struct.ucb1x00* %16, %struct.ucb1x00** %18, align 8
  %19 = load %struct.ucb1x00_driver*, %struct.ucb1x00_driver** %5, align 8
  %20 = load %struct.ucb1x00_dev.0*, %struct.ucb1x00_dev.0** %6, align 8
  %21 = getelementptr inbounds %struct.ucb1x00_dev.0, %struct.ucb1x00_dev.0* %20, i32 0, i32 2
  store %struct.ucb1x00_driver* %19, %struct.ucb1x00_driver** %21, align 8
  %22 = load %struct.ucb1x00_driver*, %struct.ucb1x00_driver** %5, align 8
  %23 = getelementptr inbounds %struct.ucb1x00_driver, %struct.ucb1x00_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.ucb1x00_dev*)*, i32 (%struct.ucb1x00_dev*)** %23, align 8
  %25 = load %struct.ucb1x00_dev.0*, %struct.ucb1x00_dev.0** %6, align 8
  %26 = bitcast %struct.ucb1x00_dev.0* %25 to %struct.ucb1x00_dev*
  %27 = call i32 %24(%struct.ucb1x00_dev* %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %15
  %31 = load %struct.ucb1x00_dev.0*, %struct.ucb1x00_dev.0** %6, align 8
  %32 = call i32 @kfree(%struct.ucb1x00_dev.0* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %46

34:                                               ; preds = %15
  %35 = load %struct.ucb1x00_dev.0*, %struct.ucb1x00_dev.0** %6, align 8
  %36 = getelementptr inbounds %struct.ucb1x00_dev.0, %struct.ucb1x00_dev.0* %35, i32 0, i32 1
  %37 = load %struct.ucb1x00*, %struct.ucb1x00** %4, align 8
  %38 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %37, i32 0, i32 0
  %39 = call i32 @list_add_tail(i32* %36, i32* %38)
  %40 = load %struct.ucb1x00_dev.0*, %struct.ucb1x00_dev.0** %6, align 8
  %41 = getelementptr inbounds %struct.ucb1x00_dev.0, %struct.ucb1x00_dev.0* %40, i32 0, i32 0
  %42 = load %struct.ucb1x00_driver*, %struct.ucb1x00_driver** %5, align 8
  %43 = getelementptr inbounds %struct.ucb1x00_driver, %struct.ucb1x00_driver* %42, i32 0, i32 1
  %44 = call i32 @list_add_tail(i32* %41, i32* %43)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %34, %30, %12
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.ucb1x00_dev.0* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ucb1x00_dev.0*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
