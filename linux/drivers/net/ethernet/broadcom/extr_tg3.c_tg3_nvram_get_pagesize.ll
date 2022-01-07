; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_nvram_get_pagesize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_nvram_get_pagesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@NVRAM_CFG1_5752PAGE_SIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*, i32)* @tg3_nvram_get_pagesize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_nvram_get_pagesize(%struct.tg3* %0, i32 %1) #0 {
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @NVRAM_CFG1_5752PAGE_SIZE_MASK, align 4
  %7 = and i32 %5, %6
  switch i32 %7, label %29 [
    i32 133, label %8
    i32 129, label %11
    i32 134, label %14
    i32 131, label %17
    i32 130, label %20
    i32 132, label %23
    i32 128, label %26
  ]

8:                                                ; preds = %2
  %9 = load %struct.tg3*, %struct.tg3** %3, align 8
  %10 = getelementptr inbounds %struct.tg3, %struct.tg3* %9, i32 0, i32 0
  store i32 256, i32* %10, align 4
  br label %29

11:                                               ; preds = %2
  %12 = load %struct.tg3*, %struct.tg3** %3, align 8
  %13 = getelementptr inbounds %struct.tg3, %struct.tg3* %12, i32 0, i32 0
  store i32 512, i32* %13, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.tg3*, %struct.tg3** %3, align 8
  %16 = getelementptr inbounds %struct.tg3, %struct.tg3* %15, i32 0, i32 0
  store i32 1024, i32* %16, align 4
  br label %29

17:                                               ; preds = %2
  %18 = load %struct.tg3*, %struct.tg3** %3, align 8
  %19 = getelementptr inbounds %struct.tg3, %struct.tg3* %18, i32 0, i32 0
  store i32 2048, i32* %19, align 4
  br label %29

20:                                               ; preds = %2
  %21 = load %struct.tg3*, %struct.tg3** %3, align 8
  %22 = getelementptr inbounds %struct.tg3, %struct.tg3* %21, i32 0, i32 0
  store i32 4096, i32* %22, align 4
  br label %29

23:                                               ; preds = %2
  %24 = load %struct.tg3*, %struct.tg3** %3, align 8
  %25 = getelementptr inbounds %struct.tg3, %struct.tg3* %24, i32 0, i32 0
  store i32 264, i32* %25, align 4
  br label %29

26:                                               ; preds = %2
  %27 = load %struct.tg3*, %struct.tg3** %3, align 8
  %28 = getelementptr inbounds %struct.tg3, %struct.tg3* %27, i32 0, i32 0
  store i32 528, i32* %28, align 4
  br label %29

29:                                               ; preds = %2, %26, %23, %20, %17, %14, %11, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
