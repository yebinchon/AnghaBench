; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_clock.c_mlx4_en_init_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_clock.c_mlx4_en_init_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.mlx4_en_dev = type { i32*, %struct.TYPE_8__*, %struct.TYPE_10__, i32, %struct.TYPE_9__, i32, i32, %struct.mlx4_dev* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.mlx4_dev = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@mlx4_en_read_clock = common dso_local global i32 0, align 4
@mlx4_en_ptp_clock_info = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str = private unnamed_addr constant [9 x i8] c"mlx4 ptp\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ptp_clock_register failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"registered PHC clock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_init_timestamp(%struct.mlx4_en_dev* %0) #0 {
  %2 = alloca %struct.mlx4_en_dev*, align 8
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.mlx4_en_dev* %0, %struct.mlx4_en_dev** %2, align 8
  %5 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %5, i32 0, i32 7
  %7 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  store %struct.mlx4_dev* %7, %struct.mlx4_dev** %3, align 8
  %8 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %106

13:                                               ; preds = %1
  %14 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %14, i32 0, i32 3
  %16 = call i32 @seqlock_init(i32* %15)
  %17 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %17, i32 0, i32 4
  %19 = call i32 @memset(%struct.TYPE_9__* %18, i32 0, i32 16)
  %20 = load i32, i32* @mlx4_en_read_clock, align 4
  %21 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 3
  store i32 %20, i32* %23, align 4
  %24 = call i32 @CLOCKSOURCE_MASK(i32 48)
  %25 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %26 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %29 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @freq_to_shift(i32 %31)
  %33 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 1000, %39
  %41 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clocksource_khz2mult(i32 %40, i32 %44)
  %46 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %47 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %55, i32 0, i32 3
  %57 = load i64, i64* %4, align 8
  %58 = call i32 @write_seqlock_irqsave(i32* %56, i64 %57)
  %59 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %60 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %59, i32 0, i32 5
  %61 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %61, i32 0, i32 4
  %63 = call i32 (...) @ktime_get_real()
  %64 = call i32 @ktime_to_ns(i32 %63)
  %65 = call i32 @timecounter_init(i32* %60, %struct.TYPE_9__* %62, i32 %64)
  %66 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %67 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %66, i32 0, i32 3
  %68 = load i64, i64* %4, align 8
  %69 = call i32 @write_sequnlock_irqrestore(i32* %67, i64 %68)
  %70 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %71 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %70, i32 0, i32 2
  %72 = bitcast %struct.TYPE_10__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 4 bitcast (%struct.TYPE_10__* @mlx4_en_ptp_clock_info to i8*), i64 4, i1 false)
  %73 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %74 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @snprintf(i32 %76, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %78, i32 0, i32 2
  %80 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %81 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %80, i32 0, i32 1
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = call i32* @ptp_clock_register(%struct.TYPE_10__* %79, i32* %83)
  %85 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %86 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %85, i32 0, i32 0
  store i32* %84, i32** %86, align 8
  %87 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = call i64 @IS_ERR(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %13
  %93 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %94 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  %95 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %96 = call i32 @mlx4_err(%struct.mlx4_en_dev* %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %106

97:                                               ; preds = %13
  %98 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %99 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %2, align 8
  %104 = call i32 @mlx4_info(%struct.mlx4_en_dev* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %105

105:                                              ; preds = %102, %97
  br label %106

106:                                              ; preds = %12, %105, %92
  ret void
}

declare dso_local i32 @seqlock_init(i32*) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @CLOCKSOURCE_MASK(i32) #1

declare dso_local i32 @freq_to_shift(i32) #1

declare dso_local i32 @clocksource_khz2mult(i32, i32) #1

declare dso_local i32 @write_seqlock_irqsave(i32*, i64) #1

declare dso_local i32 @timecounter_init(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i32 @ktime_get_real(...) #1

declare dso_local i32 @write_sequnlock_irqrestore(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32* @ptp_clock_register(%struct.TYPE_10__*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_en_dev*, i8*) #1

declare dso_local i32 @mlx4_info(%struct.mlx4_en_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
