; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_is_my_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_smt.c_is_my_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.fddi_addr = type { i32* }

@MAC0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_smc*, %struct.fddi_addr*)* @is_my_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_my_addr(%struct.s_smc* %0, %struct.fddi_addr* %1) #0 {
  %3 = alloca %struct.s_smc*, align 8
  %4 = alloca %struct.fddi_addr*, align 8
  store %struct.s_smc* %0, %struct.s_smc** %3, align 8
  store %struct.fddi_addr* %1, %struct.fddi_addr** %4, align 8
  %5 = load %struct.fddi_addr*, %struct.fddi_addr** %4, align 8
  %6 = getelementptr inbounds %struct.fddi_addr, %struct.fddi_addr* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = bitcast i32* %8 to i16*
  %10 = load i16, i16* %9, align 2
  %11 = sext i16 %10 to i32
  %12 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %13 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i64, i64* @MAC0, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = bitcast i32* %21 to i16*
  %23 = load i16, i16* %22, align 2
  %24 = sext i16 %23 to i32
  %25 = icmp eq i32 %11, %24
  br i1 %25, label %26, label %70

26:                                               ; preds = %2
  %27 = load %struct.fddi_addr*, %struct.fddi_addr** %4, align 8
  %28 = getelementptr inbounds %struct.fddi_addr, %struct.fddi_addr* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = bitcast i32* %30 to i16*
  %32 = load i16, i16* %31, align 2
  %33 = sext i16 %32 to i32
  %34 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %35 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = load i64, i64* @MAC0, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  %44 = bitcast i32* %43 to i16*
  %45 = load i16, i16* %44, align 2
  %46 = sext i16 %45 to i32
  %47 = icmp eq i32 %33, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %26
  %49 = load %struct.fddi_addr*, %struct.fddi_addr** %4, align 8
  %50 = getelementptr inbounds %struct.fddi_addr, %struct.fddi_addr* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = bitcast i32* %52 to i16*
  %54 = load i16, i16* %53, align 2
  %55 = sext i16 %54 to i32
  %56 = load %struct.s_smc*, %struct.s_smc** %3, align 8
  %57 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i64, i64* @MAC0, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 4
  %66 = bitcast i32* %65 to i16*
  %67 = load i16, i16* %66, align 2
  %68 = sext i16 %67 to i32
  %69 = icmp eq i32 %55, %68
  br label %70

70:                                               ; preds = %48, %26, %2
  %71 = phi i1 [ false, %26 ], [ false, %2 ], [ %69, %48 ]
  %72 = zext i1 %71 to i32
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
