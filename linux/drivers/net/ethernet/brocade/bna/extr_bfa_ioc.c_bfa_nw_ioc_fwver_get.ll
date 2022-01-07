; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_nw_ioc_fwver_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_nw_ioc_fwver_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.bfi_ioc_image_hdr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_nw_ioc_fwver_get(%struct.bfa_ioc* %0, %struct.bfi_ioc_image_hdr* %1) #0 {
  %3 = alloca %struct.bfa_ioc*, align 8
  %4 = alloca %struct.bfi_ioc_image_hdr*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %3, align 8
  store %struct.bfi_ioc_image_hdr* %1, %struct.bfi_ioc_image_hdr** %4, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.bfi_ioc_image_hdr*, %struct.bfi_ioc_image_hdr** %4, align 8
  %10 = bitcast %struct.bfi_ioc_image_hdr* %9 to i64*
  store i64* %10, i64** %8, align 8
  %11 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @bfa_ioc_smem_pgnum(%struct.bfa_ioc* %11, i64 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @writel(i64 %14, i32 %18)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %39, %2
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = icmp ult i64 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load i64, i64* %6, align 8
  %26 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %25, %29
  %31 = call i32 @readl(i64 %30)
  %32 = call i64 @swab32(i32 %31)
  %33 = load i64*, i64** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  store i64 %32, i64* %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = add i64 %37, 8
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %24
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %20

42:                                               ; preds = %20
  ret void
}

declare dso_local i64 @bfa_ioc_smem_pgnum(%struct.bfa_ioc*, i64) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i64 @swab32(i32) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
