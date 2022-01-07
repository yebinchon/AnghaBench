; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_validate_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_validate_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, %struct.i40e_vf*, %struct.TYPE_2__* }
%struct.i40e_vf = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_vsi = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Invalid VF Identifier %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*, i32)* @i40e_validate_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_validate_vf(%struct.i40e_pf* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca %struct.i40e_vf*, align 8
  %7 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp sge i32 %8, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %15 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @dev_err(i32* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %7, align 4
  br label %40

22:                                               ; preds = %2
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %24 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %23, i32 0, i32 1
  %25 = load %struct.i40e_vf*, %struct.i40e_vf** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %25, i64 %27
  store %struct.i40e_vf* %28, %struct.i40e_vf** %6, align 8
  %29 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %30 = load %struct.i40e_vf*, %struct.i40e_vf** %6, align 8
  %31 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.i40e_vsi* @i40e_find_vsi_from_id(%struct.i40e_pf* %29, i32 %32)
  store %struct.i40e_vsi* %33, %struct.i40e_vsi** %5, align 8
  %34 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %35 = icmp ne %struct.i40e_vsi* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %22
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %36, %22
  br label %40

40:                                               ; preds = %39, %13
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local %struct.i40e_vsi* @i40e_find_vsi_from_id(%struct.i40e_pf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
