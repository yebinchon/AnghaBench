; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_init_pause_thresholds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_init_pause_thresholds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*)* @cas_init_pause_thresholds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_init_pause_thresholds(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %2, align 8
  %6 = load %struct.cas*, %struct.cas** %2, align 8
  %7 = getelementptr inbounds %struct.cas, %struct.cas* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp sle i32 %8, 2048
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.cas*, %struct.cas** %2, align 8
  %12 = getelementptr inbounds %struct.cas, %struct.cas* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.cas*, %struct.cas** %2, align 8
  %15 = getelementptr inbounds %struct.cas, %struct.cas* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.cas*, %struct.cas** %2, align 8
  %17 = getelementptr inbounds %struct.cas, %struct.cas* %16, i32 0, i32 1
  store i32 %13, i32* %17, align 4
  br label %58

18:                                               ; preds = %1
  %19 = load %struct.cas*, %struct.cas** %2, align 8
  %20 = getelementptr inbounds %struct.cas, %struct.cas* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ETH_HLEN, align 4
  %25 = add nsw i32 %23, %24
  %26 = add nsw i32 %25, 4
  %27 = add nsw i32 %26, 4
  %28 = add nsw i32 %27, 64
  %29 = and i32 %28, -64
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = mul nsw i32 %30, 3
  %32 = load %struct.cas*, %struct.cas** %2, align 8
  %33 = getelementptr inbounds %struct.cas, %struct.cas* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %18
  %37 = load %struct.cas*, %struct.cas** %2, align 8
  %38 = getelementptr inbounds %struct.cas, %struct.cas* %37, i32 0, i32 1
  store i32 7104, i32* %38, align 4
  %39 = load %struct.cas*, %struct.cas** %2, align 8
  %40 = getelementptr inbounds %struct.cas, %struct.cas* %39, i32 0, i32 2
  store i32 960, i32* %40, align 8
  br label %57

41:                                               ; preds = %18
  %42 = load %struct.cas*, %struct.cas** %2, align 8
  %43 = getelementptr inbounds %struct.cas, %struct.cas* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = mul nsw i32 %45, 2
  %47 = sub nsw i32 %44, %46
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %3, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.cas*, %struct.cas** %2, align 8
  %53 = getelementptr inbounds %struct.cas, %struct.cas* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.cas*, %struct.cas** %2, align 8
  %56 = getelementptr inbounds %struct.cas, %struct.cas* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %41, %36
  br label %58

58:                                               ; preds = %57, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
