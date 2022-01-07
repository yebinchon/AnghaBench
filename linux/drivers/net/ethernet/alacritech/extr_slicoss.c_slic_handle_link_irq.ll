; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_handle_link_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_handle_link_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { %struct.slic_shmem }
%struct.slic_shmem = type { %struct.slic_shmem_data* }
%struct.slic_shmem_data = type { i32 }

@SLIC_GIG_LINKUP = common dso_local global i32 0, align 4
@SLIC_GIG_SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SLIC_GIG_SPEED_100 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SLIC_GIG_FULLDUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slic_device*)* @slic_handle_link_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slic_handle_link_irq(%struct.slic_device* %0) #0 {
  %2 = alloca %struct.slic_device*, align 8
  %3 = alloca %struct.slic_shmem*, align 8
  %4 = alloca %struct.slic_shmem_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.slic_device* %0, %struct.slic_device** %2, align 8
  %8 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %9 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %8, i32 0, i32 0
  store %struct.slic_shmem* %9, %struct.slic_shmem** %3, align 8
  %10 = load %struct.slic_shmem*, %struct.slic_shmem** %3, align 8
  %11 = getelementptr inbounds %struct.slic_shmem, %struct.slic_shmem* %10, i32 0, i32 0
  %12 = load %struct.slic_shmem_data*, %struct.slic_shmem_data** %11, align 8
  store %struct.slic_shmem_data* %12, %struct.slic_shmem_data** %4, align 8
  %13 = load %struct.slic_shmem_data*, %struct.slic_shmem_data** %4, align 8
  %14 = getelementptr inbounds %struct.slic_shmem_data, %struct.slic_shmem_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SLIC_GIG_LINKUP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SLIC_GIG_SPEED_1000, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @SPEED_1000, align 4
  store i32 %27, i32* %6, align 4
  br label %38

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @SLIC_GIG_SPEED_100, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @SPEED_100, align 4
  store i32 %34, i32* %6, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @SPEED_10, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %33
  br label %38

38:                                               ; preds = %37, %26
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @SLIC_GIG_FULLDUPLEX, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @DUPLEX_FULL, align 4
  br label %47

45:                                               ; preds = %38
  %46 = load i32, i32* @DUPLEX_HALF, align 4
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i32 [ %44, %43 ], [ %46, %45 ]
  store i32 %48, i32* %5, align 4
  br label %52

49:                                               ; preds = %1
  %50 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @SPEED_UNKNOWN, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49, %47
  %53 = load %struct.slic_device*, %struct.slic_device** %2, align 8
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @slic_configure_link(%struct.slic_device* %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @slic_configure_link(%struct.slic_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
