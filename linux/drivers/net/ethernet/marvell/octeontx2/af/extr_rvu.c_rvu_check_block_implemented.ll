; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_check_block_implemented.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_check_block_implemented.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { %struct.rvu_block* }
%struct.rvu_block = type { i32 }

@BLK_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*)* @rvu_check_block_implemented to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvu_check_block_implemented(%struct.rvu* %0) #0 {
  %2 = alloca %struct.rvu*, align 8
  %3 = alloca %struct.rvu_hwinfo*, align 8
  %4 = alloca %struct.rvu_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %2, align 8
  %7 = load %struct.rvu*, %struct.rvu** %2, align 8
  %8 = getelementptr inbounds %struct.rvu, %struct.rvu* %7, i32 0, i32 0
  %9 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  store %struct.rvu_hwinfo* %9, %struct.rvu_hwinfo** %3, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %33, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @BLK_COUNT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %10
  %15 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %3, align 8
  %16 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %15, i32 0, i32 0
  %17 = load %struct.rvu_block*, %struct.rvu_block** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %17, i64 %19
  store %struct.rvu_block* %20, %struct.rvu_block** %4, align 8
  %21 = load %struct.rvu*, %struct.rvu** %2, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @RVU_PF_BLOCK_ADDRX_DISC(i32 %22)
  %24 = call i32 @rvupf_read64(%struct.rvu* %21, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @BIT_ULL(i32 11)
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %14
  %30 = load %struct.rvu_block*, %struct.rvu_block** %4, align 8
  %31 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %10

36:                                               ; preds = %10
  ret void
}

declare dso_local i32 @rvupf_read64(%struct.rvu*, i32) #1

declare dso_local i32 @RVU_PF_BLOCK_ADDRX_DISC(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
