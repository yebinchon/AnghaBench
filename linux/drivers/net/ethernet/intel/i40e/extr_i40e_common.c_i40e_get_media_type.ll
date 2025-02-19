; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_get_media_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_get_media_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@I40E_MEDIA_TYPE_FIBER = common dso_local global i32 0, align 4
@I40E_MEDIA_TYPE_BASET = common dso_local global i32 0, align 4
@I40E_MEDIA_TYPE_DA = common dso_local global i32 0, align 4
@I40E_MEDIA_TYPE_BACKPLANE = common dso_local global i32 0, align 4
@I40E_MEDIA_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*)* @i40e_get_media_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_media_type(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %4 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %5 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %18 [
    i32 149, label %9
    i32 151, label %9
    i32 159, label %9
    i32 160, label %9
    i32 134, label %9
    i32 135, label %9
    i32 142, label %9
    i32 141, label %9
    i32 157, label %11
    i32 158, label %11
    i32 140, label %11
    i32 133, label %11
    i32 148, label %11
    i32 154, label %13
    i32 137, label %13
    i32 155, label %13
    i32 138, label %13
    i32 150, label %13
    i32 139, label %13
    i32 156, label %13
    i32 144, label %13
    i32 145, label %13
    i32 146, label %13
    i32 161, label %15
    i32 152, label %15
    i32 153, label %15
    i32 136, label %15
    i32 147, label %15
    i32 143, label %15
    i32 132, label %17
    i32 131, label %17
    i32 130, label %17
    i32 129, label %17
    i32 128, label %17
  ]

9:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %10 = load i32, i32* @I40E_MEDIA_TYPE_FIBER, align 4
  store i32 %10, i32* %3, align 4
  br label %20

11:                                               ; preds = %1, %1, %1, %1, %1
  %12 = load i32, i32* @I40E_MEDIA_TYPE_BASET, align 4
  store i32 %12, i32* %3, align 4
  br label %20

13:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  %14 = load i32, i32* @I40E_MEDIA_TYPE_DA, align 4
  store i32 %14, i32* %3, align 4
  br label %20

15:                                               ; preds = %1, %1, %1, %1, %1, %1
  %16 = load i32, i32* @I40E_MEDIA_TYPE_BACKPLANE, align 4
  store i32 %16, i32* %3, align 4
  br label %20

17:                                               ; preds = %1, %1, %1, %1, %1
  br label %18

18:                                               ; preds = %1, %17
  %19 = load i32, i32* @I40E_MEDIA_TYPE_UNKNOWN, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %18, %15, %13, %11, %9
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
