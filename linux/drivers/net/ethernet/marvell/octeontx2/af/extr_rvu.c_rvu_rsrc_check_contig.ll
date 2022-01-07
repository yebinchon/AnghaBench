; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_rsrc_check_contig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_rsrc_check_contig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsrc_bmap = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_rsrc_check_contig(%struct.rsrc_bmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rsrc_bmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rsrc_bmap* %0, %struct.rsrc_bmap** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.rsrc_bmap*, %struct.rsrc_bmap** %4, align 8
  %8 = getelementptr inbounds %struct.rsrc_bmap, %struct.rsrc_bmap* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

12:                                               ; preds = %2
  %13 = load %struct.rsrc_bmap*, %struct.rsrc_bmap** %4, align 8
  %14 = getelementptr inbounds %struct.rsrc_bmap, %struct.rsrc_bmap* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rsrc_bmap*, %struct.rsrc_bmap** %4, align 8
  %17 = getelementptr inbounds %struct.rsrc_bmap, %struct.rsrc_bmap* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @bitmap_find_next_zero_area(i32 %15, i32 %18, i32 0, i32 %19, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.rsrc_bmap*, %struct.rsrc_bmap** %4, align 8
  %23 = getelementptr inbounds %struct.rsrc_bmap, %struct.rsrc_bmap* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %28

27:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @bitmap_find_next_zero_area(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
