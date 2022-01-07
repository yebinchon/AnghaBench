; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_uld.h_lookup_stid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_uld.h_lookup_stid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tid_info = type { i32, i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.tid_info*, i32)* @lookup_stid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lookup_stid(%struct.tid_info* %0, i32 %1) #0 {
  %3 = alloca %struct.tid_info*, align 8
  %4 = alloca i32, align 4
  store %struct.tid_info* %0, %struct.tid_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %6 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %12 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp uge i32 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %17 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sub i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %22 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %34

26:                                               ; preds = %9, %2
  %27 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %28 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = sub nsw i64 %31, %29
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %26, %15
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %37 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %40 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add i32 %38, %41
  %43 = icmp ult i32 %35, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load %struct.tid_info*, %struct.tid_info** %3, align 8
  %46 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  br label %54

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %44
  %55 = phi i8* [ %52, %44 ], [ null, %53 ]
  ret i8* %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
