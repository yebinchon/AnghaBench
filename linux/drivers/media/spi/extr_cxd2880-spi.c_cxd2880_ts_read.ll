; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_ts_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_ts_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxd2880_dvb_spi = type { i32, i32, i32 }
%struct.cxd2880_ts_buf_info = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"invalid arg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"set_clear_ts_buffer failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"spi_read_ts_buffer_info error\0A\00", align 1
@MAX_TRANS_PKT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cxd2880_ts_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_ts_read(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cxd2880_dvb_spi*, align 8
  %5 = alloca %struct.cxd2880_ts_buf_info, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.cxd2880_dvb_spi* null, %struct.cxd2880_dvb_spi** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.cxd2880_dvb_spi*
  store %struct.cxd2880_dvb_spi* %10, %struct.cxd2880_dvb_spi** %4, align 8
  %11 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %12 = icmp ne %struct.cxd2880_dvb_spi* %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %113

17:                                               ; preds = %1
  %18 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %19 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cxd2880_spi_clear_ts_buffer(i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %2, align 4
  br label %113

27:                                               ; preds = %17
  %28 = call i32 (...) @ktime_get()
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %111, %27
  %30 = call i32 (...) @kthread_should_stop()
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %112

33:                                               ; preds = %29
  %34 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %35 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cxd2880_spi_read_ts_buffer_info(i32 %36, %struct.cxd2880_ts_buf_info* %5)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  br label %113

43:                                               ; preds = %33
  %44 = getelementptr inbounds %struct.cxd2880_ts_buf_info, %struct.cxd2880_ts_buf_info* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MAX_TRANS_PKT, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %43
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %73, %48
  %50 = load i32, i32* %7, align 4
  %51 = getelementptr inbounds %struct.cxd2880_ts_buf_info, %struct.cxd2880_ts_buf_info* %5, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @MAX_TRANS_PKT, align 4
  %54 = sdiv i32 %52, %53
  %55 = icmp slt i32 %50, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %49
  %57 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %58 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %61 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MAX_TRANS_PKT, align 4
  %64 = call i32 @cxd2880_spi_read_ts(i32 %59, i32 %62, i32 %63)
  %65 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %66 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %65, i32 0, i32 1
  %67 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %68 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MAX_TRANS_PKT, align 4
  %71 = mul nsw i32 %70, 188
  %72 = call i32 @dvb_dmx_swfilter(i32* %66, i32 %69, i32 %71)
  br label %73

73:                                               ; preds = %56
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %7, align 4
  br label %49

76:                                               ; preds = %49
  %77 = call i32 (...) @ktime_get()
  store i32 %77, i32* %6, align 4
  br label %111

78:                                               ; preds = %43
  %79 = getelementptr inbounds %struct.cxd2880_ts_buf_info, %struct.cxd2880_ts_buf_info* %5, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %108

82:                                               ; preds = %78
  %83 = call i32 (...) @ktime_get()
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @ktime_sub(i32 %83, i32 %84)
  %86 = call i32 @ktime_to_ms(i32 %85)
  %87 = icmp sge i32 %86, 500
  br i1 %87, label %88, label %108

88:                                               ; preds = %82
  %89 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %90 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %93 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds %struct.cxd2880_ts_buf_info, %struct.cxd2880_ts_buf_info* %5, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @cxd2880_spi_read_ts(i32 %91, i32 %94, i32 %96)
  %98 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %99 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %98, i32 0, i32 1
  %100 = load %struct.cxd2880_dvb_spi*, %struct.cxd2880_dvb_spi** %4, align 8
  %101 = getelementptr inbounds %struct.cxd2880_dvb_spi, %struct.cxd2880_dvb_spi* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.cxd2880_ts_buf_info, %struct.cxd2880_ts_buf_info* %5, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %104, 188
  %106 = call i32 @dvb_dmx_swfilter(i32* %99, i32 %102, i32 %105)
  %107 = call i32 (...) @ktime_get()
  store i32 %107, i32* %6, align 4
  br label %110

108:                                              ; preds = %82, %78
  %109 = call i32 @usleep_range(i32 10000, i32 11000)
  br label %110

110:                                              ; preds = %108, %88
  br label %111

111:                                              ; preds = %110, %76
  br label %29

112:                                              ; preds = %29
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %112, %40, %24, %13
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cxd2880_spi_clear_ts_buffer(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @cxd2880_spi_read_ts_buffer_info(i32, %struct.cxd2880_ts_buf_info*) #1

declare dso_local i32 @cxd2880_spi_read_ts(i32, i32, i32) #1

declare dso_local i32 @dvb_dmx_swfilter(i32*, i32, i32) #1

declare dso_local i32 @ktime_to_ms(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
