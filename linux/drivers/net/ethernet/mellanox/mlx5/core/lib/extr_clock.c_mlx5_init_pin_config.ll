; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_clock.c_mlx5_init_pin_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_clock.c_mlx5_init_pin_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_clock = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlx5_ptp_enable = common dso_local global i32 0, align 4
@mlx5_ptp_verify = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"mlx5_pps%d\00", align 1
@PTP_PF_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_clock*)* @mlx5_init_pin_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_init_pin_config(%struct.mlx5_clock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_clock*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_clock* %0, %struct.mlx5_clock** %3, align 8
  %5 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.TYPE_4__* @kcalloc(i32 %8, i32 16, i32 %9)
  %11 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %13, align 8
  %14 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %15 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %84

22:                                               ; preds = %1
  %23 = load i32, i32* @mlx5_ptp_enable, align 4
  %24 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 4
  %27 = load i32, i32* @mlx5_ptp_verify, align 4
  %28 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %29 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 8
  %31 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %80, %22
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %34
  %42 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @snprintf(i32 %50, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %55 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %53, i32* %61, align 4
  %62 = load i32, i32* @PTP_PF_NONE, align 4
  %63 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %64 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i32 %62, i32* %70, align 4
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.mlx5_clock*, %struct.mlx5_clock** %3, align 8
  %73 = getelementptr inbounds %struct.mlx5_clock, %struct.mlx5_clock* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %71, i32* %79, align 4
  br label %80

80:                                               ; preds = %41
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %4, align 4
  br label %34

83:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %19
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
