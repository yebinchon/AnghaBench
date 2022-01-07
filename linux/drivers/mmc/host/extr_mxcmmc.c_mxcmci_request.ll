; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_request = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mxcmci_host = type { i32, i32, i64, %struct.mmc_request* }

@CMD_DAT_CONT_INIT = common dso_local global i32 0, align 4
@CMD_DAT_CONT_DATA_ENABLE = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@CMD_DAT_CONT_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_request*)* @mxcmci_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxcmci_request(%struct.mmc_host* %0, %struct.mmc_request* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mxcmci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_request* %1, %struct.mmc_request** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.mxcmci_host* @mmc_priv(%struct.mmc_host* %8)
  store %struct.mxcmci_host* %9, %struct.mxcmci_host** %5, align 8
  %10 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %11 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %14 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %13, i32 0, i32 3
  %15 = load %struct.mmc_request*, %struct.mmc_request** %14, align 8
  %16 = icmp ne %struct.mmc_request* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %20 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %21 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %20, i32 0, i32 3
  store %struct.mmc_request* %19, %struct.mmc_request** %21, align 8
  %22 = load i32, i32* @CMD_DAT_CONT_INIT, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %25 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %29 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %34 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %2
  %36 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = icmp ne %struct.TYPE_4__* %38, null
  br i1 %39, label %40, label %71

40:                                               ; preds = %35
  %41 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %42 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %43 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = call i32 @mxcmci_setup_data(%struct.mxcmci_host* %41, %struct.TYPE_4__* %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %40
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %51 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 4
  br label %78

54:                                               ; preds = %40
  %55 = load i32, i32* @CMD_DAT_CONT_DATA_ENABLE, align 4
  %56 = load i32, i32* %6, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %6, align 4
  %58 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %59 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MMC_DATA_WRITE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load i32, i32* @CMD_DAT_CONT_WRITE, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %54
  br label %71

71:                                               ; preds = %70, %35
  %72 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %73 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %74 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %73, i32 0, i32 0
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @mxcmci_start_cmd(%struct.mxcmci_host* %72, %struct.TYPE_3__* %75, i32 %76)
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %71, %48
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.mxcmci_host*, %struct.mxcmci_host** %5, align 8
  %83 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %84 = call i32 @mxcmci_finish_request(%struct.mxcmci_host* %82, %struct.mmc_request* %83)
  br label %85

85:                                               ; preds = %81, %78
  ret void
}

declare dso_local %struct.mxcmci_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mxcmci_setup_data(%struct.mxcmci_host*, %struct.TYPE_4__*) #1

declare dso_local i32 @mxcmci_start_cmd(%struct.mxcmci_host*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @mxcmci_finish_request(%struct.mxcmci_host*, %struct.mmc_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
