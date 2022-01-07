; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_body_pool_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_dl.c_vsp1_dl_body_pool_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_dl_body_pool = type { %struct.vsp1_dl_body_pool*, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_dl_body_pool_destroy(%struct.vsp1_dl_body_pool* %0) #0 {
  %2 = alloca %struct.vsp1_dl_body_pool*, align 8
  store %struct.vsp1_dl_body_pool* %0, %struct.vsp1_dl_body_pool** %2, align 8
  %3 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %2, align 8
  %4 = icmp ne %struct.vsp1_dl_body_pool* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %34

6:                                                ; preds = %1
  %7 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %2, align 8
  %8 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %6
  %12 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %2, align 8
  %13 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %12, i32 0, i32 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %2, align 8
  %18 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %2, align 8
  %21 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %2, align 8
  %24 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dma_free_wc(i32 %16, i32 %19, i64 %22, i32 %25)
  br label %27

27:                                               ; preds = %11, %6
  %28 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %2, align 8
  %29 = getelementptr inbounds %struct.vsp1_dl_body_pool, %struct.vsp1_dl_body_pool* %28, i32 0, i32 0
  %30 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %29, align 8
  %31 = call i32 @kfree(%struct.vsp1_dl_body_pool* %30)
  %32 = load %struct.vsp1_dl_body_pool*, %struct.vsp1_dl_body_pool** %2, align 8
  %33 = call i32 @kfree(%struct.vsp1_dl_body_pool* %32)
  br label %34

34:                                               ; preds = %27, %5
  ret void
}

declare dso_local i32 @dma_free_wc(i32, i32, i64, i32) #1

declare dso_local i32 @kfree(%struct.vsp1_dl_body_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
