; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_channel_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_channel_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z8530_channel = type { i32*, i32, i32, i32, i32, i64, i64, i32*, i32*, i32*, i32 }

@R15 = common dso_local global i64 0, align 8
@z8530_null_rx = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@R3 = common dso_local global i64 0, align 8
@RxENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @z8530_channel_load(%struct.z8530_channel* %0, i32* %1) #0 {
  %3 = alloca %struct.z8530_channel*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.z8530_channel* %0, %struct.z8530_channel** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %8 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32 %9, i64 %10)
  br label %12

12:                                               ; preds = %52, %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 255
  br i1 %15, label %16, label %62

16:                                               ; preds = %12
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %4, align 8
  %19 = load i32, i32* %17, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 15
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %24 = load i64, i64* @R15, align 8
  %25 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %26 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 15
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, 1
  %31 = call i32 @write_zsreg(%struct.z8530_channel* %23, i64 %24, i32 %30)
  br label %32

32:                                               ; preds = %22, %16
  %33 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %34, 15
  %36 = sext i32 %35 to i64
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @write_zsreg(%struct.z8530_channel* %33, i64 %36, i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 15
  br i1 %41, label %42, label %52

42:                                               ; preds = %32
  %43 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %44 = load i64, i64* @R15, align 8
  %45 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %46 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 15
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, -2
  %51 = call i32 @write_zsreg(%struct.z8530_channel* %43, i64 %44, i32 %50)
  br label %52

52:                                               ; preds = %42, %32
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %4, align 8
  %55 = load i32, i32* %53, align 4
  %56 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %57 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  br label %12

62:                                               ; preds = %12
  %63 = load i32, i32* @z8530_null_rx, align 4
  %64 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %65 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %64, i32 0, i32 10
  store i32 %63, i32* %65, align 8
  %66 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %67 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %66, i32 0, i32 9
  store i32* null, i32** %67, align 8
  %68 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %69 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %68, i32 0, i32 8
  store i32* null, i32** %69, align 8
  %70 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %71 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %70, i32 0, i32 7
  store i32* null, i32** %71, align 8
  %72 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %73 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %72, i32 0, i32 1
  store i32 1500, i32* %73, align 8
  %74 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %75 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %74, i32 0, i32 6
  store i64 0, i64* %75, align 8
  %76 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %77 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  %78 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %79 = load i32, i32* @R0, align 4
  %80 = call i32 @read_zsreg(%struct.z8530_channel* %78, i32 %79)
  %81 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %82 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 4
  %83 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %84 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %83, i32 0, i32 2
  store i32 1, i32* %84, align 4
  %85 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %86 = load i64, i64* @R3, align 8
  %87 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %88 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @R3, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @RxENABLE, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @write_zsreg(%struct.z8530_channel* %85, i64 %86, i32 %94)
  %96 = load %struct.z8530_channel*, %struct.z8530_channel** %3, align 8
  %97 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @spin_unlock_irqrestore(i32 %98, i64 %99)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @write_zsreg(%struct.z8530_channel*, i64, i32) #1

declare dso_local i32 @read_zsreg(%struct.z8530_channel*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
