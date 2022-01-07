; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_ev_read_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_ev_read_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_channel = type { i32, i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { i32 }

@EFX_MIN_EVQ_SIZE = common dso_local global i32 0, align 4
@ERF_DD_EVQ_IND_RPTR_WIDTH = common dso_local global i32 0, align 4
@EFX_MAX_EVQ_SIZE = common dso_local global i32 0, align 4
@ERF_DD_EVQ_IND_RPTR_FLAGS = common dso_local global i32 0, align 4
@EFE_DD_EVQ_IND_RPTR_FLAGS_HIGH = common dso_local global i32 0, align 4
@ERF_DD_EVQ_IND_RPTR = common dso_local global i32 0, align 4
@ER_DD_EVQ_INDIRECT = common dso_local global i32 0, align 4
@EFE_DD_EVQ_IND_RPTR_FLAGS_LOW = common dso_local global i32 0, align 4
@ERF_DZ_EVQ_RPTR = common dso_local global i32 0, align 4
@ER_DZ_EVQ_RPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_channel*)* @efx_ef10_ev_read_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_ev_read_ack(%struct.efx_channel* %0) #0 {
  %2 = alloca %struct.efx_channel*, align 8
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_channel* %0, %struct.efx_channel** %2, align 8
  %5 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %6 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %5, i32 0, i32 3
  %7 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  store %struct.efx_nic* %7, %struct.efx_nic** %3, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = call i64 @EFX_EF10_WORKAROUND_35388(%struct.efx_nic* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %63

11:                                               ; preds = %1
  %12 = load i32, i32* @EFX_MIN_EVQ_SIZE, align 4
  %13 = load i32, i32* @ERF_DD_EVQ_IND_RPTR_WIDTH, align 4
  %14 = shl i32 1, %13
  %15 = icmp slt i32 %12, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUILD_BUG_ON(i32 %16)
  %18 = load i32, i32* @EFX_MAX_EVQ_SIZE, align 4
  %19 = load i32, i32* @ERF_DD_EVQ_IND_RPTR_WIDTH, align 4
  %20 = mul nsw i32 2, %19
  %21 = shl i32 1, %20
  %22 = icmp sgt i32 %18, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUILD_BUG_ON(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ERF_DD_EVQ_IND_RPTR_FLAGS, align 4
  %27 = load i32, i32* @EFE_DD_EVQ_IND_RPTR_FLAGS_HIGH, align 4
  %28 = load i32, i32* @ERF_DD_EVQ_IND_RPTR, align 4
  %29 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %30 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %33 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %31, %34
  %36 = load i32, i32* @ERF_DD_EVQ_IND_RPTR_WIDTH, align 4
  %37 = ashr i32 %35, %36
  %38 = call i32 @EFX_POPULATE_DWORD_2(i32 %25, i32 %26, i32 %27, i32 %28, i32 %37)
  %39 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %40 = load i32, i32* @ER_DD_EVQ_INDIRECT, align 4
  %41 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %42 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @efx_writed_page(%struct.efx_nic* %39, i32* %4, i32 %40, i32 %43)
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @ERF_DD_EVQ_IND_RPTR_FLAGS, align 4
  %47 = load i32, i32* @EFE_DD_EVQ_IND_RPTR_FLAGS_LOW, align 4
  %48 = load i32, i32* @ERF_DD_EVQ_IND_RPTR, align 4
  %49 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %50 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ERF_DD_EVQ_IND_RPTR_WIDTH, align 4
  %53 = shl i32 1, %52
  %54 = sub nsw i32 %53, 1
  %55 = and i32 %51, %54
  %56 = call i32 @EFX_POPULATE_DWORD_2(i32 %45, i32 %46, i32 %47, i32 %48, i32 %55)
  %57 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %58 = load i32, i32* @ER_DD_EVQ_INDIRECT, align 4
  %59 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %60 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @efx_writed_page(%struct.efx_nic* %57, i32* %4, i32 %58, i32 %61)
  br label %80

63:                                               ; preds = %1
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @ERF_DZ_EVQ_RPTR, align 4
  %66 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %67 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %70 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %68, %71
  %73 = call i32 @EFX_POPULATE_DWORD_1(i32 %64, i32 %65, i32 %72)
  %74 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %75 = load i32, i32* @ER_DZ_EVQ_RPTR, align 4
  %76 = load %struct.efx_channel*, %struct.efx_channel** %2, align 8
  %77 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @efx_writed_page(%struct.efx_nic* %74, i32* %4, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %63, %11
  ret void
}

declare dso_local i64 @EFX_EF10_WORKAROUND_35388(%struct.efx_nic*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @EFX_POPULATE_DWORD_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @efx_writed_page(%struct.efx_nic*, i32*, i32, i32) #1

declare dso_local i32 @EFX_POPULATE_DWORD_1(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
