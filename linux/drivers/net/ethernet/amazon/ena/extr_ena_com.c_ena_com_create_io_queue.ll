; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_create_io_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_create_io_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i32, %struct.ena_com_io_sq*, %struct.ena_com_io_sq* }
%struct.ena_com_io_sq = type { i64, i64, i32, i32, i32, i32, i32 }
%struct.ena_com_create_io_ctx = type { i64, i64, i32, i32, i32 }
%struct.ena_com_io_cq = type { i64, i64, i32, i32, i32, i32, i32 }

@ENA_TOTAL_NUM_QUEUES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"Qid (%d) is bigger than max num of queues (%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENA_COM_IO_QUEUE_DIRECTION_TX = common dso_local global i64 0, align 8
@u32 = common dso_local global i32 0, align 4
@SZ_256 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_create_io_queue(%struct.ena_com_dev* %0, %struct.ena_com_create_io_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ena_com_dev*, align 8
  %5 = alloca %struct.ena_com_create_io_ctx*, align 8
  %6 = alloca %struct.ena_com_io_sq*, align 8
  %7 = alloca %struct.ena_com_io_cq*, align 8
  %8 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %4, align 8
  store %struct.ena_com_create_io_ctx* %1, %struct.ena_com_create_io_ctx** %5, align 8
  %9 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %10 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ENA_TOTAL_NUM_QUEUES, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %16 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ENA_TOTAL_NUM_QUEUES, align 8
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %17, i64 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %145

22:                                               ; preds = %2
  %23 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %24 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %23, i32 0, i32 2
  %25 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %24, align 8
  %26 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %27 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %25, i64 %28
  store %struct.ena_com_io_sq* %29, %struct.ena_com_io_sq** %6, align 8
  %30 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %31 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %30, i32 0, i32 1
  %32 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %31, align 8
  %33 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %34 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %32, i64 %35
  %37 = bitcast %struct.ena_com_io_sq* %36 to %struct.ena_com_io_cq*
  store %struct.ena_com_io_cq* %37, %struct.ena_com_io_cq** %7, align 8
  %38 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %39 = call i32 @memset(%struct.ena_com_io_sq* %38, i32 0, i32 40)
  %40 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %41 = bitcast %struct.ena_com_io_cq* %40 to %struct.ena_com_io_sq*
  %42 = call i32 @memset(%struct.ena_com_io_sq* %41, i32 0, i32 40)
  %43 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %44 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %47 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %46, i32 0, i32 5
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %49 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %52 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %54 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %57 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %59 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %62 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %67 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %66, i32 0, i32 5
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %69 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %72 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %71, i32 0, i32 0
  store i64 %70, i64* %72, align 8
  %73 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %74 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %77 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %79 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %82 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %84 = getelementptr inbounds %struct.ena_com_create_io_ctx, %struct.ena_com_create_io_ctx* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ENA_COM_IO_QUEUE_DIRECTION_TX, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %22
  %89 = load i32, i32* @u32, align 4
  %90 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %91 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @SZ_256, align 4
  %94 = call i32 @min_t(i32 %89, i32 %92, i32 %93)
  %95 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %96 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %88, %22
  %98 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %99 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %100 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %101 = call i32 @ena_com_init_io_sq(%struct.ena_com_dev* %98, %struct.ena_com_create_io_ctx* %99, %struct.ena_com_io_sq* %100)
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  br label %138

105:                                              ; preds = %97
  %106 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %107 = load %struct.ena_com_create_io_ctx*, %struct.ena_com_create_io_ctx** %5, align 8
  %108 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %109 = bitcast %struct.ena_com_io_cq* %108 to %struct.ena_com_io_sq*
  %110 = call i32 @ena_com_init_io_cq(%struct.ena_com_dev* %106, %struct.ena_com_create_io_ctx* %107, %struct.ena_com_io_sq* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %138

114:                                              ; preds = %105
  %115 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %116 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %117 = bitcast %struct.ena_com_io_cq* %116 to %struct.ena_com_io_sq*
  %118 = call i32 @ena_com_create_io_cq(%struct.ena_com_dev* %115, %struct.ena_com_io_sq* %117)
  store i32 %118, i32* %8, align 4
  %119 = load i32, i32* %8, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  br label %138

122:                                              ; preds = %114
  %123 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %124 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %125 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %126 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @ena_com_create_io_sq(%struct.ena_com_dev* %123, %struct.ena_com_io_sq* %124, i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %122
  br label %133

132:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %145

133:                                              ; preds = %131
  %134 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %135 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %136 = bitcast %struct.ena_com_io_cq* %135 to %struct.ena_com_io_sq*
  %137 = call i32 @ena_com_destroy_io_cq(%struct.ena_com_dev* %134, %struct.ena_com_io_sq* %136)
  br label %138

138:                                              ; preds = %133, %121, %113, %104
  %139 = load %struct.ena_com_dev*, %struct.ena_com_dev** %4, align 8
  %140 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %6, align 8
  %141 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %7, align 8
  %142 = bitcast %struct.ena_com_io_cq* %141 to %struct.ena_com_io_sq*
  %143 = call i32 @ena_com_io_queue_free(%struct.ena_com_dev* %139, %struct.ena_com_io_sq* %140, %struct.ena_com_io_sq* %142)
  %144 = load i32, i32* %8, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %138, %132, %14
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i32 @memset(%struct.ena_com_io_sq*, i32, i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @ena_com_init_io_sq(%struct.ena_com_dev*, %struct.ena_com_create_io_ctx*, %struct.ena_com_io_sq*) #1

declare dso_local i32 @ena_com_init_io_cq(%struct.ena_com_dev*, %struct.ena_com_create_io_ctx*, %struct.ena_com_io_sq*) #1

declare dso_local i32 @ena_com_create_io_cq(%struct.ena_com_dev*, %struct.ena_com_io_sq*) #1

declare dso_local i32 @ena_com_create_io_sq(%struct.ena_com_dev*, %struct.ena_com_io_sq*, i32) #1

declare dso_local i32 @ena_com_destroy_io_cq(%struct.ena_com_dev*, %struct.ena_com_io_sq*) #1

declare dso_local i32 @ena_com_io_queue_free(%struct.ena_com_dev*, %struct.ena_com_io_sq*, %struct.ena_com_io_sq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
