; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_stream_struct_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-driver.c_cobalt_stream_struct_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt = type { i32, %struct.cobalt_stream* }
%struct.cobalt_stream = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.cobalt* }

@COBALT_NUM_STREAMS = common dso_local global i32 0, align 4
@COBALT_HSMA_IN_NODE = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI0_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VI0_INT1_MSK = common dso_local global i32 0, align 4
@COBALT_AUDIO_IN_STREAM = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_AUD_IN_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_HSMA_OUT_NODE = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VOHSMA_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_VOHSMA_INT1_MSK = common dso_local global i32 0, align 4
@COBALT_AUDIO_OUT_STREAM = common dso_local global i32 0, align 4
@COBALT_SYSSTAT_AUD_OUT_LOST_DATA_MSK = common dso_local global i32 0, align 4
@COBALT_NUM_NODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"stream #%d -> dma channel #%d <- video channel %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cobalt*)* @cobalt_stream_struct_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cobalt_stream_struct_init(%struct.cobalt* %0) #0 {
  %2 = alloca %struct.cobalt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cobalt_stream*, align 8
  %5 = alloca i32, align 4
  store %struct.cobalt* %0, %struct.cobalt** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %130, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @COBALT_NUM_STREAMS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %133

10:                                               ; preds = %6
  %11 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %12 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %11, i32 0, i32 1
  %13 = load %struct.cobalt_stream*, %struct.cobalt_stream** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %13, i64 %15
  store %struct.cobalt_stream* %16, %struct.cobalt_stream** %4, align 8
  %17 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %18 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %19 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %18, i32 0, i32 8
  store %struct.cobalt* %17, %struct.cobalt** %19, align 8
  %20 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %21 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %20, i32 0, i32 7
  store i64 0, i64* %21, align 8
  %22 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %23 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %25 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %27 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %26, i32 0, i32 2
  store i32 1, i32* %27, align 8
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @COBALT_HSMA_IN_NODE, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %10
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %34 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %32, %35
  %37 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %38 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %41 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* @COBALT_SYSSTAT_VI0_LOST_DATA_MSK, align 4
  %43 = load i32, i32* %3, align 4
  %44 = mul nsw i32 4, %43
  %45 = shl i32 %42, %44
  %46 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %47 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @COBALT_SYSSTAT_VI0_INT1_MSK, align 4
  %49 = load i32, i32* %3, align 4
  %50 = mul nsw i32 4, %49
  %51 = shl i32 %48, %50
  %52 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %53 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  br label %121

54:                                               ; preds = %10
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @COBALT_AUDIO_IN_STREAM, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %79

58:                                               ; preds = %54
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* @COBALT_AUDIO_IN_STREAM, align 4
  %61 = add nsw i32 %60, 4
  %62 = icmp sle i32 %59, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @COBALT_AUDIO_IN_STREAM, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = add i32 6, %67
  %69 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %70 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %72 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %75 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @COBALT_SYSSTAT_AUD_IN_LOST_DATA_MSK, align 4
  %77 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %78 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %77, i32 0, i32 5
  store i32 %76, i32* %78, align 4
  br label %120

79:                                               ; preds = %58, %54
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @COBALT_HSMA_OUT_NODE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %85 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %84, i32 0, i32 3
  store i32 11, i32* %85, align 4
  %86 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %87 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %86, i32 0, i32 1
  store i32 1, i32* %87, align 4
  %88 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %89 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %88, i32 0, i32 4
  store i32 5, i32* %89, align 8
  %90 = load i32, i32* @COBALT_SYSSTAT_VOHSMA_LOST_DATA_MSK, align 4
  %91 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %92 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @COBALT_SYSSTAT_VOHSMA_INT1_MSK, align 4
  %94 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %95 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 8
  br label %119

96:                                               ; preds = %79
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @COBALT_AUDIO_OUT_STREAM, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %112

100:                                              ; preds = %96
  %101 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %102 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %101, i32 0, i32 3
  store i32 12, i32* %102, align 4
  %103 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %104 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %106 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %105, i32 0, i32 1
  store i32 1, i32* %106, align 4
  %107 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %108 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %107, i32 0, i32 4
  store i32 5, i32* %108, align 8
  %109 = load i32, i32* @COBALT_SYSSTAT_AUD_OUT_LOST_DATA_MSK, align 4
  %110 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %111 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  br label %118

112:                                              ; preds = %96
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @COBALT_NUM_NODES, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %117 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %112, %100
  br label %119

119:                                              ; preds = %118, %83
  br label %120

120:                                              ; preds = %119, %63
  br label %121

121:                                              ; preds = %120, %31
  %122 = load i32, i32* %3, align 4
  %123 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %124 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %127 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @cobalt_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %122, i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %121
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %3, align 4
  br label %6

133:                                              ; preds = %6
  ret void
}

declare dso_local i32 @cobalt_info(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
