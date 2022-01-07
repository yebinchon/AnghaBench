; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_dev.c_ddcb_cmd_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_dev.c_ddcb_cmd_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_file = type { %struct.genwqe_dev* }
%struct.genwqe_dev = type { i32 }
%struct.ddcb_requ = type { %struct.TYPE_2__*, %struct.dma_mapping* }
%struct.TYPE_2__ = type { i32* }
%struct.dma_mapping = type { i32 }

@DDCB_FIXUPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genwqe_file*, %struct.ddcb_requ*)* @ddcb_cmd_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddcb_cmd_cleanup(%struct.genwqe_file* %0, %struct.ddcb_requ* %1) #0 {
  %3 = alloca %struct.genwqe_file*, align 8
  %4 = alloca %struct.ddcb_requ*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_mapping*, align 8
  %7 = alloca %struct.genwqe_dev*, align 8
  store %struct.genwqe_file* %0, %struct.genwqe_file** %3, align 8
  store %struct.ddcb_requ* %1, %struct.ddcb_requ** %4, align 8
  %8 = load %struct.genwqe_file*, %struct.genwqe_file** %3, align 8
  %9 = getelementptr inbounds %struct.genwqe_file, %struct.genwqe_file* %8, i32 0, i32 0
  %10 = load %struct.genwqe_dev*, %struct.genwqe_dev** %9, align 8
  store %struct.genwqe_dev* %10, %struct.genwqe_dev** %7, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %52, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DDCB_FIXUPS, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %11
  %16 = load %struct.ddcb_requ*, %struct.ddcb_requ** %4, align 8
  %17 = getelementptr inbounds %struct.ddcb_requ, %struct.ddcb_requ* %16, i32 0, i32 1
  %18 = load %struct.dma_mapping*, %struct.dma_mapping** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %18, i64 %20
  store %struct.dma_mapping* %21, %struct.dma_mapping** %6, align 8
  %22 = load %struct.dma_mapping*, %struct.dma_mapping** %6, align 8
  %23 = call i64 @dma_mapping_used(%struct.dma_mapping* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = load %struct.genwqe_file*, %struct.genwqe_file** %3, align 8
  %27 = load %struct.dma_mapping*, %struct.dma_mapping** %6, align 8
  %28 = call i32 @__genwqe_del_mapping(%struct.genwqe_file* %26, %struct.dma_mapping* %27)
  %29 = load %struct.genwqe_dev*, %struct.genwqe_dev** %7, align 8
  %30 = load %struct.dma_mapping*, %struct.dma_mapping** %6, align 8
  %31 = call i32 @genwqe_user_vunmap(%struct.genwqe_dev* %29, %struct.dma_mapping* %30)
  br label %32

32:                                               ; preds = %25, %15
  %33 = load %struct.ddcb_requ*, %struct.ddcb_requ** %4, align 8
  %34 = getelementptr inbounds %struct.ddcb_requ, %struct.ddcb_requ* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = load %struct.genwqe_dev*, %struct.genwqe_dev** %7, align 8
  %44 = load %struct.ddcb_requ*, %struct.ddcb_requ** %4, align 8
  %45 = getelementptr inbounds %struct.ddcb_requ, %struct.ddcb_requ* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = call i32 @genwqe_free_sync_sgl(%struct.genwqe_dev* %43, %struct.TYPE_2__* %49)
  br label %51

51:                                               ; preds = %42, %32
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %11

55:                                               ; preds = %11
  ret i32 0
}

declare dso_local i64 @dma_mapping_used(%struct.dma_mapping*) #1

declare dso_local i32 @__genwqe_del_mapping(%struct.genwqe_file*, %struct.dma_mapping*) #1

declare dso_local i32 @genwqe_user_vunmap(%struct.genwqe_dev*, %struct.dma_mapping*) #1

declare dso_local i32 @genwqe_free_sync_sgl(%struct.genwqe_dev*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
