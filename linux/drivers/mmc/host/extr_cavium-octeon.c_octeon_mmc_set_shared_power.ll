; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium-octeon.c_octeon_mmc_set_shared_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium-octeon.c_octeon_mmc_set_shared_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_host = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cvm_mmc_host*, i32)* @octeon_mmc_set_shared_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_mmc_set_shared_power(%struct.cvm_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.cvm_mmc_host*, align 8
  %4 = alloca i32, align 4
  store %struct.cvm_mmc_host* %0, %struct.cvm_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %2
  %8 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %8, i32 0, i32 1
  %10 = call i32 @atomic_dec_return(i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gpiod_set_value_cansleep(i32 %15, i32 0)
  br label %17

17:                                               ; preds = %12, %7
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %22, i32 0, i32 1
  %24 = call i32 @atomic_inc_return(i32* %23)
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %28 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gpiod_set_value_cansleep(i32 %29, i32 1)
  br label %31

31:                                               ; preds = %26, %21
  br label %32

32:                                               ; preds = %31, %18
  ret void
}

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
