; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_page_swap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_page_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.cas = type { %struct.TYPE_5__*** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (%struct.cas*, i32, i32)* @cas_page_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @cas_page_swap(%struct.cas* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca %struct.TYPE_5__**, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  store %struct.cas* %0, %struct.cas** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.cas*, %struct.cas** %4, align 8
  %11 = getelementptr inbounds %struct.cas, %struct.cas* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__**, %struct.TYPE_5__*** %12, i64 0
  %14 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  store %struct.TYPE_5__** %14, %struct.TYPE_5__*** %7, align 8
  %15 = load %struct.cas*, %struct.cas** %4, align 8
  %16 = getelementptr inbounds %struct.cas, %struct.cas* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__**, %struct.TYPE_5__*** %17, i64 1
  %19 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %18, align 8
  store %struct.TYPE_5__** %19, %struct.TYPE_5__*** %8, align 8
  %20 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %20, i64 %22
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @page_count(i32 %26)
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %29, label %51

29:                                               ; preds = %3
  %30 = load %struct.cas*, %struct.cas** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call %struct.TYPE_5__* @cas_page_spare(%struct.cas* %30, i32 %31)
  store %struct.TYPE_5__* %32, %struct.TYPE_5__** %9, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %34 = icmp ne %struct.TYPE_5__* %33, null
  br i1 %34, label %35, label %50

35:                                               ; preds = %29
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %36, i64 %38
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %41, i64 %43
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %44, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %46, i64 %48
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %49, align 8
  br label %50

50:                                               ; preds = %35, %29
  br label %51

51:                                               ; preds = %50, %3
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %52, i64 %54
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = call i32 @RX_USED_SET(%struct.TYPE_5__* %56, i32 0)
  %58 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %58, i64 %60
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  ret %struct.TYPE_5__* %62
}

declare dso_local i32 @page_count(i32) #1

declare dso_local %struct.TYPE_5__* @cas_page_spare(%struct.cas*, i32) #1

declare dso_local i32 @RX_USED_SET(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
