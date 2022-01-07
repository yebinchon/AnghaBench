; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_is_equal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_is_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fddi_addr = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fddi_addr*, %struct.fddi_addr*)* @is_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_equal(%struct.fddi_addr* %0, %struct.fddi_addr* %1) #0 {
  %3 = alloca %struct.fddi_addr*, align 8
  %4 = alloca %struct.fddi_addr*, align 8
  store %struct.fddi_addr* %0, %struct.fddi_addr** %3, align 8
  store %struct.fddi_addr* %1, %struct.fddi_addr** %4, align 8
  %5 = load %struct.fddi_addr*, %struct.fddi_addr** %3, align 8
  %6 = getelementptr inbounds %struct.fddi_addr, %struct.fddi_addr* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = bitcast i32* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.fddi_addr*, %struct.fddi_addr** %4, align 8
  %12 = getelementptr inbounds %struct.fddi_addr, %struct.fddi_addr* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = bitcast i32* %14 to i64*
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %10, %16
  br i1 %17, label %18, label %46

18:                                               ; preds = %2
  %19 = load %struct.fddi_addr*, %struct.fddi_addr** %3, align 8
  %20 = getelementptr inbounds %struct.fddi_addr, %struct.fddi_addr* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = bitcast i32* %22 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.fddi_addr*, %struct.fddi_addr** %4, align 8
  %26 = getelementptr inbounds %struct.fddi_addr, %struct.fddi_addr* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = bitcast i32* %28 to i64*
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %24, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %18
  %33 = load %struct.fddi_addr*, %struct.fddi_addr** %3, align 8
  %34 = getelementptr inbounds %struct.fddi_addr, %struct.fddi_addr* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 4
  %37 = bitcast i32* %36 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.fddi_addr*, %struct.fddi_addr** %4, align 8
  %40 = getelementptr inbounds %struct.fddi_addr, %struct.fddi_addr* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 4
  %43 = bitcast i32* %42 to i64*
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %38, %44
  br label %46

46:                                               ; preds = %32, %18, %2
  %47 = phi i1 [ false, %18 ], [ false, %2 ], [ %45, %32 ]
  %48 = zext i1 %47 to i32
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
