; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_submit_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_submit_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpdma_data = type { i32 }
%struct.vpdma_desc_list = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@VPDMA_LIST_ADDR = common dso_local global i32 0, align 4
@VPDMA_LIST_ATTR = common dso_local global i32 0, align 4
@VPDMA_LIST_NUM_SHFT = common dso_local global i32 0, align 4
@VPDMA_LIST_TYPE_SHFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vpdma_submit_descs(%struct.vpdma_data* %0, %struct.vpdma_desc_list* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vpdma_data*, align 8
  %6 = alloca %struct.vpdma_desc_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.vpdma_data* %0, %struct.vpdma_data** %5, align 8
  store %struct.vpdma_desc_list* %1, %struct.vpdma_desc_list** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i64 @vpdma_list_busy(%struct.vpdma_data* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %57

17:                                               ; preds = %3
  %18 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %6, align 8
  %19 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %6, align 8
  %22 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %20, %24
  %26 = ashr i32 %25, 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %28 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %27, i32 0, i32 0
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %32 = load i32, i32* @VPDMA_LIST_ADDR, align 4
  %33 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %6, align 8
  %34 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @write_reg(%struct.vpdma_data* %31, i32 %32, i32 %37)
  %39 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %40 = load i32, i32* @VPDMA_LIST_ATTR, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @VPDMA_LIST_NUM_SHFT, align 4
  %43 = shl i32 %41, %42
  %44 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %6, align 8
  %45 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VPDMA_LIST_TYPE_SHFT, align 4
  %48 = shl i32 %46, %47
  %49 = or i32 %43, %48
  %50 = load i32, i32* %8, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @write_reg(%struct.vpdma_data* %39, i32 %40, i32 %51)
  %53 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %54 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %53, i32 0, i32 0
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %17, %14
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @vpdma_list_busy(%struct.vpdma_data*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @write_reg(%struct.vpdma_data*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
