; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_alloc_rsrc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_alloc_rsrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsrc_bmap = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvu_alloc_rsrc(%struct.rsrc_bmap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsrc_bmap*, align 8
  %4 = alloca i32, align 4
  store %struct.rsrc_bmap* %0, %struct.rsrc_bmap** %3, align 8
  %5 = load %struct.rsrc_bmap*, %struct.rsrc_bmap** %3, align 8
  %6 = getelementptr inbounds %struct.rsrc_bmap, %struct.rsrc_bmap* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.rsrc_bmap*, %struct.rsrc_bmap** %3, align 8
  %14 = getelementptr inbounds %struct.rsrc_bmap, %struct.rsrc_bmap* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rsrc_bmap*, %struct.rsrc_bmap** %3, align 8
  %17 = getelementptr inbounds %struct.rsrc_bmap, %struct.rsrc_bmap* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @find_first_zero_bit(i32 %15, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.rsrc_bmap*, %struct.rsrc_bmap** %3, align 8
  %22 = getelementptr inbounds %struct.rsrc_bmap, %struct.rsrc_bmap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %12
  %26 = load i32, i32* @ENOSPC, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %35

28:                                               ; preds = %12
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.rsrc_bmap*, %struct.rsrc_bmap** %3, align 8
  %31 = getelementptr inbounds %struct.rsrc_bmap, %struct.rsrc_bmap* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @__set_bit(i32 %29, i32 %32)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %28, %25, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
