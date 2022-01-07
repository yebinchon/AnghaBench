; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_stop_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_stop_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.cxd2880_dvb_spi* }
%struct.cxd2880_dvb_spi = type { i64, i32, i32*, i32, %struct.cxd2880_pid_filter_config }
%struct.cxd2880_pid_filter_config = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"invalid arg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"feed->demux is NULL\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"no feed is started\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"PID %d not found.\0A\00", align 1
@CXD2880_MAX_FILTER_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"removed PID %d from #%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"PID %d not found\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"'kthread_stop failed. (%d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"stop feed ok.(count %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @cxd2880_stop_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_stop_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_demux*, align 8
  %7 = alloca %struct.cxd2880_dvb_spi*, align 8
  %8 = alloca %struct.cxd2880_pid_filter_config, align 8
  %9 = alloca i32, align 4
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.dvb_demux* null, %struct.dvb_demux** %6, align 8
  store %struct.cxd2880_dvb_spi* null, %struct.cxd2880_dvb_spi** %7, align 8
  %10 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %11 = icmp ne %struct.dvb_demux_feed* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %173

16:                                               ; preds = %1
  %17 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %18 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %17, i32 0, i32 1
  %19 = load %struct.dvb_demux*, %struct.dvb_demux** %18, align 8
  store %struct.dvb_demux* %19, %struct.dvb_demux** %6, align 8
  %20 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %21 = icmp ne %struct.dvb_demux* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %173

26:                                               ; preds = %16
  %27 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %28 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %27, i32 0, i32 0
  %29 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %28, align 8
  store %struct.cxd2880_dvb_spi* %29, %struct.cxd2880_dvb_spi** %7, align 8
  %30 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %31 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %26
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %173

38:                                               ; preds = %26
  %39 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %40 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %41, 8192
  br i1 %42, label %43, label %60

43:                                               ; preds = %38
  %44 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %45 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %50 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %173

55:                                               ; preds = %43
  %56 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %57 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, -1
  store i64 %59, i64* %57, align 8
  br label %130

60:                                               ; preds = %38
  %61 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %62 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %61, i32 0, i32 4
  %63 = bitcast %struct.cxd2880_pid_filter_config* %8 to i8*
  %64 = bitcast %struct.cxd2880_pid_filter_config* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %111, %60
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @CXD2880_MAX_FILTER_SIZE, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %114

69:                                               ; preds = %65
  %70 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %71 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.cxd2880_pid_filter_config, %struct.cxd2880_pid_filter_config* %8, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %73, %80
  br i1 %81, label %82, label %110

82:                                               ; preds = %69
  %83 = getelementptr inbounds %struct.cxd2880_pid_filter_config, %struct.cxd2880_pid_filter_config* %8, i32 0, i32 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %82
  %92 = getelementptr inbounds %struct.cxd2880_pid_filter_config, %struct.cxd2880_pid_filter_config* %8, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = getelementptr inbounds %struct.cxd2880_pid_filter_config, %struct.cxd2880_pid_filter_config* %8, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  %104 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %105 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = load i32, i32* %4, align 4
  %109 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i64 %107, i32 %108)
  br label %114

110:                                              ; preds = %82, %69
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %65

114:                                              ; preds = %91, %65
  %115 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %116 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %115, i32 0, i32 4
  %117 = bitcast %struct.cxd2880_pid_filter_config* %116 to i8*
  %118 = bitcast %struct.cxd2880_pid_filter_config* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %117, i8* align 8 %118, i64 8, i1 false)
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @CXD2880_MAX_FILTER_SIZE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %114
  %123 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %124 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %173

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %55
  %131 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %132 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %133 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %132, i32 0, i32 4
  %134 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %135 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %136, 0
  %138 = zext i1 %137 to i32
  %139 = call i32 @cxd2880_update_pid_filter(%struct.cxd2880_dvb_spi* %131, %struct.cxd2880_pid_filter_config* %133, i32 %138)
  store i32 %139, i32* %5, align 4
  %140 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %141 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = add nsw i32 %142, -1
  store i32 %143, i32* %141, align 8
  %144 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %145 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %166

148:                                              ; preds = %130
  store i32 0, i32* %9, align 4
  %149 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %150 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @kthread_stop(i32 %151)
  store i32 %152, i32* %9, align 4
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %148
  %156 = load i32, i32* %9, align 4
  %157 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %155, %148
  %160 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %161 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @kfree(i32* %162)
  %164 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %165 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %164, i32 0, i32 2
  store i32* null, i32** %165, align 8
  br label %166

166:                                              ; preds = %159, %130
  %167 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %168 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = sext i32 %169 to i64
  %171 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i64 %170)
  %172 = load i32, i32* %5, align 4
  store i32 %172, i32* %2, align 4
  br label %173

173:                                              ; preds = %166, %122, %48, %34, %22, %12
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @pr_err(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

declare dso_local i32 @cxd2880_update_pid_filter(%struct.cxd2880_dvb_spi*, %struct.cxd2880_pid_filter_config*, i32) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
