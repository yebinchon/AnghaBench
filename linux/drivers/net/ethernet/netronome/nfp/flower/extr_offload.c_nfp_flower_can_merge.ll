; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_can_merge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_can_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_fl_payload = type { i32 }
%struct.nfp_flower_merge_check = type { i32 }

@NFP_FL_ACTION_OPCODE_OUTPUT = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_fl_payload*, %struct.nfp_fl_payload*)* @nfp_flower_can_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_can_merge(%struct.nfp_fl_payload* %0, %struct.nfp_fl_payload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_fl_payload*, align 8
  %5 = alloca %struct.nfp_fl_payload*, align 8
  %6 = alloca %struct.nfp_flower_merge_check, align 4
  %7 = alloca %struct.nfp_flower_merge_check, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.nfp_fl_payload* %0, %struct.nfp_fl_payload** %4, align 8
  store %struct.nfp_fl_payload* %1, %struct.nfp_fl_payload** %5, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %11 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %12 = call i32 @nfp_flower_populate_merge_match(%struct.nfp_fl_payload* %11, %struct.nfp_flower_merge_check* %6, i32 1)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %55

17:                                               ; preds = %2
  %18 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %5, align 8
  %19 = call i32 @nfp_flower_populate_merge_match(%struct.nfp_fl_payload* %18, %struct.nfp_flower_merge_check* %7, i32 0)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %55

24:                                               ; preds = %17
  %25 = load %struct.nfp_fl_payload*, %struct.nfp_fl_payload** %4, align 8
  %26 = call i32 @nfp_flower_update_merge_with_actions(%struct.nfp_fl_payload* %25, %struct.nfp_flower_merge_check* %6, i64* %10, i32* %9)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %3, align 4
  br label %55

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @NFP_FL_ACTION_OPCODE_OUTPUT, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34, %31
  %39 = load i32, i32* @EOPNOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %55

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %7, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.nfp_flower_merge_check, %struct.nfp_flower_merge_check* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @bitmap_andnot(i32 %43, i32 %45, i32 %47, i32 32)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %55

54:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %54, %51, %38, %29, %22, %15
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @nfp_flower_populate_merge_match(%struct.nfp_fl_payload*, %struct.nfp_flower_merge_check*, i32) #1

declare dso_local i32 @nfp_flower_update_merge_with_actions(%struct.nfp_fl_payload*, %struct.nfp_flower_merge_check*, i64*, i32*) #1

declare dso_local i32 @bitmap_andnot(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
