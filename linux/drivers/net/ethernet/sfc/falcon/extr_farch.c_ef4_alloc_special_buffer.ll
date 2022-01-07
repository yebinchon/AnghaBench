; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_alloc_special_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_alloc_special_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32, i32 }
%struct.ef4_special_buffer = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@EF4_BUF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"allocating special buffers %d-%d at %llx+%x (virt %p phys %llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*, %struct.ef4_special_buffer*, i32)* @ef4_alloc_special_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_alloc_special_buffer(%struct.ef4_nic* %0, %struct.ef4_special_buffer* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ef4_nic*, align 8
  %6 = alloca %struct.ef4_special_buffer*, align 8
  %7 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %5, align 8
  store %struct.ef4_special_buffer* %1, %struct.ef4_special_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @EF4_BUF_SIZE, align 4
  %10 = call i32 @ALIGN(i32 %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %12 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %6, align 8
  %13 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %12, i32 0, i32 2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i64 @ef4_nic_alloc_buffer(%struct.ef4_nic* %11, %struct.TYPE_2__* %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %79

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @EF4_BUF_SIZE, align 4
  %24 = udiv i32 %22, %23
  %25 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %6, align 8
  %28 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @EF4_BUF_SIZE, align 4
  %32 = sub i32 %31, 1
  %33 = and i32 %30, %32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %36 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %6, align 8
  %41 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %44 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %48 = load i32, i32* @probe, align 4
  %49 = load %struct.ef4_nic*, %struct.ef4_nic** %5, align 8
  %50 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %6, align 8
  %53 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %6, align 8
  %59 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add i32 %57, %60
  %62 = sub i32 %61, 1
  %63 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ef4_special_buffer*, %struct.ef4_special_buffer** %6, align 8
  %73 = getelementptr inbounds %struct.ef4_special_buffer, %struct.ef4_special_buffer* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @virt_to_phys(i32 %75)
  %77 = trunc i64 %76 to i32
  %78 = call i32 @netif_dbg(%struct.ef4_nic* %47, i32 %48, i32 %51, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %62, i32 %66, i32 %67, i32 %71, i32 %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %21, %18
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @ef4_nic_alloc_buffer(%struct.ef4_nic*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @virt_to_phys(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
