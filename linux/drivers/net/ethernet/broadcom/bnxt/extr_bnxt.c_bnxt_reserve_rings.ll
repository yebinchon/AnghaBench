; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_reserve_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_reserve_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"ring reservation/IRQ init failure rc: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"tx ring reservation failure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_reserve_rings(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @netdev_get_num_tc(i32 %11)
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %14 = call i32 @bnxt_need_reserve_rings(%struct.bnxt* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %91

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %22 = call i64 @BNXT_NEW_RM(%struct.bnxt* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %20
  %25 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %26 = call i64 @bnxt_get_num_msix(%struct.bnxt* %25)
  %27 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %28 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %33 = call i32 @bnxt_ulp_irq_stop(%struct.bnxt* %32)
  %34 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %35 = call i32 @bnxt_clear_int_mode(%struct.bnxt* %34)
  store i32 1, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %24, %20, %17
  %37 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %38 = call i32 @__bnxt_reserve_rings(%struct.bnxt* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %46 = call i32 @bnxt_init_int_mode(%struct.bnxt* %45)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %41
  %48 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @bnxt_ulp_irq_restart(%struct.bnxt* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %36
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %56 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i32, i8*, ...) @netdev_err(i32 %57, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %91

61:                                               ; preds = %51
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %61
  %65 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %66 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %71 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %90

74:                                               ; preds = %64
  %75 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %76 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 (i32, i8*, ...) @netdev_err(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %79 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %80 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @netdev_reset_tc(i32 %81)
  %83 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %84 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %87 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %3, align 4
  br label %91

90:                                               ; preds = %64, %61
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %74, %54, %16
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @netdev_get_num_tc(i32) #1

declare dso_local i32 @bnxt_need_reserve_rings(%struct.bnxt*) #1

declare dso_local i64 @BNXT_NEW_RM(%struct.bnxt*) #1

declare dso_local i64 @bnxt_get_num_msix(%struct.bnxt*) #1

declare dso_local i32 @bnxt_ulp_irq_stop(%struct.bnxt*) #1

declare dso_local i32 @bnxt_clear_int_mode(%struct.bnxt*) #1

declare dso_local i32 @__bnxt_reserve_rings(%struct.bnxt*) #1

declare dso_local i32 @bnxt_init_int_mode(%struct.bnxt*) #1

declare dso_local i32 @bnxt_ulp_irq_restart(%struct.bnxt*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @netdev_reset_tc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
