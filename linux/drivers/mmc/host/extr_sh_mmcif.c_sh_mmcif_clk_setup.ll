; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_clk_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_clk_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mmcif_host = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"clk max/min = %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_mmcif_host*)* @sh_mmcif_clk_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_mmcif_clk_setup(%struct.sh_mmcif_host* %0) #0 {
  %2 = alloca %struct.sh_mmcif_host*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sh_mmcif_host* %0, %struct.sh_mmcif_host** %2, align 8
  %8 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %9 = call %struct.device* @sh_mmcif_host_to_dev(%struct.sh_mmcif_host* %8)
  store %struct.device* %9, %struct.device** %3, align 8
  %10 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %11 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %64

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %17 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %18 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %37, %16
  %24 = load i32, i32* %6, align 4
  %25 = icmp ugt i32 %24, 2
  br i1 %25, label %26, label %39

26:                                               ; preds = %23
  %27 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %28 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = udiv i32 %30, 2
  %32 = call i32 @clk_round_rate(i32 %29, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %39

37:                                               ; preds = %26
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %6, align 4
  br label %23

39:                                               ; preds = %36, %23
  %40 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %41 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %40, i32 0, i32 0
  store i32 1023, i32* %41, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %44 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ffs(i32 %45)
  %47 = shl i32 1, %46
  %48 = udiv i32 %42, %47
  %49 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %50 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %55 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @fls(i32 %56)
  %58 = shl i32 1, %57
  %59 = udiv i32 %53, %58
  %60 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %61 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 4
  br label %81

64:                                               ; preds = %1
  %65 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %66 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @clk_get_rate(i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = udiv i32 %69, 2
  %71 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %72 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %71, i32 0, i32 1
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 %70, i32* %74, align 4
  %75 = load i32, i32* %7, align 4
  %76 = udiv i32 %75, 512
  %77 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %78 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 4
  br label %81

81:                                               ; preds = %64, %39
  %82 = load %struct.device*, %struct.device** %3, align 8
  %83 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %84 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %2, align 8
  %89 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dev_dbg(%struct.device* %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %87, i32 %92)
  ret void
}

declare dso_local %struct.device* @sh_mmcif_host_to_dev(%struct.sh_mmcif_host*) #1

declare dso_local i32 @clk_round_rate(i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
