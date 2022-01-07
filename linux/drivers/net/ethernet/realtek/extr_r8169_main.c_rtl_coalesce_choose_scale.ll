; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_coalesce_choose_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_r8169_main.c_rtl_coalesce_choose_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_coalesce_scale = type { i32* }
%struct.net_device = type { i32 }
%struct.rtl_coalesce_info = type { %struct.rtl_coalesce_scale* }

@RTL_COALESCE_T_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rtl_coalesce_scale* (%struct.net_device*, i32, i32*)* @rtl_coalesce_choose_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rtl_coalesce_scale* @rtl_coalesce_choose_scale(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.rtl_coalesce_scale*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.rtl_coalesce_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.rtl_coalesce_info* @rtl_coalesce_info(%struct.net_device* %11)
  store %struct.rtl_coalesce_info* %12, %struct.rtl_coalesce_info** %8, align 8
  %13 = load %struct.rtl_coalesce_info*, %struct.rtl_coalesce_info** %8, align 8
  %14 = call i64 @IS_ERR(%struct.rtl_coalesce_info* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.rtl_coalesce_info*, %struct.rtl_coalesce_info** %8, align 8
  %18 = call %struct.rtl_coalesce_scale* @ERR_CAST(%struct.rtl_coalesce_info* %17)
  store %struct.rtl_coalesce_scale* %18, %struct.rtl_coalesce_scale** %4, align 8
  br label %67

19:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %60, %19
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 4
  br i1 %22, label %23, label %63

23:                                               ; preds = %20
  %24 = load %struct.rtl_coalesce_info*, %struct.rtl_coalesce_info** %8, align 8
  %25 = getelementptr inbounds %struct.rtl_coalesce_info, %struct.rtl_coalesce_info* %24, i32 0, i32 0
  %26 = load %struct.rtl_coalesce_scale*, %struct.rtl_coalesce_scale** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.rtl_coalesce_scale, %struct.rtl_coalesce_scale* %26, i64 %28
  %30 = getelementptr inbounds %struct.rtl_coalesce_scale, %struct.rtl_coalesce_scale* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.rtl_coalesce_info*, %struct.rtl_coalesce_info** %8, align 8
  %35 = getelementptr inbounds %struct.rtl_coalesce_info, %struct.rtl_coalesce_info* %34, i32 0, i32 0
  %36 = load %struct.rtl_coalesce_scale*, %struct.rtl_coalesce_scale** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.rtl_coalesce_scale, %struct.rtl_coalesce_scale* %36, i64 %38
  %40 = getelementptr inbounds %struct.rtl_coalesce_scale, %struct.rtl_coalesce_scale* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @max(i32 %33, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @RTL_COALESCE_T_MAX, align 4
  %48 = mul nsw i32 %46, %47
  %49 = icmp sle i32 %45, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %23
  %51 = load i32, i32* %9, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.rtl_coalesce_info*, %struct.rtl_coalesce_info** %8, align 8
  %54 = getelementptr inbounds %struct.rtl_coalesce_info, %struct.rtl_coalesce_info* %53, i32 0, i32 0
  %55 = load %struct.rtl_coalesce_scale*, %struct.rtl_coalesce_scale** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.rtl_coalesce_scale, %struct.rtl_coalesce_scale* %55, i64 %57
  store %struct.rtl_coalesce_scale* %58, %struct.rtl_coalesce_scale** %4, align 8
  br label %67

59:                                               ; preds = %23
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %20

63:                                               ; preds = %20
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  %66 = call %struct.rtl_coalesce_scale* @ERR_PTR(i32 %65)
  store %struct.rtl_coalesce_scale* %66, %struct.rtl_coalesce_scale** %4, align 8
  br label %67

67:                                               ; preds = %63, %50, %16
  %68 = load %struct.rtl_coalesce_scale*, %struct.rtl_coalesce_scale** %4, align 8
  ret %struct.rtl_coalesce_scale* %68
}

declare dso_local %struct.rtl_coalesce_info* @rtl_coalesce_info(%struct.net_device*) #1

declare dso_local i64 @IS_ERR(%struct.rtl_coalesce_info*) #1

declare dso_local %struct.rtl_coalesce_scale* @ERR_CAST(%struct.rtl_coalesce_info*) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local %struct.rtl_coalesce_scale* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
