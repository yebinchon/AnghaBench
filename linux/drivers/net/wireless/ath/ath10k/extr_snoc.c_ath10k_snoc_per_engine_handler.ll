; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_per_engine_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_per_engine_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_snoc = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"unexpected/invalid irq %d ce_id %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ath10k_snoc_per_engine_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_snoc_per_engine_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ath10k*, align 8
  %7 = alloca %struct.ath10k_snoc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ath10k*
  store %struct.ath10k* %10, %struct.ath10k** %6, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %12 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %11)
  store %struct.ath10k_snoc* %12, %struct.ath10k_snoc** %7, align 8
  %13 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ath10k_snoc_get_ce_id_from_irq(%struct.ath10k* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %7, align 8
  %21 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = icmp sge i32 %19, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %18, %2
  %26 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ath10k_warn(%struct.ath10k* %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %18
  %32 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %33 = call i32 @ath10k_snoc_irq_disable(%struct.ath10k* %32)
  %34 = load %struct.ath10k*, %struct.ath10k** %6, align 8
  %35 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %34, i32 0, i32 0
  %36 = call i32 @napi_schedule(i32* %35)
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %25
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_snoc_get_ce_id_from_irq(%struct.ath10k*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @ath10k_snoc_irq_disable(%struct.ath10k*) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
