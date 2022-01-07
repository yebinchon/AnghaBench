; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_config_debug_area.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_config_debug_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_adapter = type { i32, i32 }

@ETH_SS_STATS = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"SS count is negative\0A\00", align 1
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot allocate debug area\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot set host attributes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ena_adapter*)* @ena_config_debug_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ena_config_debug_area(%struct.ena_adapter* %0) #0 {
  %2 = alloca %struct.ena_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ena_adapter* %0, %struct.ena_adapter** %2, align 8
  %6 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ETH_SS_STATS, align 4
  %10 = call i32 @ena_get_sset_count(i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %15 = load i32, i32* @drv, align 4
  %16 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @netif_err(%struct.ena_adapter* %14, i32 %15, i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %72

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 4, %26
  %28 = add i64 %24, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %3, align 4
  %30 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @ena_com_allocate_debug_area(i32 %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %20
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %72

39:                                               ; preds = %20
  %40 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ena_com_set_host_attributes(i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %66

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %53 = load i32, i32* @drv, align 4
  %54 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %55 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @netif_warn(%struct.ena_adapter* %52, i32 %53, i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %65

58:                                               ; preds = %46
  %59 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %60 = load i32, i32* @drv, align 4
  %61 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @netif_err(%struct.ena_adapter* %59, i32 %60, i32 %63, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %58, %51
  br label %67

66:                                               ; preds = %39
  br label %72

67:                                               ; preds = %65
  %68 = load %struct.ena_adapter*, %struct.ena_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ena_com_delete_debug_area(i32 %70)
  br label %72

72:                                               ; preds = %67, %66, %37, %13
  ret void
}

declare dso_local i32 @ena_get_sset_count(i32, i32) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ena_com_allocate_debug_area(i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @ena_com_set_host_attributes(i32) #1

declare dso_local i32 @netif_warn(%struct.ena_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ena_com_delete_debug_area(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
