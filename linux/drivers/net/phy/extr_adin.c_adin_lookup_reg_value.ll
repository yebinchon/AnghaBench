; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_lookup_reg_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_lookup_reg_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adin_cfg_reg_map = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adin_cfg_reg_map*, i32)* @adin_lookup_reg_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adin_lookup_reg_value(%struct.adin_cfg_reg_map* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adin_cfg_reg_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.adin_cfg_reg_map* %0, %struct.adin_cfg_reg_map** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %29, %2
  %8 = load %struct.adin_cfg_reg_map*, %struct.adin_cfg_reg_map** %4, align 8
  %9 = load i64, i64* %6, align 8
  %10 = getelementptr inbounds %struct.adin_cfg_reg_map, %struct.adin_cfg_reg_map* %8, i64 %9
  %11 = getelementptr inbounds %struct.adin_cfg_reg_map, %struct.adin_cfg_reg_map* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %7
  %15 = load %struct.adin_cfg_reg_map*, %struct.adin_cfg_reg_map** %4, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds %struct.adin_cfg_reg_map, %struct.adin_cfg_reg_map* %15, i64 %16
  %18 = getelementptr inbounds %struct.adin_cfg_reg_map, %struct.adin_cfg_reg_map* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load %struct.adin_cfg_reg_map*, %struct.adin_cfg_reg_map** %4, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.adin_cfg_reg_map, %struct.adin_cfg_reg_map* %23, i64 %24
  %26 = getelementptr inbounds %struct.adin_cfg_reg_map, %struct.adin_cfg_reg_map* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %35

28:                                               ; preds = %14
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %6, align 8
  br label %7

32:                                               ; preds = %7
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %22
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
