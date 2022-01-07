; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-irq.c_cobalt_irq_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-irq.c_cobalt_irq_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt = type { i32*, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [48 x i8] c"irq: adv1=%u adv2=%u advout=%u none=%u full=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"irq: dma_tot=%u (\00", align 1
@COBALT_NUM_STREAMS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%s%u\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@COBALT_SYS_STAT_MASK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI0_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI1_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI2_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI3_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VIHSMA_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VOHSMA_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_AUD_IN_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_AUD_OUT_LOST_DATA_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cobalt_irq_log_status(%struct.cobalt* %0) #0 {
  %2 = alloca %struct.cobalt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cobalt* %0, %struct.cobalt** %2, align 8
  %5 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %6 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %5, i32 0, i32 5
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %9 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %12 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %15 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %18 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i8*, i64, ...) @cobalt_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %7, i64 %10, i64 %13, i64 %16, i64 %19)
  %21 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %22 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = call i32 (i8*, i64, ...) @cobalt_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %23)
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %42, %1
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @COBALT_NUM_STREAMS, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %34 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %35 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %33, i32 %40)
  br label %42

42:                                               ; preds = %29
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %25

45:                                               ; preds = %25
  %46 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %47 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %48 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %47, i32 0, i32 4
  store i64 0, i64* %48, align 8
  %49 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %50 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %52 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %51, i32 0, i32 6
  store i64 0, i64* %52, align 8
  %53 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %54 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %56 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %58 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  %59 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %60 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @memset(i32* %61, i32 0, i32 8)
  %63 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %64 = load i32, i32* @COBALT_SYS_STAT_MASK, align 4
  %65 = call i32 @cobalt_read_bar1(%struct.cobalt* %63, i32 %64)
  store i32 %65, i32* %3, align 4
  %66 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %67 = load i32, i32* @COBALT_SYS_STAT_MASK, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @COBALT_SYSSTAT_VI0_LOST_DATA_MSK, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @COBALT_SYSSTAT_VI1_LOST_DATA_MSK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @COBALT_SYSSTAT_VI2_LOST_DATA_MSK, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @COBALT_SYSSTAT_VI3_LOST_DATA_MSK, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @COBALT_SYSSTAT_VIHSMA_LOST_DATA_MSK, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @COBALT_SYSSTAT_VOHSMA_LOST_DATA_MSK, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @COBALT_SYSSTAT_AUD_IN_LOST_DATA_MSK, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @COBALT_SYSSTAT_AUD_OUT_LOST_DATA_MSK, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @cobalt_write_bar1(%struct.cobalt* %66, i32 %67, i32 %84)
  ret void
}

declare dso_local i32 @cobalt_info(i8*, i64, ...) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cobalt_read_bar1(%struct.cobalt*, i32) #1

declare dso_local i32 @cobalt_write_bar1(%struct.cobalt*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
