; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_rspq_next.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sge.c_rspq_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_rspq = type { i32, i64, i64, i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_rspq*)* @rspq_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rspq_next(%struct.sge_rspq* %0) #0 {
  %2 = alloca %struct.sge_rspq*, align 8
  store %struct.sge_rspq* %0, %struct.sge_rspq** %2, align 8
  %3 = load %struct.sge_rspq*, %struct.sge_rspq** %2, align 8
  %4 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %3, i32 0, i32 5
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.sge_rspq*, %struct.sge_rspq** %2, align 8
  %7 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = sext i32 %8 to i64
  %10 = getelementptr i8, i8* %5, i64 %9
  %11 = load %struct.sge_rspq*, %struct.sge_rspq** %2, align 8
  %12 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %11, i32 0, i32 5
  store i8* %10, i8** %12, align 8
  %13 = load %struct.sge_rspq*, %struct.sge_rspq** %2, align 8
  %14 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %14, align 8
  %17 = load %struct.sge_rspq*, %struct.sge_rspq** %2, align 8
  %18 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %1
  %25 = load %struct.sge_rspq*, %struct.sge_rspq** %2, align 8
  %26 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.sge_rspq*, %struct.sge_rspq** %2, align 8
  %28 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = xor i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.sge_rspq*, %struct.sge_rspq** %2, align 8
  %32 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.sge_rspq*, %struct.sge_rspq** %2, align 8
  %35 = getelementptr inbounds %struct.sge_rspq, %struct.sge_rspq* %34, i32 0, i32 5
  store i8* %33, i8** %35, align 8
  br label %36

36:                                               ; preds = %24, %1
  ret void
}

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
