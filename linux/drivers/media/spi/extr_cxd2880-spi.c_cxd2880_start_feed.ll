; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_start_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_start_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_demux_feed = type { i32, %struct.dvb_demux* }
%struct.dvb_demux = type { %struct.cxd2880_dvb_spi* }
%struct.cxd2880_dvb_spi = type { i32, i64, i32, %struct.cxd2880_pid_filter_config, i32* }
%struct.cxd2880_pid_filter_config = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"invalid arg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"feed->demux is NULL\0A\00", align 1
@CXD2880_MAX_FILTER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Exceeded maximum PID count (32).\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Selected PID cannot be enabled.\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"update pid filter failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"all PID feed (count = %d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"store PID %d to #%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"PID filter is full.\0A\00", align 1
@MAX_TRANS_PKT = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"ts buffer allocate failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@cxd2880_ts_read = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"cxd2880_ts_read\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"kthread_run failed/\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"start feed (count %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_demux_feed*)* @cxd2880_start_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_start_feed(%struct.dvb_demux_feed* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_demux_feed*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_demux*, align 8
  %7 = alloca %struct.cxd2880_dvb_spi*, align 8
  %8 = alloca %struct.cxd2880_pid_filter_config, align 8
  store %struct.dvb_demux_feed* %0, %struct.dvb_demux_feed** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store %struct.dvb_demux* null, %struct.dvb_demux** %6, align 8
  store %struct.cxd2880_dvb_spi* null, %struct.cxd2880_dvb_spi** %7, align 8
  %9 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %10 = icmp ne %struct.dvb_demux_feed* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %205

15:                                               ; preds = %1
  %16 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %17 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %16, i32 0, i32 1
  %18 = load %struct.dvb_demux*, %struct.dvb_demux** %17, align 8
  store %struct.dvb_demux* %18, %struct.dvb_demux** %6, align 8
  %19 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %20 = icmp ne %struct.dvb_demux* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %15
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %205

25:                                               ; preds = %15
  %26 = load %struct.dvb_demux*, %struct.dvb_demux** %6, align 8
  %27 = getelementptr inbounds %struct.dvb_demux, %struct.dvb_demux* %26, i32 0, i32 0
  %28 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %27, align 8
  store %struct.cxd2880_dvb_spi* %28, %struct.cxd2880_dvb_spi** %7, align 8
  %29 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %30 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CXD2880_MAX_FILTER_SIZE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %25
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %36 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %205

39:                                               ; preds = %25
  %40 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %41 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 8192
  br i1 %43, label %44, label %69

44:                                               ; preds = %39
  %45 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %46 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %51 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %52 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %51, i32 0, i32 3
  %53 = call i32 @cxd2880_update_pid_filter(%struct.cxd2880_dvb_spi* %50, %struct.cxd2880_pid_filter_config* %52, i32 1)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %205

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %44
  %61 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %62 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, 1
  store i64 %64, i64* %62, align 8
  %65 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %66 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %67)
  br label %139

69:                                               ; preds = %39
  %70 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %71 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %70, i32 0, i32 3
  %72 = bitcast %struct.cxd2880_pid_filter_config* %8 to i8*
  %73 = bitcast %struct.cxd2880_pid_filter_config* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 8, i1 false)
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %110, %69
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @CXD2880_MAX_FILTER_SIZE, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %113

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.cxd2880_pid_filter_config, %struct.cxd2880_pid_filter_config* %8, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %109

87:                                               ; preds = %78
  %88 = getelementptr inbounds %struct.cxd2880_pid_filter_config, %struct.cxd2880_pid_filter_config* %8, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  %94 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %95 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.cxd2880_pid_filter_config, %struct.cxd2880_pid_filter_config* %8, i32 0, i32 0
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  store i32 %96, i32* %102, align 4
  %103 = load %struct.dvb_demux_feed*, %struct.dvb_demux_feed** %3, align 8
  %104 = getelementptr inbounds %struct.dvb_demux_feed, %struct.dvb_demux_feed* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = load i32, i32* %5, align 4
  %108 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %106, i32 %107)
  br label %113

109:                                              ; preds = %78
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %5, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %5, align 4
  br label %74

113:                                              ; preds = %87, %74
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @CXD2880_MAX_FILTER_SIZE, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %205

121:                                              ; preds = %113
  %122 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %123 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %121
  %127 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %128 = call i32 @cxd2880_update_pid_filter(%struct.cxd2880_dvb_spi* %127, %struct.cxd2880_pid_filter_config* %8, i32 0)
  store i32 %128, i32* %4, align 4
  br label %129

129:                                              ; preds = %126, %121
  %130 = load i32, i32* %4, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* %4, align 4
  store i32 %133, i32* %2, align 4
  br label %205

134:                                              ; preds = %129
  %135 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %136 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %135, i32 0, i32 3
  %137 = bitcast %struct.cxd2880_pid_filter_config* %136 to i8*
  %138 = bitcast %struct.cxd2880_pid_filter_config* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 8, i1 false)
  br label %139

139:                                              ; preds = %134, %60
  %140 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %141 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %195

144:                                              ; preds = %139
  %145 = load i32, i32* @MAX_TRANS_PKT, align 4
  %146 = mul nsw i32 %145, 188
  %147 = load i32, i32* @GFP_KERNEL, align 4
  %148 = load i32, i32* @GFP_DMA, align 4
  %149 = or i32 %147, %148
  %150 = call i32* @kmalloc(i32 %146, i32 %149)
  %151 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %152 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %151, i32 0, i32 4
  store i32* %150, i32** %152, align 8
  %153 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %154 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %153, i32 0, i32 4
  %155 = load i32*, i32** %154, align 8
  %156 = icmp ne i32* %155, null
  br i1 %156, label %166, label %157

157:                                              ; preds = %144
  %158 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %159 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %160 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %159, i32 0, i32 3
  %161 = call i32 @memset(%struct.cxd2880_pid_filter_config* %160, i32 0, i32 8)
  %162 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %163 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %162, i32 0, i32 1
  store i64 0, i64* %163, align 8
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %2, align 4
  br label %205

166:                                              ; preds = %144
  %167 = load i32, i32* @cxd2880_ts_read, align 4
  %168 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %169 = call i32 @kthread_run(i32 %167, %struct.cxd2880_dvb_spi* %168, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %170 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %171 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  %172 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %173 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @IS_ERR(i32 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %166
  %178 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %179 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %180 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %179, i32 0, i32 4
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @kfree(i32* %181)
  %183 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %184 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %183, i32 0, i32 4
  store i32* null, i32** %184, align 8
  %185 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %186 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %185, i32 0, i32 3
  %187 = call i32 @memset(%struct.cxd2880_pid_filter_config* %186, i32 0, i32 8)
  %188 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %189 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %188, i32 0, i32 1
  store i64 0, i64* %189, align 8
  %190 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %191 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @PTR_ERR(i32 %192)
  store i32 %193, i32* %2, align 4
  br label %205

194:                                              ; preds = %166
  br label %195

195:                                              ; preds = %194, %139
  %196 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %197 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 8
  %200 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %7, align 8
  %201 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = call i32 (i8*, i64, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 %203)
  store i32 0, i32* %2, align 4
  br label %205

205:                                              ; preds = %195, %177, %157, %132, %117, %56, %34, %21, %11
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cxd2880_update_pid_filter(%struct.cxd2880_dvb_spi*, %struct.cxd2880_pid_filter_config*, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.cxd2880_pid_filter_config*, i32, i32) #1

declare dso_local i32 @kthread_run(i32, %struct.cxd2880_dvb_spi*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @PTR_ERR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
