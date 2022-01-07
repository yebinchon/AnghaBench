; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_setup_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_setup_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.ath10k = type { i32 }
%struct.ath10k_snoc = type { %struct.ath10k_snoc_pipe*, i32 }
%struct.ath10k_snoc_pipe = type { i32, i32, %struct.ath10k*, i32* }
%struct.ath10k_ce = type { i32*, i32 }

@ath10k_snoc_rx_replenish_retry = common dso_local global i32 0, align 4
@CE_COUNT = common dso_local global i32 0, align 4
@host_ce_config_wlan = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [44 x i8] c"failed to allocate copy engine pipe %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_snoc_setup_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_snoc_setup_resource(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_snoc*, align 8
  %5 = alloca %struct.ath10k_ce*, align 8
  %6 = alloca %struct.ath10k_snoc_pipe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %9)
  store %struct.ath10k_snoc* %10, %struct.ath10k_snoc** %4, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %12 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %11)
  store %struct.ath10k_ce* %12, %struct.ath10k_ce** %5, align 8
  %13 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %4, align 8
  %14 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %13, i32 0, i32 1
  %15 = load i32, i32* @ath10k_snoc_rx_replenish_retry, align 4
  %16 = call i32 @timer_setup(i32* %14, i32 %15, i32 0)
  %17 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %18 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %17, i32 0, i32 1
  %19 = call i32 @spin_lock_init(i32* %18)
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %69, %1
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @CE_COUNT, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %20
  %25 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %4, align 8
  %26 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %25, i32 0, i32 0
  %27 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ath10k_snoc_pipe, %struct.ath10k_snoc_pipe* %27, i64 %29
  store %struct.ath10k_snoc_pipe* %30, %struct.ath10k_snoc_pipe** %6, align 8
  %31 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %32 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %6, align 8
  %38 = getelementptr inbounds %struct.ath10k_snoc_pipe, %struct.ath10k_snoc_pipe* %37, i32 0, i32 3
  store i32* %36, i32** %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %6, align 8
  %41 = getelementptr inbounds %struct.ath10k_snoc_pipe, %struct.ath10k_snoc_pipe* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %43 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %6, align 8
  %44 = getelementptr inbounds %struct.ath10k_snoc_pipe, %struct.ath10k_snoc_pipe* %43, i32 0, i32 2
  store %struct.ath10k* %42, %struct.ath10k** %44, align 8
  %45 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** @host_ce_config_wlan, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = call i32 @ath10k_ce_alloc_pipe(%struct.ath10k* %45, i32 %46, %struct.TYPE_3__* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %24
  %55 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ath10k_err(%struct.ath10k* %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %75

60:                                               ; preds = %24
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @host_ce_config_wlan, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ath10k_snoc_pipe*, %struct.ath10k_snoc_pipe** %6, align 8
  %68 = getelementptr inbounds %struct.ath10k_snoc_pipe, %struct.ath10k_snoc_pipe* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %20

72:                                               ; preds = %20
  %73 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %74 = call i32 @ath10k_snoc_init_napi(%struct.ath10k* %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %72, %54
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @ath10k_ce_alloc_pipe(%struct.ath10k*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32, i32) #1

declare dso_local i32 @ath10k_snoc_init_napi(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
