; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-core.c_c8sectpfe_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/c8sectpfe/extr_c8sectpfe-core.c_c8sectpfe_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.c8sectpfei = type { i32, i64, i64, i32, %struct.channel_info**, i32*, i32 }
%struct.channel_info = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Stopping memdma SLIM core\0A\00", align 1
@DMA_CPU_RUN = common dso_local global i64 0, align 8
@SYS_INPUT_CLKEN = common dso_local global i64 0, align 8
@SYS_OTHER_CLKEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @c8sectpfe_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c8sectpfe_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.c8sectpfei*, align 8
  %4 = alloca %struct.channel_info*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.c8sectpfei* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.c8sectpfei* %7, %struct.c8sectpfei** %3, align 8
  %8 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %9 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %8, i32 0, i32 6
  %10 = call i32 @wait_for_completion(i32* %9)
  %11 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %12 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %11, i32 0, i32 5
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %17 = call i32 @c8sectpfe_tuner_unregister_frontend(i32 %15, %struct.c8sectpfei* %16)
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %35, %1
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %21 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %26 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %25, i32 0, i32 4
  %27 = load %struct.channel_info**, %struct.channel_info*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.channel_info*, %struct.channel_info** %27, i64 %29
  %31 = load %struct.channel_info*, %struct.channel_info** %30, align 8
  store %struct.channel_info* %31, %struct.channel_info** %4, align 8
  %32 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %33 = load %struct.channel_info*, %struct.channel_info** %4, align 8
  %34 = call i32 @free_input_block(%struct.c8sectpfei* %32, %struct.channel_info* %33)
  br label %35

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %18

38:                                               ; preds = %18
  %39 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %40 = call i32 @c8sectpfe_debugfs_exit(%struct.c8sectpfei* %39)
  %41 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %42 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_info(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %46 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DMA_CPU_RUN, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i64 @readl(i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %38
  %53 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %54 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @DMA_CPU_RUN, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @writel(i32 0, i64 %57)
  br label %59

59:                                               ; preds = %52, %38
  %60 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %61 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SYS_INPUT_CLKEN, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i64 @readl(i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %59
  %68 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %69 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SYS_INPUT_CLKEN, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 0, i64 %72)
  br label %74

74:                                               ; preds = %67, %59
  %75 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %76 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @SYS_OTHER_CLKEN, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i64 @readl(i64 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %74
  %83 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %84 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SYS_OTHER_CLKEN, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 0, i64 %87)
  br label %89

89:                                               ; preds = %82, %74
  %90 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %91 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.c8sectpfei*, %struct.c8sectpfei** %3, align 8
  %96 = getelementptr inbounds %struct.c8sectpfei, %struct.c8sectpfei* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @clk_disable_unprepare(i64 %97)
  br label %99

99:                                               ; preds = %94, %89
  ret i32 0
}

declare dso_local %struct.c8sectpfei* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @c8sectpfe_tuner_unregister_frontend(i32, %struct.c8sectpfei*) #1

declare dso_local i32 @free_input_block(%struct.c8sectpfei*, %struct.channel_info*) #1

declare dso_local i32 @c8sectpfe_debugfs_exit(%struct.c8sectpfei*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
