; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_data_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_data_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxcmci_host = type { i32*, i32, %struct.mmc_request*, i32 }
%struct.mmc_request = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxcmci_host*, i32)* @mxcmci_data_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxcmci_data_done(%struct.mxcmci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mxcmci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mxcmci_host* %0, %struct.mxcmci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %9 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %8, i32 0, i32 1
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %13 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %18 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %17, i32 0, i32 1
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  br label %79

21:                                               ; preds = %2
  %22 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %23 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %22, i32 0, i32 2
  %24 = load %struct.mmc_request*, %struct.mmc_request** %23, align 8
  %25 = icmp ne %struct.mmc_request* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %28 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %27, i32 0, i32 1
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  br label %79

31:                                               ; preds = %21
  %32 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %33 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %32, i32 0, i32 2
  %34 = load %struct.mmc_request*, %struct.mmc_request** %33, align 8
  store %struct.mmc_request* %34, %struct.mmc_request** %5, align 8
  %35 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %36 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %31
  %40 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %41 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %40, i32 0, i32 2
  store %struct.mmc_request* null, %struct.mmc_request** %41, align 8
  br label %42

42:                                               ; preds = %39, %31
  %43 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @mxcmci_finish_data(%struct.mxcmci_host* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %47 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %46, i32 0, i32 1
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %79

53:                                               ; preds = %42
  %54 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @mxcmci_read_response(%struct.mxcmci_host* %54, i32 %55)
  %57 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %58 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  %59 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %60 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %53
  %64 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %65 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %66 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @mxcmci_start_cmd(%struct.mxcmci_host* %64, i64 %67, i32 0)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %72 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %73 = call i32 @mxcmci_finish_request(%struct.mxcmci_host* %71, %struct.mmc_request* %72)
  br label %79

74:                                               ; preds = %63
  br label %79

75:                                               ; preds = %53
  %76 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %77 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %78 = call i32 @mxcmci_finish_request(%struct.mxcmci_host* %76, %struct.mmc_request* %77)
  br label %79

79:                                               ; preds = %16, %26, %52, %70, %75, %74
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mxcmci_finish_data(%struct.mxcmci_host*, i32) #1

declare dso_local i32 @mxcmci_read_response(%struct.mxcmci_host*, i32) #1

declare dso_local i64 @mxcmci_start_cmd(%struct.mxcmci_host*, i64, i32) #1

declare dso_local i32 @mxcmci_finish_request(%struct.mxcmci_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
