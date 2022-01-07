; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.hisi_femac_queue = type { i32, i64, i64, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.hisi_femac_queue*, i32)* @hisi_femac_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_femac_init_queue(%struct.device* %0, %struct.hisi_femac_queue* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hisi_femac_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.hisi_femac_queue* %1, %struct.hisi_femac_queue** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @devm_kcalloc(%struct.device* %8, i32 %9, i32 8, i32 %10)
  %12 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %6, align 8
  %13 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %12, i32 0, i32 4
  store i8* %11, i8** %13, align 8
  %14 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %6, align 8
  %15 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %14, i32 0, i32 4
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %43

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i8* @devm_kcalloc(%struct.device* %22, i32 %23, i32 4, i32 %24)
  %26 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %6, align 8
  %27 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %6, align 8
  %29 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %43

35:                                               ; preds = %21
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %6, align 8
  %38 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %6, align 8
  %40 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.hisi_femac_queue*, %struct.hisi_femac_queue** %6, align 8
  %42 = getelementptr inbounds %struct.hisi_femac_queue, %struct.hisi_femac_queue* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %35, %32, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
