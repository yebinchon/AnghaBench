; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_hwlist_get_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_hwlist_get_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpdma_data = type { i8** }

@VPDMA_MAX_NUM_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vpdma_hwlist_get_priv(%struct.vpdma_data* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vpdma_data*, align 8
  %5 = alloca i32, align 4
  store %struct.vpdma_data* %0, %struct.vpdma_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.vpdma_data*, %struct.vpdma_data** %4, align 8
  %7 = icmp ne %struct.vpdma_data* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @VPDMA_MAX_NUM_LIST, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %8, %2
  store i8* null, i8** %3, align 8
  br label %21

13:                                               ; preds = %8
  %14 = load %struct.vpdma_data*, %struct.vpdma_data** %4, align 8
  %15 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8*, i8** %16, i64 %18
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %3, align 8
  br label %21

21:                                               ; preds = %13, %12
  %22 = load i8*, i8** %3, align 8
  ret i8* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
