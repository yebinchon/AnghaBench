; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mtd.c_efx_mtd_remove_partition.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mtd.c_efx_mtd_remove_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_mtd_partition = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_mtd_partition*)* @efx_mtd_remove_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_mtd_remove_partition(%struct.efx_mtd_partition* %0) #0 {
  %2 = alloca %struct.efx_mtd_partition*, align 8
  %3 = alloca i32, align 4
  store %struct.efx_mtd_partition* %0, %struct.efx_mtd_partition** %2, align 8
  br label %4

4:                                                ; preds = %13, %1
  %5 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %2, align 8
  %6 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %5, i32 0, i32 1
  %7 = call i32 @mtd_device_unregister(i32* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @EBUSY, align 4
  %10 = sub nsw i32 0, %9
  %11 = icmp ne i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %15

13:                                               ; preds = %4
  %14 = call i32 @ssleep(i32 1)
  br label %4

15:                                               ; preds = %12
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.efx_mtd_partition*, %struct.efx_mtd_partition** %2, align 8
  %19 = getelementptr inbounds %struct.efx_mtd_partition, %struct.efx_mtd_partition* %18, i32 0, i32 0
  %20 = call i32 @list_del(i32* %19)
  ret void
}

declare dso_local i32 @mtd_device_unregister(i32*) #1

declare dso_local i32 @ssleep(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
