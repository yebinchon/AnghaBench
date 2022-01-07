; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cid_map_alloc_single.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cid_map_alloc_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_cid_acquired_map = type { i8*, i8*, i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QED_MSG_CXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Type %08x start: %08x count %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i8*, i8*, i8*, %struct.qed_cid_acquired_map*)* @qed_cid_map_alloc_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_cid_map_alloc_single(%struct.qed_hwfn* %0, i8* %1, i8* %2, i8* %3, %struct.qed_cid_acquired_map* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.qed_cid_acquired_map*, align 8
  %12 = alloca i8*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.qed_cid_acquired_map* %4, %struct.qed_cid_acquired_map** %11, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %55

16:                                               ; preds = %5
  %17 = load i8*, i8** %10, align 8
  %18 = load i32, i32* @BITS_PER_BYTE, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 8, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @DIV_ROUND_UP(i8* %17, i32 %21)
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @kzalloc(i8* %26, i32 %27)
  %29 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %11, align 8
  %30 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %11, align 8
  %32 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %16
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %55

38:                                               ; preds = %16
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %11, align 8
  %41 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %11, align 8
  %44 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  %46 = load i32, i32* @QED_MSG_CXT, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %11, align 8
  %49 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.qed_cid_acquired_map*, %struct.qed_cid_acquired_map** %11, align 8
  %52 = getelementptr inbounds %struct.qed_cid_acquired_map, %struct.qed_cid_acquired_map* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %45, i32 %46, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %50, i8* %53)
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %38, %35, %15
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @DIV_ROUND_UP(i8*, i32) #1

declare dso_local i32 @kzalloc(i8*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
