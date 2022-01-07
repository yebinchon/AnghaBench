; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_addreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_addreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_entry = type { i32*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.l2t_entry*, i32*)* @addreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addreq(%struct.l2t_entry* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.l2t_entry*, align 8
  %5 = alloca i32*, align 8
  store %struct.l2t_entry* %0, %struct.l2t_entry** %4, align 8
  store i32* %1, i32** %5, align 8
  %6 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %7 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %50

10:                                               ; preds = %2
  %11 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %12 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = xor i32 %15, %18
  %20 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %21 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %24, %27
  %29 = or i32 %19, %28
  %30 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %31 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %34, %37
  %39 = or i32 %29, %38
  %40 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %41 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = xor i32 %44, %47
  %49 = or i32 %39, %48
  store i32 %49, i32* %3, align 4
  br label %60

50:                                               ; preds = %2
  %51 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %52 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = xor i32 %55, %58
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %50, %10
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
