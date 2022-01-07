; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_validate_num_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_validate_num_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_vsi = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Error: num_queues (%d) > vsi's current_size(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"Error: num_queues (%d) < vsi's current_size(%d), but not power of 2\0A\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Error: num_queues (%d) < max queues configured for channel(%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_pf*, i32, %struct.i40e_vsi*, i32*)* @i40e_validate_num_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_validate_num_queues(%struct.i40e_pf* %0, i32 %1, %struct.i40e_vsi* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.i40e_vsi*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.i40e_pf* %0, %struct.i40e_pf** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.i40e_vsi* %2, %struct.i40e_vsi** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %87

16:                                               ; preds = %4
  %17 = load i32*, i32** %9, align 8
  store i32 0, i32* %17, align 4
  %18 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %19 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %16
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %25 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %22
  %29 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %30 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %35 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(i32* %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %87

40:                                               ; preds = %22
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %43 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @is_power_of_2(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %46
  %51 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %52 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %57 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_dbg(i32* %54, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %5, align 4
  br label %87

62:                                               ; preds = %46, %40
  br label %63

63:                                               ; preds = %62
  br label %64

64:                                               ; preds = %63, %16
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @is_power_of_2(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %86, label %68

68:                                               ; preds = %64
  %69 = load %struct.i40e_vsi*, %struct.i40e_vsi** %8, align 8
  %70 = call i32 @i40e_get_max_queues_for_channel(%struct.i40e_vsi* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %76 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %75, i32 0, i32 0
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @dev_dbg(i32* %78, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %87

84:                                               ; preds = %68
  %85 = load i32*, i32** %9, align 8
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %84, %64
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %74, %50, %28, %13
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i32 @i40e_get_max_queues_for_channel(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
