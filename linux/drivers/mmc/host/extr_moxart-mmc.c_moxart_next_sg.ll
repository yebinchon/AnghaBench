; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_moxart-mmc.c_moxart_next_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_moxart-mmc.c_moxart_next_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.moxart_host = type { i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.mmc_data* }
%struct.mmc_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.moxart_host*)* @moxart_next_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moxart_next_sg(%struct.moxart_host* %0) #0 {
  %2 = alloca %struct.moxart_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_data*, align 8
  store %struct.moxart_host* %0, %struct.moxart_host** %2, align 8
  %5 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %6 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %5, i32 0, i32 4
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  store %struct.mmc_data* %11, %struct.mmc_data** %4, align 8
  %12 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %13 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %12, i32 0, i32 3
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 1
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %13, align 8
  %16 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %17 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %21 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %1
  %25 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %26 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %31 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %33 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %34, %37
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %24
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %44 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %50 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %47, %41, %24
  br label %52

52:                                               ; preds = %51, %1
  %53 = load %struct.moxart_host*, %struct.moxart_host** %2, align 8
  %54 = getelementptr inbounds %struct.moxart_host, %struct.moxart_host* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
