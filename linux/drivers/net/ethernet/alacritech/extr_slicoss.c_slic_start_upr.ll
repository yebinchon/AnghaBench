; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_start_upr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_start_upr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { i32 }
%struct.slic_upr = type { i64, i32 }

@SLIC_UPR_CONFIG = common dso_local global i64 0, align 8
@SLIC_REG_RCONFIG = common dso_local global i32 0, align 4
@SLIC_REG_LSTAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*, %struct.slic_upr*)* @slic_start_upr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_start_upr(%struct.slic_device* %0, %struct.slic_upr* %1) #0 {
  %3 = alloca %struct.slic_device*, align 8
  %4 = alloca %struct.slic_upr*, align 8
  %5 = alloca i32, align 4
  store %struct.slic_device* %0, %struct.slic_device** %3, align 8
  store %struct.slic_upr* %1, %struct.slic_upr** %4, align 8
  %6 = load %struct.slic_upr*, %struct.slic_upr** %4, align 8
  %7 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SLIC_UPR_CONFIG, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @SLIC_REG_RCONFIG, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @SLIC_REG_LSTAT, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %5, align 4
  %17 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.slic_upr*, %struct.slic_upr** %4, align 8
  %20 = getelementptr inbounds %struct.slic_upr, %struct.slic_upr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @lower_32_bits(i32 %21)
  %23 = call i32 @slic_write(%struct.slic_device* %17, i32 %18, i32 %22)
  %24 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %25 = call i32 @slic_flush_write(%struct.slic_device* %24)
  ret void
}

declare dso_local i32 @slic_write(%struct.slic_device*, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @slic_flush_write(%struct.slic_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
