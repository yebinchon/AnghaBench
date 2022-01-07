; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_free_rsrc_contig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_free_rsrc_contig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsrc_bmap = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsrc_bmap*, i32, i32)* @rvu_free_rsrc_contig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvu_free_rsrc_contig(%struct.rsrc_bmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rsrc_bmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rsrc_bmap* %0, %struct.rsrc_bmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.rsrc_bmap*, %struct.rsrc_bmap** %4, align 8
  %8 = getelementptr inbounds %struct.rsrc_bmap, %struct.rsrc_bmap* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %26

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.rsrc_bmap*, %struct.rsrc_bmap** %4, align 8
  %15 = getelementptr inbounds %struct.rsrc_bmap, %struct.rsrc_bmap* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  br label %26

19:                                               ; preds = %12
  %20 = load %struct.rsrc_bmap*, %struct.rsrc_bmap** %4, align 8
  %21 = getelementptr inbounds %struct.rsrc_bmap, %struct.rsrc_bmap* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @bitmap_clear(i32 %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %19, %18, %11
  ret void
}

declare dso_local i32 @bitmap_clear(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
