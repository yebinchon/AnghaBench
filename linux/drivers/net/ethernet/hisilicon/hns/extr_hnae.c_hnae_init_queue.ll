; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_init_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hnae.c_hnae_init_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32 }
%struct.hnae_queue = type { %struct.TYPE_5__, %struct.TYPE_5__, %struct.hnae_handle*, %struct.hnae_ae_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.hnae_ae_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.hnae_queue*)* }

@RINGF_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae_handle*, %struct.hnae_queue*, %struct.hnae_ae_dev*)* @hnae_init_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hnae_init_queue(%struct.hnae_handle* %0, %struct.hnae_queue* %1, %struct.hnae_ae_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hnae_handle*, align 8
  %6 = alloca %struct.hnae_queue*, align 8
  %7 = alloca %struct.hnae_ae_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.hnae_handle* %0, %struct.hnae_handle** %5, align 8
  store %struct.hnae_queue* %1, %struct.hnae_queue** %6, align 8
  store %struct.hnae_ae_dev* %2, %struct.hnae_ae_dev** %7, align 8
  %9 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %7, align 8
  %10 = load %struct.hnae_queue*, %struct.hnae_queue** %6, align 8
  %11 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %10, i32 0, i32 3
  store %struct.hnae_ae_dev* %9, %struct.hnae_ae_dev** %11, align 8
  %12 = load %struct.hnae_handle*, %struct.hnae_handle** %5, align 8
  %13 = load %struct.hnae_queue*, %struct.hnae_queue** %6, align 8
  %14 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %13, i32 0, i32 2
  store %struct.hnae_handle* %12, %struct.hnae_handle** %14, align 8
  %15 = load %struct.hnae_queue*, %struct.hnae_queue** %6, align 8
  %16 = load %struct.hnae_queue*, %struct.hnae_queue** %6, align 8
  %17 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %16, i32 0, i32 0
  %18 = load %struct.hnae_queue*, %struct.hnae_queue** %6, align 8
  %19 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @RINGF_DIR, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @hnae_init_ring(%struct.hnae_queue* %15, %struct.TYPE_5__* %17, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %63

28:                                               ; preds = %3
  %29 = load %struct.hnae_queue*, %struct.hnae_queue** %6, align 8
  %30 = load %struct.hnae_queue*, %struct.hnae_queue** %6, align 8
  %31 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %30, i32 0, i32 1
  %32 = load %struct.hnae_queue*, %struct.hnae_queue** %6, align 8
  %33 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @RINGF_DIR, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = call i32 @hnae_init_ring(%struct.hnae_queue* %29, %struct.TYPE_5__* %31, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %59

43:                                               ; preds = %28
  %44 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %7, align 8
  %45 = getelementptr inbounds %struct.hnae_ae_dev, %struct.hnae_ae_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32 (%struct.hnae_queue*)*, i32 (%struct.hnae_queue*)** %47, align 8
  %49 = icmp ne i32 (%struct.hnae_queue*)* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.hnae_ae_dev*, %struct.hnae_ae_dev** %7, align 8
  %52 = getelementptr inbounds %struct.hnae_ae_dev, %struct.hnae_ae_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.hnae_queue*)*, i32 (%struct.hnae_queue*)** %54, align 8
  %56 = load %struct.hnae_queue*, %struct.hnae_queue** %6, align 8
  %57 = call i32 %55(%struct.hnae_queue* %56)
  br label %58

58:                                               ; preds = %50, %43
  store i32 0, i32* %4, align 4
  br label %65

59:                                               ; preds = %42
  %60 = load %struct.hnae_queue*, %struct.hnae_queue** %6, align 8
  %61 = getelementptr inbounds %struct.hnae_queue, %struct.hnae_queue* %60, i32 0, i32 0
  %62 = call i32 @hnae_fini_ring(%struct.TYPE_5__* %61)
  br label %63

63:                                               ; preds = %59, %27
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %58
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @hnae_init_ring(%struct.hnae_queue*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @hnae_fini_ring(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
