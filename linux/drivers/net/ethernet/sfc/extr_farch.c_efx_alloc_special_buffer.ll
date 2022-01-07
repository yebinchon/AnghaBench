; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_alloc_special_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_alloc_special_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, i32, %struct.siena_nic_data* }
%struct.siena_nic_data = type { i64 }
%struct.efx_special_buffer = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EFX_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"allocating special buffers %d-%d at %llx+%x (virt %p phys %llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.efx_special_buffer*, i32)* @efx_alloc_special_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_alloc_special_buffer(%struct.efx_nic* %0, %struct.efx_special_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca %struct.efx_special_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store %struct.efx_special_buffer* %1, %struct.efx_special_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @EFX_BUF_SIZE, align 4
  %10 = call i32 @ALIGN(i32 %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %12 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %13 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %12, i32 0, i32 2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i64 @efx_nic_alloc_buffer(%struct.efx_nic* %11, %struct.TYPE_2__* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %81

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @EFX_BUF_SIZE, align 4
  %24 = udiv i32 %22, %23
  %25 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @EFX_BUF_SIZE, align 4
  %32 = sub i32 %31, 1
  %33 = and i32 %30, %32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = zext i32 %42 to i64
  %44 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %45 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, %43
  store i64 %47, i64* %45, align 8
  %48 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %49 = load i32, i32* @probe, align 4
  %50 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %51 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %54 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %57 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %58, %62
  %64 = sub nsw i64 %63, 1
  %65 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %66 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %71 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.efx_special_buffer*, %struct.efx_special_buffer** %6, align 8
  %75 = getelementptr inbounds %struct.efx_special_buffer, %struct.efx_special_buffer* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @virt_to_phys(i32 %77)
  %79 = trunc i64 %78 to i32
  %80 = call i32 @netif_dbg(%struct.efx_nic* %48, i32 %49, i32 %52, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %64, i32 %68, i32 %69, i32 %73, i32 %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %21, %18
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @efx_nic_alloc_buffer(%struct.efx_nic*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i64 @virt_to_phys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
