; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_set_qset_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_set_qset_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { i64, i8*, i8*, %struct.queue_set*, %struct.TYPE_2__* }
%struct.queue_set = type { i8*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEFAULT_RBDR_CNT = common dso_local global i32 0, align 4
@u8 = common dso_local global i32 0, align 4
@MAX_RCV_QUEUES_PER_QS = common dso_local global i32 0, align 4
@MAX_SND_QUEUES_PER_QS = common dso_local global i32 0, align 4
@RCV_BUF_COUNT = common dso_local global i32 0, align 4
@SND_QUEUE_LEN = common dso_local global i32 0, align 4
@CMP_QUEUE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nicvf_set_qset_resources(%struct.nicvf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.queue_set*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  %5 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %6 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %5, i32 0, i32 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.queue_set* @devm_kzalloc(i32* %8, i32 40, i32 %9)
  store %struct.queue_set* %10, %struct.queue_set** %4, align 8
  %11 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %12 = icmp ne %struct.queue_set* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %66

16:                                               ; preds = %1
  %17 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %18 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %19 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %18, i32 0, i32 3
  store %struct.queue_set* %17, %struct.queue_set** %19, align 8
  %20 = load i32, i32* @DEFAULT_RBDR_CNT, align 4
  %21 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %22 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @u8, align 4
  %24 = load i32, i32* @MAX_RCV_QUEUES_PER_QS, align 4
  %25 = call i32 (...) @num_online_cpus()
  %26 = call i8* @min_t(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %28 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @u8, align 4
  %30 = load i32, i32* @MAX_SND_QUEUES_PER_QS, align 4
  %31 = call i32 (...) @num_online_cpus()
  %32 = call i8* @min_t(i32 %29, i32 %30, i32 %31)
  %33 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %34 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @u8, align 4
  %36 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %37 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %40 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @max_t(i32 %35, i8* %38, i8* %41)
  %43 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %44 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @RCV_BUF_COUNT, align 4
  %46 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %47 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* @SND_QUEUE_LEN, align 4
  %49 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %50 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @CMP_QUEUE_LEN, align 4
  %52 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %53 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %55 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %58 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %60 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %63 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %65 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %64, i32 0, i32 0
  store i64 0, i64* %65, align 8
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %16, %13
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.queue_set* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i8* @min_t(i32, i32, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @max_t(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
