; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_fold_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/bonding/extr_bond_main.c_bond_fold_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtnl_link_stats64 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtnl_link_stats64*, %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64*)* @bond_fold_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bond_fold_stats(%struct.rtnl_link_stats64* %0, %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64* %2) #0 {
  %4 = alloca %struct.rtnl_link_stats64*, align 8
  %5 = alloca %struct.rtnl_link_stats64*, align 8
  %6 = alloca %struct.rtnl_link_stats64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.rtnl_link_stats64* %0, %struct.rtnl_link_stats64** %4, align 8
  store %struct.rtnl_link_stats64* %1, %struct.rtnl_link_stats64** %5, align 8
  store %struct.rtnl_link_stats64* %2, %struct.rtnl_link_stats64** %6, align 8
  %14 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %5, align 8
  %15 = bitcast %struct.rtnl_link_stats64* %14 to i32*
  store i32* %15, i32** %7, align 8
  %16 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %6, align 8
  %17 = bitcast %struct.rtnl_link_stats64* %16 to i32*
  store i32* %17, i32** %8, align 8
  %18 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %4, align 8
  %19 = bitcast %struct.rtnl_link_stats64* %18 to i32*
  store i32* %19, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %64, %3
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 1
  br i1 %23, label %24, label %67

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* %12, align 4
  %37 = sub nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %13, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = or i32 %39, %40
  %42 = ashr i32 %41, 32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %24
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = sub nsw i64 %46, %48
  store i64 %49, i64* %13, align 8
  br label %50

50:                                               ; preds = %44, %24
  %51 = load i64, i64* %13, align 8
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %50
  %54 = load i64, i64* %13, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %54
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  br label %63

63:                                               ; preds = %53, %50
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %20

67:                                               ; preds = %20
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
