; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_npc_get_pkind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npc.c_rvu_npc_get_pkind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.npc_pkind }
%struct.npc_pkind = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_npc_get_pkind(%struct.rvu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.npc_pkind*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rvu*, %struct.rvu** %4, align 8
  %10 = getelementptr inbounds %struct.rvu, %struct.rvu* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.npc_pkind* %12, %struct.npc_pkind** %6, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %36, %2
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.npc_pkind*, %struct.npc_pkind** %6, align 8
  %16 = getelementptr inbounds %struct.npc_pkind, %struct.npc_pkind* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %13
  %21 = load %struct.npc_pkind*, %struct.npc_pkind** %6, align 8
  %22 = getelementptr inbounds %struct.npc_pkind, %struct.npc_pkind* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 16
  %30 = and i32 %29, 63
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %40

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %13

39:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %40

40:                                               ; preds = %39, %33
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
