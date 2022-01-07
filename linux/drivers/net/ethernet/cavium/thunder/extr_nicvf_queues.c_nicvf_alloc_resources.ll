; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_alloc_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_alloc_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.queue_set* }
%struct.queue_set = type { i32, i32, i32, i32, i32*, i32, i32*, i32, i32* }

@DMA_BUFFER_LEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nicvf*)* @nicvf_alloc_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nicvf_alloc_resources(%struct.nicvf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.queue_set*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  %6 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %7 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %6, i32 0, i32 0
  %8 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  store %struct.queue_set* %8, %struct.queue_set** %5, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.queue_set*, %struct.queue_set** %5, align 8
  %12 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %9
  %16 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %17 = load %struct.queue_set*, %struct.queue_set** %5, align 8
  %18 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %17, i32 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load %struct.queue_set*, %struct.queue_set** %5, align 8
  %24 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DMA_BUFFER_LEN, align 4
  %27 = call i64 @nicvf_init_rbdr(%struct.nicvf* %16, i32* %22, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %86

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %9

34:                                               ; preds = %9
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %57, %34
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.queue_set*, %struct.queue_set** %5, align 8
  %38 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %35
  %42 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %43 = load %struct.queue_set*, %struct.queue_set** %5, align 8
  %44 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %43, i32 0, i32 6
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load %struct.queue_set*, %struct.queue_set** %5, align 8
  %50 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @nicvf_init_snd_queue(%struct.nicvf* %42, i32* %48, i32 %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %86

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %35

60:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %82, %60
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.queue_set*, %struct.queue_set** %5, align 8
  %64 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %61
  %68 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %69 = load %struct.queue_set*, %struct.queue_set** %5, align 8
  %70 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load %struct.queue_set*, %struct.queue_set** %5, align 8
  %76 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @nicvf_init_cmp_queue(%struct.nicvf* %68, i32* %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %86

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %4, align 4
  br label %61

85:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %91

86:                                               ; preds = %80, %55, %29
  %87 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %88 = call i32 @nicvf_free_resources(%struct.nicvf* %87)
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %86, %85
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i64 @nicvf_init_rbdr(%struct.nicvf*, i32*, i32, i32) #1

declare dso_local i64 @nicvf_init_snd_queue(%struct.nicvf*, i32*, i32, i32) #1

declare dso_local i64 @nicvf_init_cmp_queue(%struct.nicvf*, i32*, i32) #1

declare dso_local i32 @nicvf_free_resources(%struct.nicvf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
