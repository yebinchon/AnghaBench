; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_hw_sem_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bfa_ioc.c_bfa_ioc_hw_sem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bfi_ioc_image_hdr = type { i32 }

@BFI_IOC_UNINIT = common dso_local global i32 0, align 4
@BFI_FWBOOT_TYPE_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*)* @bfa_ioc_hw_sem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_hw_sem_init(%struct.bfa_ioc* %0) #0 {
  %2 = alloca %struct.bfa_ioc*, align 8
  %3 = alloca %struct.bfi_ioc_image_hdr, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %2, align 8
  %6 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @readl(i32 %9)
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %15, %1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 1
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = call i32 @udelay(i32 20)
  %17 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %18 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @readl(i32 %20)
  store i32 %21, i32* %5, align 4
  br label %11

22:                                               ; preds = %11
  %23 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %24 = call i32 @bfa_ioc_get_cur_ioc_fwstate(%struct.bfa_ioc* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @BFI_IOC_UNINIT, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %30 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @writel(i32 1, i32 %32)
  br label %72

34:                                               ; preds = %22
  %35 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %36 = call i32 @bfa_nw_ioc_fwver_get(%struct.bfa_ioc* %35, %struct.bfi_ioc_image_hdr* %3)
  %37 = getelementptr inbounds %struct.bfi_ioc_image_hdr, %struct.bfi_ioc_image_hdr* %3, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @swab32(i32 %38)
  %40 = load i64, i64* @BFI_FWBOOT_TYPE_NORMAL, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %44 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @writel(i32 1, i32 %46)
  br label %72

48:                                               ; preds = %34
  %49 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %50 = call i32 @bfa_ioc_fwver_clear(%struct.bfa_ioc* %49)
  %51 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %52 = load i32, i32* @BFI_IOC_UNINIT, align 4
  %53 = call i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc* %51, i32 %52)
  %54 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %55 = load i32, i32* @BFI_IOC_UNINIT, align 4
  %56 = call i32 @bfa_ioc_set_alt_ioc_fwstate(%struct.bfa_ioc* %54, i32 %55)
  %57 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %58 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @readl(i32 %60)
  %62 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %63 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @writel(i32 1, i32 %65)
  %67 = load %struct.bfa_ioc*, %struct.bfa_ioc** %2, align 8
  %68 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @writel(i32 1, i32 %70)
  br label %72

72:                                               ; preds = %48, %42, %28
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @bfa_ioc_get_cur_ioc_fwstate(%struct.bfa_ioc*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @bfa_nw_ioc_fwver_get(%struct.bfa_ioc*, %struct.bfi_ioc_image_hdr*) #1

declare dso_local i64 @swab32(i32) #1

declare dso_local i32 @bfa_ioc_fwver_clear(%struct.bfa_ioc*) #1

declare dso_local i32 @bfa_ioc_set_cur_ioc_fwstate(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @bfa_ioc_set_alt_ioc_fwstate(%struct.bfa_ioc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
