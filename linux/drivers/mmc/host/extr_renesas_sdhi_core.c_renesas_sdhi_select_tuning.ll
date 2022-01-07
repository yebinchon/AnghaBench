; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_select_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_renesas_sdhi_core.c_renesas_sdhi_select_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, i64, i32 }
%struct.renesas_sdhi = type { i32 }

@SH_MOBILE_SDHI_SCC_RVSREQ = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_MAX_TAP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_TAPSET = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_RVSCNTL = common dso_local global i32 0, align 4
@SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmio_mmc_host*)* @renesas_sdhi_select_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @renesas_sdhi_select_tuning(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca %struct.renesas_sdhi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  %11 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %12 = call %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host* %11)
  store %struct.renesas_sdhi* %12, %struct.renesas_sdhi** %4, align 8
  %13 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %14 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %4, align 8
  %15 = load i32, i32* @SH_MOBILE_SDHI_SCC_RVSREQ, align 4
  %16 = call i32 @sd_scc_write32(%struct.tmio_mmc_host* %13, %struct.renesas_sdhi* %14, i32 %15, i32 0)
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %54, %1
  %18 = load i64, i64* %9, align 8
  %19 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %20 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = mul nsw i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = icmp ult i64 %18, %23
  br i1 %24, label %25, label %57

25:                                               ; preds = %17
  %26 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %27 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %31 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = icmp ult i64 %29, %33
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 -1
  %37 = mul nsw i32 %28, %36
  store i32 %37, i32* %10, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %40 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @test_bit(i64 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %25
  %45 = load i64, i64* %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %45, %47
  %49 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %50 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @clear_bit(i64 %48, i32 %51)
  br label %53

53:                                               ; preds = %44, %25
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %9, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %9, align 8
  br label %17

57:                                               ; preds = %17
  store i64 0, i64* %5, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %9, align 8
  br label %58

58:                                               ; preds = %89, %57
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %61 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %59, %64
  br i1 %65, label %66, label %92

66:                                               ; preds = %58
  %67 = load i64, i64* %9, align 8
  %68 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %69 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @test_bit(i64 %67, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  br label %88

76:                                               ; preds = %66
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %76
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %8, align 8
  %83 = sub i64 %81, %82
  store i64 %83, i64* %6, align 8
  %84 = load i64, i64* %9, align 8
  %85 = sub i64 %84, 1
  store i64 %85, i64* %7, align 8
  %86 = load i64, i64* %8, align 8
  store i64 %86, i64* %5, align 8
  br label %87

87:                                               ; preds = %80, %76
  store i64 0, i64* %8, align 8
  br label %88

88:                                               ; preds = %87, %73
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %9, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %9, align 8
  br label %58

92:                                               ; preds = %58
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %5, align 8
  %95 = icmp ugt i64 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %8, align 8
  %99 = sub i64 %97, %98
  store i64 %99, i64* %6, align 8
  %100 = load i64, i64* %9, align 8
  %101 = sub i64 %100, 1
  store i64 %101, i64* %7, align 8
  %102 = load i64, i64* %8, align 8
  store i64 %102, i64* %5, align 8
  br label %103

103:                                              ; preds = %96, %92
  %104 = load i64, i64* %5, align 8
  %105 = load i64, i64* @SH_MOBILE_SDHI_MAX_TAP, align 8
  %106 = icmp uge i64 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = load i64, i64* %6, align 8
  %109 = load i64, i64* %7, align 8
  %110 = add i64 %108, %109
  %111 = udiv i64 %110, 2
  %112 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %113 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = urem i64 %111, %115
  %117 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %118 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  br label %122

119:                                              ; preds = %103
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %2, align 4
  br label %141

122:                                              ; preds = %107
  %123 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %124 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %4, align 8
  %125 = load i32, i32* @SH_MOBILE_SDHI_SCC_TAPSET, align 4
  %126 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %127 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i32 @sd_scc_write32(%struct.tmio_mmc_host* %123, %struct.renesas_sdhi* %124, i32 %125, i32 %129)
  %131 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %132 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %4, align 8
  %133 = load i32, i32* @SH_MOBILE_SDHI_SCC_RVSCNTL, align 4
  %134 = load i32, i32* @SH_MOBILE_SDHI_SCC_RVSCNTL_RVSEN, align 4
  %135 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %136 = load %struct.renesas_sdhi*, %struct.renesas_sdhi** %4, align 8
  %137 = load i32, i32* @SH_MOBILE_SDHI_SCC_RVSCNTL, align 4
  %138 = call i32 @sd_scc_read32(%struct.tmio_mmc_host* %135, %struct.renesas_sdhi* %136, i32 %137)
  %139 = or i32 %134, %138
  %140 = call i32 @sd_scc_write32(%struct.tmio_mmc_host* %131, %struct.renesas_sdhi* %132, i32 %133, i32 %139)
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %122, %119
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.renesas_sdhi* @host_to_priv(%struct.tmio_mmc_host*) #1

declare dso_local i32 @sd_scc_write32(%struct.tmio_mmc_host*, %struct.renesas_sdhi*, i32, i32) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @sd_scc_read32(%struct.tmio_mmc_host*, %struct.renesas_sdhi*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
