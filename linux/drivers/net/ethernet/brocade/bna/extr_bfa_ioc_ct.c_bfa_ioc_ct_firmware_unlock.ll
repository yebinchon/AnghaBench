; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc_ct.c_bfa_ioc_ct_firmware_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc_ct.c_bfa_ioc_ct_firmware_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BFA_IOC_FWIMG_MINSZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*)* @bfa_ioc_ct_firmware_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_ct_firmware_unlock(%struct.bfa_ioc* %0) #0 {
  %2 = alloca %struct.bfa_ioc*, align 8
  %3 = alloca i64, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %2, align 8
  %4 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %5 = call i32 @bfa_ioc_asic_gen(%struct.bfa_ioc* %4)
  %6 = call i64 @bfa_cb_image_get_size(i32 %5)
  %7 = load i64, i64* @BFA_IOC_FWIMG_MINSZ, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %39

10:                                               ; preds = %1
  %11 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %12 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bfa_nw_ioc_sem_get(i32 %14)
  %16 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %17 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @readl(i32 %19)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = icmp sgt i64 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load i64, i64* %3, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %3, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %30 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @writel(i64 %28, i32 %32)
  %34 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %35 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bfa_nw_ioc_sem_release(i32 %37)
  br label %39

39:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @bfa_cb_image_get_size(i32) #1

declare dso_local i32 @bfa_ioc_asic_gen(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_nw_ioc_sem_get(i32) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @bfa_nw_ioc_sem_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
