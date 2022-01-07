; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_mac_da_range_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_mac_da_range_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PE_MAC_RANGE_START = common dso_local global i32 0, align 4
@MVPP2_PE_MAC_RANGE_END = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_MAC = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*, i32, i32*, i8*, i32)* @mvpp2_prs_mac_da_range_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_prs_mac_da_range_find(%struct.mvpp2* %0, i32 %1, i32* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvpp2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mvpp2_prs_entry, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* @MVPP2_PE_MAC_RANGE_START, align 4
  store i32 %15, i32* %13, align 4
  br label %16

16:                                               ; preds = %69, %5
  %17 = load i32, i32* %13, align 4
  %18 = load i32, i32* @MVPP2_PE_MAC_RANGE_END, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %72

20:                                               ; preds = %16
  %21 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %22 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %20
  %31 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %32 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MVPP2_PRS_LU_MAC, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %52, label %41

41:                                               ; preds = %30
  %42 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %43 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41, %30, %20
  br label %69

53:                                               ; preds = %41
  %54 = load %struct.mvpp2*, %struct.mvpp2** %7, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %54, %struct.mvpp2_prs_entry* %12, i32 %55)
  %57 = call i32 @mvpp2_prs_tcam_port_map_get(%struct.mvpp2_prs_entry* %12)
  store i32 %57, i32* %14, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = call i64 @mvpp2_prs_mac_range_equals(%struct.mvpp2_prs_entry* %12, i32* %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %6, align 4
  br label %75

68:                                               ; preds = %62, %53
  br label %69

69:                                               ; preds = %68, %52
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %16

72:                                               ; preds = %16
  %73 = load i32, i32* @ENOENT, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %72, %66
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @mvpp2_prs_init_from_hw(%struct.mvpp2*, %struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_get(%struct.mvpp2_prs_entry*) #1

declare dso_local i64 @mvpp2_prs_mac_range_equals(%struct.mvpp2_prs_entry*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
