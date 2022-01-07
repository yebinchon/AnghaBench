; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_cee.c_bfa_nw_cee_mem_claim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_cee.c_bfa_nw_cee_mem_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_cee = type { %struct.bfa_cee_stats*, %struct.bfa_cee_attr*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.bfa_cee_stats = type { i32 }
%struct.bfa_cee_attr = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_nw_cee_mem_claim(%struct.bfa_cee* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_cee*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.bfa_cee* %0, %struct.bfa_cee** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32*, i32** %5, align 8
  %8 = load %struct.bfa_cee*, %struct.bfa_cee** %4, align 8
  %9 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i32* %7, i32** %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.bfa_cee*, %struct.bfa_cee** %4, align 8
  %13 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 (...) @bfa_cee_attr_meminfo()
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load %struct.bfa_cee*, %struct.bfa_cee** %4, align 8
  %20 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  store i32* %18, i32** %21, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 (...) @bfa_cee_attr_meminfo()
  %24 = add nsw i32 %22, %23
  %25 = load %struct.bfa_cee*, %struct.bfa_cee** %4, align 8
  %26 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = bitcast i32* %28 to %struct.bfa_cee_attr*
  %30 = load %struct.bfa_cee*, %struct.bfa_cee** %4, align 8
  %31 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %30, i32 0, i32 1
  store %struct.bfa_cee_attr* %29, %struct.bfa_cee_attr** %31, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 (...) @bfa_cee_attr_meminfo()
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = bitcast i32* %35 to %struct.bfa_cee_stats*
  %37 = load %struct.bfa_cee*, %struct.bfa_cee** %4, align 8
  %38 = getelementptr inbounds %struct.bfa_cee, %struct.bfa_cee* %37, i32 0, i32 0
  store %struct.bfa_cee_stats* %36, %struct.bfa_cee_stats** %38, align 8
  ret void
}

declare dso_local i32 @bfa_cee_attr_meminfo(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
