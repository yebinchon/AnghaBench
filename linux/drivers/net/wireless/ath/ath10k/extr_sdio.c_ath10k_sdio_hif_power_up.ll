; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_hif_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_hif_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { i32, %struct.sdio_func* }
%struct.sdio_func = type { i32 }

@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"sdio power on\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to config sdio: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"unable to enable sdio function: %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, i32)* @ath10k_sdio_hif_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_hif_power_up(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath10k_sdio*, align 8
  %7 = alloca %struct.sdio_func*, align 8
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %10 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %9)
  store %struct.ath10k_sdio* %10, %struct.ath10k_sdio** %6, align 8
  %11 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %12 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %11, i32 0, i32 1
  %13 = load %struct.sdio_func*, %struct.sdio_func** %12, align 8
  store %struct.sdio_func* %13, %struct.sdio_func** %7, align 8
  %14 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %15 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %59

19:                                               ; preds = %2
  %20 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %21 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %22 = call i32 @ath10k_dbg(%struct.ath10k* %20, i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %24 = call i32 @ath10k_sdio_config(%struct.ath10k* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @ath10k_err(%struct.ath10k* %28, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %59

32:                                               ; preds = %19
  %33 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %34 = call i32 @sdio_claim_host(%struct.sdio_func* %33)
  %35 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %36 = call i32 @sdio_enable_func(%struct.sdio_func* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @ath10k_warn(%struct.ath10k* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %44 = call i32 @sdio_release_host(%struct.sdio_func* %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %3, align 4
  br label %59

46:                                               ; preds = %32
  %47 = load %struct.sdio_func*, %struct.sdio_func** %7, align 8
  %48 = call i32 @sdio_release_host(%struct.sdio_func* %47)
  %49 = call i32 @msleep(i32 20)
  %50 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %6, align 8
  %51 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %53 = call i32 @ath10k_sdio_hif_disable_intrs(%struct.ath10k* %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %56, %39, %27, %18
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @ath10k_sdio_config(%struct.ath10k*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_enable_func(%struct.sdio_func*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ath10k_sdio_hif_disable_intrs(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
