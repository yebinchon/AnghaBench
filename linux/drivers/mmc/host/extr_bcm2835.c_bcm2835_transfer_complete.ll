; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_transfer_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_transfer_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { i32, %struct.TYPE_2__*, i32, %struct.mmc_data*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.mmc_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_host*)* @bcm2835_transfer_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_transfer_complete(%struct.bcm2835_host* %0) #0 {
  %2 = alloca %struct.bcm2835_host*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  store %struct.bcm2835_host* %0, %struct.bcm2835_host** %2, align 8
  %4 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %5 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %4, i32 0, i32 4
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %12 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %11, i32 0, i32 3
  %13 = load %struct.mmc_data*, %struct.mmc_data** %12, align 8
  store %struct.mmc_data* %13, %struct.mmc_data** %3, align 8
  %14 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %15 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %14, i32 0, i32 3
  store %struct.mmc_data* null, %struct.mmc_data** %15, align 8
  %16 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %17 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %1
  %23 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %24 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %29 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %51, label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %34 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %35 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @bcm2835_send_command(%struct.bcm2835_host* %33, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %32
  %42 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %43 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %48 = call i32 @bcm2835_finish_command(%struct.bcm2835_host* %47)
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49, %32
  br label %56

51:                                               ; preds = %27, %1
  %52 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %53 = call i32 @bcm2835_wait_transfer_complete(%struct.bcm2835_host* %52)
  %54 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %55 = call i32 @bcm2835_finish_request(%struct.bcm2835_host* %54)
  br label %56

56:                                               ; preds = %51, %50
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @bcm2835_send_command(%struct.bcm2835_host*, i64) #1

declare dso_local i32 @bcm2835_finish_command(%struct.bcm2835_host*) #1

declare dso_local i32 @bcm2835_wait_transfer_complete(%struct.bcm2835_host*) #1

declare dso_local i32 @bcm2835_finish_request(%struct.bcm2835_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
