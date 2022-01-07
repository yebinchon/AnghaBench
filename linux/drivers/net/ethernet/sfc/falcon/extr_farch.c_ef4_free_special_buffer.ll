; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_free_special_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_free_special_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }
%struct.ef4_special_buffer = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i64 }

@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"deallocating special buffers %d-%d at %llx+%x (virt %p phys %llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*, %struct.ef4_special_buffer*)* @ef4_free_special_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_free_special_buffer(%struct.ef4_nic* %0, %struct.ef4_special_buffer* %1) #0 {
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca %struct.ef4_special_buffer*, align 8
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  store %struct.ef4_special_buffer* %1, %struct.ef4_special_buffer** %4, align 8
  %5 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %54

11:                                               ; preds = %2
  %12 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %13 = load i32, i32* @hw, align 4
  %14 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %15 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %18 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %21 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = sub nsw i64 %26, 1
  %28 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %29 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %34 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @virt_to_phys(i32 %44)
  %46 = trunc i64 %45 to i32
  %47 = call i32 @netif_dbg(%struct.ef4_nic* %12, i32 %13, i32 %16, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %27, i32 %32, i32 %36, i32 %40, i32 %46)
  %48 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %49 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %50 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %49, i32 0, i32 1
  %51 = call i32 @ef4_nic_free_buffer(%struct.ef4_nic* %48, %struct.TYPE_2__* %50)
  %52 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %4, align 8
  %53 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @ef4_nic_free_buffer(%struct.ef4_nic*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
