; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_dflt_ring_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_init_dflt_ring_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.TYPE_2__*, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Not enough rings available.\0A\00", align 1
@BNXT_FLAG_RFS = common dso_local global i32 0, align 4
@NETIF_F_NTUPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*)* @bnxt_init_dflt_ring_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_init_dflt_ring_mode(%struct.bnxt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  %5 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %6 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %62

10:                                               ; preds = %1
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = call i32 @bnxt_ulp_irq_stop(%struct.bnxt* %11)
  %13 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %14 = call i32 @bnxt_clear_int_mode(%struct.bnxt* %13)
  %15 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %16 = call i32 @bnxt_set_dflt_rings(%struct.bnxt* %15, i32 1)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %10
  %20 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %21 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @netdev_err(%struct.TYPE_2__* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %57

24:                                               ; preds = %10
  %25 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %26 = call i32 @bnxt_init_int_mode(%struct.bnxt* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %57

30:                                               ; preds = %24
  %31 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %32 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %35 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %37 = call i64 @bnxt_rfs_supported(%struct.bnxt* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %30
  %40 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %41 = call i64 @bnxt_rfs_capable(%struct.bnxt* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %39
  %44 = load i32, i32* @BNXT_FLAG_RFS, align 4
  %45 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %46 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* @NETIF_F_NTUPLE, align 4
  %50 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %51 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %49
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %43, %39, %30
  br label %57

57:                                               ; preds = %56, %29, %19
  %58 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @bnxt_ulp_irq_restart(%struct.bnxt* %58, i32 %59)
  %61 = load i32, i32* %4, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %57, %9
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @bnxt_ulp_irq_stop(%struct.bnxt*) #1

declare dso_local i32 @bnxt_clear_int_mode(%struct.bnxt*) #1

declare dso_local i32 @bnxt_set_dflt_rings(%struct.bnxt*, i32) #1

declare dso_local i32 @netdev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @bnxt_init_int_mode(%struct.bnxt*) #1

declare dso_local i64 @bnxt_rfs_supported(%struct.bnxt*) #1

declare dso_local i64 @bnxt_rfs_capable(%struct.bnxt*) #1

declare dso_local i32 @bnxt_ulp_irq_restart(%struct.bnxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
