; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_hif_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_hif_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { i32, %struct.TYPE_4__, i32*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@ath10k_sdio_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to claim sdio interrupt: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to enable sdio interrupts: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_sdio_hif_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_hif_start(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_sdio*, align 8
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %6 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %7 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %6)
  store %struct.ath10k_sdio* %7, %struct.ath10k_sdio** %4, align 8
  %8 = call i32 @msleep(i32 20)
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = call i32 @ath10k_sdio_hif_disable_intrs(%struct.ath10k* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %87

15:                                               ; preds = %1
  %16 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %4, align 8
  %17 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %4, align 8
  %24 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %22, i32* %26, align 4
  %27 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %4, align 8
  %28 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %4, align 8
  %35 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %4, align 8
  %39 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sdio_claim_host(i32 %40)
  %42 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %4, align 8
  %43 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ath10k_sdio_irq_handler, align 4
  %46 = call i32 @sdio_claim_irq(i32 %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %15
  %50 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ath10k_warn(%struct.ath10k* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %4, align 8
  %54 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @sdio_release_host(i32 %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %87

58:                                               ; preds = %15
  %59 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %4, align 8
  %60 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @sdio_release_host(i32 %61)
  %63 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %64 = call i32 @ath10k_sdio_hif_enable_intrs(%struct.ath10k* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @ath10k_warn(%struct.ath10k* %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %67, %58
  %72 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %73 = call i32 @ath10k_sdio_hif_set_mbox_sleep(%struct.ath10k* %72, i32 1)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* %5, align 4
  store i32 %77, i32* %2, align 4
  br label %87

78:                                               ; preds = %71
  %79 = call i32 @msleep(i32 20)
  %80 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %81 = call i32 @ath10k_sdio_hif_set_mbox_sleep(%struct.ath10k* %80, i32 0)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %5, align 4
  store i32 %85, i32* %2, align 4
  br label %87

86:                                               ; preds = %78
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %84, %76, %49, %13
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @ath10k_sdio_hif_disable_intrs(%struct.ath10k*) #1

declare dso_local i32 @sdio_claim_host(i32) #1

declare dso_local i32 @sdio_claim_irq(i32, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @sdio_release_host(i32) #1

declare dso_local i32 @ath10k_sdio_hif_enable_intrs(%struct.ath10k*) #1

declare dso_local i32 @ath10k_sdio_hif_set_mbox_sleep(%struct.ath10k*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
