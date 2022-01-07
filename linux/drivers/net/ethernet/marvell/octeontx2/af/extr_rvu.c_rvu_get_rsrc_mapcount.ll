; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_get_rsrc_mapcount.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_get_rsrc_mapcount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu_pfvf = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu_pfvf*, i32)* @rvu_get_rsrc_mapcount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvu_get_rsrc_mapcount(%struct.rvu_pfvf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvu_pfvf*, align 8
  %5 = alloca i32, align 4
  store %struct.rvu_pfvf* %0, %struct.rvu_pfvf** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %37 [
    i32 131, label %7
    i32 132, label %14
    i32 130, label %21
    i32 129, label %25
    i32 128, label %29
    i32 133, label %33
  ]

7:                                                ; preds = %2
  %8 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %9 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  store i32 %13, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %16 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %2
  %22 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %23 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %38

25:                                               ; preds = %2
  %26 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %27 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %3, align 4
  br label %38

29:                                               ; preds = %2
  %30 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %31 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %2
  %34 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %35 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %33, %29, %25, %21, %14, %7
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
