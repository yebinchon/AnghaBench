; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_mc.c_tegra_mc_write_emem_configuration.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_mc.c_tegra_mc_write_emem_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_mc = type { i32, %struct.TYPE_2__*, i32, %struct.tegra_mc_timing* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.tegra_mc_timing = type { i64, i32* }

@.str = private unnamed_addr constant [42 x i8] c"no memory timing registered for rate %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tegra_mc_write_emem_configuration(%struct.tegra_mc* %0, i64 %1) #0 {
  %3 = alloca %struct.tegra_mc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_mc_timing*, align 8
  store %struct.tegra_mc* %0, %struct.tegra_mc** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.tegra_mc_timing* null, %struct.tegra_mc_timing** %6, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %32, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.tegra_mc*, %struct.tegra_mc** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = load %struct.tegra_mc*, %struct.tegra_mc** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %14, i32 0, i32 3
  %16 = load %struct.tegra_mc_timing*, %struct.tegra_mc_timing** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.tegra_mc_timing, %struct.tegra_mc_timing* %16, i64 %18
  %20 = getelementptr inbounds %struct.tegra_mc_timing, %struct.tegra_mc_timing* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load %struct.tegra_mc*, %struct.tegra_mc** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %25, i32 0, i32 3
  %27 = load %struct.tegra_mc_timing*, %struct.tegra_mc_timing** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.tegra_mc_timing, %struct.tegra_mc_timing* %27, i64 %29
  store %struct.tegra_mc_timing* %30, %struct.tegra_mc_timing** %6, align 8
  br label %35

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %7

35:                                               ; preds = %24, %7
  %36 = load %struct.tegra_mc_timing*, %struct.tegra_mc_timing** %6, align 8
  %37 = icmp ne %struct.tegra_mc_timing* %36, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = load %struct.tegra_mc*, %struct.tegra_mc** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %75

44:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %72, %44
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.tegra_mc*, %struct.tegra_mc** %3, align 8
  %48 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %46, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %45
  %54 = load %struct.tegra_mc*, %struct.tegra_mc** %3, align 8
  %55 = load %struct.tegra_mc_timing*, %struct.tegra_mc_timing** %6, align 8
  %56 = getelementptr inbounds %struct.tegra_mc_timing, %struct.tegra_mc_timing* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tegra_mc*, %struct.tegra_mc** %3, align 8
  %63 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mc_writel(%struct.tegra_mc* %54, i32 %61, i32 %70)
  br label %72

72:                                               ; preds = %53
  %73 = load i32, i32* %5, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %45

75:                                               ; preds = %38, %45
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @mc_writel(%struct.tegra_mc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
