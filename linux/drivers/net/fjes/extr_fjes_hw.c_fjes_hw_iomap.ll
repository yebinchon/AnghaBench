; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_iomap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_hw.c_fjes_hw_iomap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fjes_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@fjes_driver_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"request_mem_region failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.fjes_hw*)* @fjes_hw_iomap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @fjes_hw_iomap(%struct.fjes_hw* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.fjes_hw*, align 8
  %4 = alloca i32*, align 8
  store %struct.fjes_hw* %0, %struct.fjes_hw** %3, align 8
  %5 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %6 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %10 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @fjes_driver_name, align 4
  %14 = call i32 @request_mem_region(i32 %8, i32 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %2, align 8
  br label %30

18:                                               ; preds = %1
  %19 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %20 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fjes_hw*, %struct.fjes_hw** %3, align 8
  %24 = getelementptr inbounds %struct.fjes_hw, %struct.fjes_hw* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @ioremap_nocache(i32 %22, i32 %26)
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  store i32* %29, i32** %2, align 8
  br label %30

30:                                               ; preds = %18, %16
  %31 = load i32*, i32** %2, align 8
  ret i32* %31
}

declare dso_local i32 @request_mem_region(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @ioremap_nocache(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
